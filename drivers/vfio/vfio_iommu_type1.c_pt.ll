; ModuleID = '/llk/IR_all_yes/drivers/vfio/vfio_iommu_type1.c_pt.bc'
source_filename = "../drivers/vfio/vfio_iommu_type1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.vfio_iommu_driver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfio_iommu = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.rb_root, %struct.blocking_notifier_head, i32, i32, i64, i64, %struct.wait_queue_head, i8, i8, i8, i8, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vfio_batch = type { ptr, ptr, i32, i32, i32 }
%struct.vfio_iommu_type1_dirty_bitmap = type { i32, i32, [0 x i8] }
%struct.vfio_iommu_type1_dirty_bitmap_get = type { i64, i64, %struct.vfio_bitmap }
%struct.vfio_bitmap = type { i64, i64, ptr }
%struct.vfio_iommu_type1_dma_unmap = type { i32, i32, i64, i64, [0 x i8] }
%struct.vfio_iommu_type1_dma_map = type { i32, i32, i64, i64, i64 }
%struct.vfio_iommu_type1_info_dma_avail = type { %struct.vfio_info_cap_header, i32 }
%struct.vfio_info_cap_header = type { i16, i16, i32 }
%struct.vfio_iommu_type1_info_cap_migration = type { %struct.vfio_info_cap_header, i32, i64, i64 }
%struct.vfio_iommu_type1_info = type { i32, i32, i64, i32 }
%struct.vfio_info_cap = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_iommu_type1_info_cap_iova_range = type { %struct.vfio_info_cap_header, i32, i32, [0 x %struct.vfio_iova_range] }
%struct.vfio_iova_range = type { i64, i64 }
%struct.vfio_iova = type { %struct.list_head, i32, i32 }
%struct.vfio_dma = type { %struct.rb_node, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.rb_root, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.vfio_pfn = type { %struct.rb_node, i32, i32, i32 }
%struct.vfio_iommu_group = type { ptr, %struct.list_head, i8 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.iommu_resv_region = type { %struct.list_head, i32, i32, i32, i32 }
%struct.vfio_domain = type { ptr, %struct.list_head, %struct.list_head, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }
%struct.vfio_regions = type { %struct.list_head, i32, i32, i32 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_allow_unsafe_interrupts = internal constant [41 x i8] c"vfio_iommu_type1.allow_unsafe_interrupts\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@allow_unsafe_interrupts = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_allow_unsafe_interrupts = internal constant %struct.kernel_param { ptr @__param_str_allow_unsafe_interrupts, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @allow_unsafe_interrupts } }, section "__param", align 4
@__UNIQUE_ID_allow_unsafe_interruptstype250 = internal constant [55 x i8] c"vfio_iommu_type1.parmtype=allow_unsafe_interrupts:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_unsafe_interrupts251 = internal constant [126 x i8] c"vfio_iommu_type1.parm=allow_unsafe_interrupts:Enable VFIO IOMMU support for on platforms without interrupt remapping support.\00", section ".modinfo", align 1
@__param_str_disable_hugepages = internal constant [35 x i8] c"vfio_iommu_type1.disable_hugepages\00", align 1
@disable_hugepages = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_hugepages = internal constant %struct.kernel_param { ptr @__param_str_disable_hugepages, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @disable_hugepages } }, section "__param", align 4
@__UNIQUE_ID_disable_hugepagestype252 = internal constant [49 x i8] c"vfio_iommu_type1.parmtype=disable_hugepages:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_hugepages253 = internal constant [88 x i8] c"vfio_iommu_type1.parm=disable_hugepages:Disable VFIO IOMMU support for IOMMU hugepages.\00", section ".modinfo", align 1
@__param_str_dma_entry_limit = internal constant [33 x i8] c"vfio_iommu_type1.dma_entry_limit\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dma_entry_limit = internal global i32 65535, section ".data..read_mostly", align 4
@__param_dma_entry_limit = internal constant %struct.kernel_param { ptr @__param_str_dma_entry_limit, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @dma_entry_limit } }, section "__param", align 4
@__UNIQUE_ID_dma_entry_limittype254 = internal constant [47 x i8] c"vfio_iommu_type1.parmtype=dma_entry_limit:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_entry_limit255 = internal constant [97 x i8] c"vfio_iommu_type1.parm=dma_entry_limit:Maximum number of user DMA mappings per container (65535).\00", section ".modinfo", align 1
@vfio_iommu_driver_ops_type1 = internal constant { %struct.vfio_iommu_driver_ops, [40 x i8] } { %struct.vfio_iommu_driver_ops { ptr @.str.3, ptr null, ptr @vfio_iommu_type1_open, ptr @vfio_iommu_type1_release, ptr @vfio_iommu_type1_ioctl, ptr @vfio_iommu_type1_attach_group, ptr @vfio_iommu_type1_detach_group, ptr @vfio_iommu_type1_pin_pages, ptr @vfio_iommu_type1_unpin_pages, ptr @vfio_iommu_type1_register_notifier, ptr @vfio_iommu_type1_unregister_notifier, ptr @vfio_iommu_type1_dma_rw, ptr @vfio_iommu_type1_group_iommu_domain, ptr @vfio_iommu_type1_notify }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfio_iommu_type1__261_3175_vfio_iommu_type1_init6 = internal global ptr @vfio_iommu_type1_init, section ".initcall6.init", align 4
@__exitcall_vfio_iommu_type1_cleanup = internal global ptr @vfio_iommu_type1_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_version262 = internal constant [29 x i8] c"vfio_iommu_type1.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio_iommu_type1\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file263 = internal constant [52 x i8] c"vfio_iommu_type1.file=drivers/vfio/vfio_iommu_type1\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [32 x i8] c"vfio_iommu_type1.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [69 x i8] c"vfio_iommu_type1.author=Alex Williamson <alex.williamson@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [57 x i8] c"vfio_iommu_type1.description=Type1 IOMMU driver for VFIO\00", section ".modinfo", align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio-iommu-type1\00", [47 x i8] zeroinitializer }, align 32
@vfio_iommu_type1_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&iommu->lock\00", [19 x i8] zeroinitializer }, align 32
@vfio_iommu_type1_open.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&iommu->notifier)->rwsem\00", [37 x i8] zeroinitializer }, align 32
@vfio_iommu_type1_open.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&iommu->vaddr_wait\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/vfio/vfio_iommu_type1.c\00", [32 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vfio_pin_pages_remote._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: RLIMIT_MEMLOCK (%ld) exceeded\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vfio_pin_pages_remote\00", [42 x i8] zeroinitializer }, align 32
@vfio_pin_pages_remote._entry_ptr = internal global ptr @vfio_pin_pages_remote._entry, section ".printk_index", align 4
@vfio_iommu_type1_attach_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\014%s: No interrupt remapping support.  Use the module param \22allow_unsafe_interrupts\22 to enable VFIO IOMMU support on this platform\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vfio_iommu_type1_attach_group\00", [34 x i8] zeroinitializer }, align 32
@vfio_iommu_type1_attach_group._entry_ptr = internal global ptr @vfio_iommu_type1_attach_group._entry, section ".printk_index", align 4
@vfio_pin_page_external._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: Task %s (%d) RLIMIT_MEMLOCK (%ld) exceeded\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vfio_pin_page_external\00", [41 x i8] zeroinitializer }, align 32
@vfio_pin_page_external._entry_ptr = internal global ptr @vfio_pin_page_external._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 15205, i64 15216, i64 15217, i64 15218, i64 15221]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"allow_unsafe_interrupts\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 48, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"disable_hugepages\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 54, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"vfio_iommu_driver_ops_type1\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 3148, i32 43 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 3178, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 3149, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 2565, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 2566, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 2567, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1162, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 440, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 230, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 214, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 156, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 709, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 2264, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [35 x i8] c"../drivers/vfio/vfio_iommu_type1.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 800, i32 5 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_allow_unsafe_interrupts251, ptr @__UNIQUE_ID_allow_unsafe_interruptstype250, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_disable_hugepages253, ptr @__UNIQUE_ID_disable_hugepagestype252, ptr @__UNIQUE_ID_dma_entry_limit255, ptr @__UNIQUE_ID_dma_entry_limittype254, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__UNIQUE_ID_version262, ptr @__exitcall_vfio_iommu_type1_cleanup, ptr @__initcall__kmod_vfio_iommu_type1__261_3175_vfio_iommu_type1_init6, ptr @__modver_attr, ptr @__param_allow_unsafe_interrupts, ptr @__param_disable_hugepages, ptr @__param_dma_entry_limit, ptr @vfio_iommu_type1_attach_group._entry, ptr @vfio_iommu_type1_attach_group._entry_ptr, ptr @vfio_iommu_type1_cleanup, ptr @vfio_pin_page_external._entry, ptr @vfio_pin_page_external._entry_ptr, ptr @vfio_pin_pages_remote._entry, ptr @vfio_pin_pages_remote._entry_ptr, ptr @allow_unsafe_interrupts, ptr @disable_hugepages, ptr @vfio_iommu_driver_ops_type1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vfio_iommu_type1_open.__key, ptr @.str.4, ptr @vfio_iommu_type1_open.__key.5, ptr @.str.6, ptr @vfio_iommu_type1_open.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow_unsafe_interrupts to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_hugepages to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_iommu_driver_ops_type1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_iommu_type1_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_iommu_type1_open.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_iommu_type1_open.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pin_pages_remote._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_iommu_type1_attach_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pin_page_external._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_iommu_type1_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vfio_unregister_iommu_driver(ptr noundef nonnull @vfio_iommu_driver_ops_type1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_iommu_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfio_register_iommu_driver(ptr noundef nonnull @vfio_iommu_driver_ops_type1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vfio_iommu_type1_open(i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %arg, label %sw.default [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 6, label %sw.bb
    i32 3, label %if.end.sw.bb2_crit_edge
  ]

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nesting = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %nesting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %nesting, align 1
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.end.sw.bb2_crit_edge
  %v2 = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %v2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %v2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %iova_list = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %iova_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %iova_list, ptr %iova_list, align 8
  %prev.i29 = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %iova_list, ptr %prev.i29, align 4
  %dma_list = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %dma_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_list, align 4
  %9 = load i32, ptr @dma_entry_limit, align 4
  %dma_avail = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %dma_avail to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dma_avail, align 4
  %container_open = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %container_open to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %container_open, align 1
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @vfio_iommu_type1_open.__key) #14
  %notifier = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %notifier, ptr noundef nonnull @.str.6, ptr noundef nonnull @vfio_iommu_type1_open.__key.5) #14
  %head = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %head, align 8
  %vaddr_wait = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %vaddr_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @vfio_iommu_type1_open.__key.7) #14
  %pgsize_bitmap = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -4096, ptr %pgsize_bitmap, align 8
  %emulated_iommu_groups = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %emulated_iommu_groups to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %emulated_iommu_groups, ptr %emulated_iommu_groups, align 8
  %prev.i30 = getelementptr inbounds %struct.vfio_iommu, ptr %call7.i.i, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %emulated_iommu_groups, ptr %prev.i30, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %sw.default ], [ %call7.i.i, %sw.epilog ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_iommu_type1_release(ptr noundef %iommu_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %emulated_iommu_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 14
  %0 = ptrtoint ptr %emulated_iommu_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emulated_iommu_groups, align 8
  %cmp.not70 = icmp eq ptr %1, %emulated_iommu_groups
  br i1 %cmp.not70, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in71 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %group.0 = getelementptr i8, ptr %.pn.in71, i32 -4
  %2 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in71, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in71) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in71, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %group.0) #14
  %cmp.not = icmp eq ptr %.pn, %emulated_iommu_groups
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call2.i = tail call ptr @rb_first(ptr noundef %dma_list.i) #14
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %for.end.vfio_iommu_unmap_unpin_all.exit_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.vfio_iommu_unmap_unpin_all.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_unmap_unpin_all.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %for.end.while.body.i_crit_edge ]
  tail call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef nonnull %call4.i) #14
  %call.i = tail call ptr @rb_first(ptr noundef %dma_list.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.vfio_iommu_unmap_unpin_all.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.vfio_iommu_unmap_unpin_all.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_unmap_unpin_all.exit

vfio_iommu_unmap_unpin_all.exit:                  ; preds = %while.body.i.vfio_iommu_unmap_unpin_all.exit_crit_edge, %for.end.vfio_iommu_unmap_unpin_all.exit_crit_edge
  %11 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iommu_data, align 8
  %cmp26.not73 = icmp eq ptr %12, %iommu_data
  br i1 %cmp26.not73, label %vfio_iommu_unmap_unpin_all.exit.for.end36_crit_edge, label %vfio_iommu_unmap_unpin_all.exit.for.body28_crit_edge

vfio_iommu_unmap_unpin_all.exit.for.body28_crit_edge: ; preds = %vfio_iommu_unmap_unpin_all.exit
  br label %for.body28

vfio_iommu_unmap_unpin_all.exit.for.end36_crit_edge: ; preds = %vfio_iommu_unmap_unpin_all.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.body28:                                       ; preds = %list_del.exit61.for.body28_crit_edge, %vfio_iommu_unmap_unpin_all.exit.for.body28_crit_edge
  %.pn52.in74 = phi ptr [ %.pn52, %list_del.exit61.for.body28_crit_edge ], [ %12, %vfio_iommu_unmap_unpin_all.exit.for.body28_crit_edge ]
  %domain.0 = getelementptr i8, ptr %.pn52.in74, i32 -4
  %13 = ptrtoint ptr %.pn52.in74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn52 = load ptr, ptr %.pn52.in74, align 4
  %group_list.i = getelementptr i8, ptr %.pn52.in74, i32 8
  %14 = ptrtoint ptr %group_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group_list.i, align 4
  %cmp.not25.i = icmp eq ptr %15, %group_list.i
  br i1 %cmp.not25.i, label %for.body28.vfio_release_domain.exit_crit_edge, label %for.body28.for.body.i_crit_edge

for.body28.for.body.i_crit_edge:                  ; preds = %for.body28
  br label %for.body.i

for.body28.vfio_release_domain.exit_crit_edge:    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_release_domain.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body28.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %for.body28.for.body.i_crit_edge ]
  %group.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %16 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %17 = ptrtoint ptr %domain.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain.0, align 4
  %19 = ptrtoint ptr %group.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %group.0.i, align 4
  tail call void @iommu_detach_group(ptr noundef %18, ptr noundef %20) #14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i55 = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i55, align 4
  tail call void @kfree(ptr noundef %group.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %group_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.vfio_release_domain.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.vfio_release_domain.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_release_domain.exit

vfio_release_domain.exit:                         ; preds = %list_del.exit.i.vfio_release_domain.exit_crit_edge, %for.body28.vfio_release_domain.exit_crit_edge
  %29 = ptrtoint ptr %domain.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain.0, align 4
  tail call void @iommu_domain_free(ptr noundef %30) #14
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn52.in74) #14
  br i1 %call.i.i56, label %if.end.i.i59, label %vfio_release_domain.exit.list_del.exit61_crit_edge

vfio_release_domain.exit.list_del.exit61_crit_edge: ; preds = %vfio_release_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %vfio_release_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %.pn52.in74, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i57, align 4
  %33 = ptrtoint ptr %.pn52.in74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn52.in74, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i58, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %vfio_release_domain.exit.list_del.exit61_crit_edge
  %37 = ptrtoint ptr %.pn52.in74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn52.in74, align 4
  %prev.i60 = getelementptr inbounds %struct.list_head, ptr %.pn52.in74, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  tail call void @kfree(ptr noundef %domain.0) #14
  %cmp26.not = icmp eq ptr %.pn52, %iommu_data
  br i1 %cmp26.not, label %list_del.exit61.for.end36_crit_edge, label %list_del.exit61.for.body28_crit_edge

list_del.exit61.for.body28_crit_edge:             ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body28

list_del.exit61.for.end36_crit_edge:              ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.end36:                                        ; preds = %list_del.exit61.for.end36_crit_edge, %vfio_iommu_unmap_unpin_all.exit.for.end36_crit_edge
  %iova_list = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 1
  %39 = ptrtoint ptr %iova_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iova_list, align 4
  %cmp.not18.i = icmp eq ptr %40, %iova_list
  br i1 %cmp.not18.i, label %for.end36.vfio_iommu_iova_free.exit_crit_edge, label %for.end36.for.body.i63_crit_edge

for.end36.for.body.i63_crit_edge:                 ; preds = %for.end36
  br label %for.body.i63

for.end36.vfio_iommu_iova_free.exit_crit_edge:    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit

for.body.i63:                                     ; preds = %list_del.exit.i69.for.body.i63_crit_edge, %for.end36.for.body.i63_crit_edge
  %n.019.i = phi ptr [ %next.0.i, %list_del.exit.i69.for.body.i63_crit_edge ], [ %40, %for.end36.for.body.i63_crit_edge ]
  %41 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %next.0.i = load ptr, ptr %n.019.i, align 4
  %call.i.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i) #14
  br i1 %call.i.i.i62, label %if.end.i.i.i66, label %for.body.i63.list_del.exit.i69_crit_edge

for.body.i63.list_del.exit.i69_crit_edge:         ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i69

if.end.i.i.i66:                                   ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i64, align 4
  %44 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %n.019.i, align 4
  %prev1.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i65, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i69

list_del.exit.i69:                                ; preds = %if.end.i.i.i66, %for.body.i63.list_del.exit.i69_crit_edge
  %48 = ptrtoint ptr %n.019.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i, align 4
  %prev.i.i67 = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i67, align 4
  tail call void @kfree(ptr noundef %n.019.i) #14
  %cmp.not.i68 = icmp eq ptr %next.0.i, %iova_list
  br i1 %cmp.not.i68, label %list_del.exit.i69.vfio_iommu_iova_free.exit_crit_edge, label %list_del.exit.i69.for.body.i63_crit_edge

list_del.exit.i69.for.body.i63_crit_edge:         ; preds = %list_del.exit.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i63

list_del.exit.i69.vfio_iommu_iova_free.exit_crit_edge: ; preds = %list_del.exit.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit

vfio_iommu_iova_free.exit:                        ; preds = %list_del.exit.i69.vfio_iommu_iova_free.exit_crit_edge, %for.end36.vfio_iommu_iova_free.exit_crit_edge
  tail call void @kfree(ptr noundef %iommu_data) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_ioctl(ptr noundef %iommu_data, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %batch.i = alloca %struct.vfio_batch, align 4
  %pfn.i = alloca i32, align 4
  %dirty.i = alloca %struct.vfio_iommu_type1_dirty_bitmap, align 4
  %range.i = alloca %struct.vfio_iommu_type1_dirty_bitmap_get, align 8
  %nb_unmap.i.i = alloca %struct.vfio_iommu_type1_dma_unmap, align 8
  %unmap.i = alloca %struct.vfio_iommu_type1_dma_unmap, align 8
  %bitmap.i = alloca %struct.vfio_bitmap, align 8
  %map.i = alloca %struct.vfio_iommu_type1_dma_map, align 8
  %cap_dma_avail.i.i = alloca %struct.vfio_iommu_type1_info_dma_avail, align 4
  %cap_mig.i.i = alloca %struct.vfio_iommu_type1_info_cap_migration, align 8
  %info.i = alloca %struct.vfio_iommu_type1_info, align 8
  %caps.i = alloca %struct.vfio_info_cap, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 15205, label %sw.bb
    i32 15216, label %sw.bb1
    i32 15217, label %sw.bb3
    i32 15218, label %sw.bb5
    i32 15221, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %arg, label %sw.default.i [
    i32 1, label %sw.bb.cleanup_crit_edge
    i32 3, label %sw.bb.cleanup_crit_edge415
    i32 6, label %sw.bb.cleanup_crit_edge416
    i32 9, label %sw.bb.cleanup_crit_edge417
    i32 10, label %sw.bb.cleanup_crit_edge418
    i32 4, label %sw.bb1.i
  ]

sw.bb.cleanup_crit_edge418:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.cleanup_crit_edge417:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.cleanup_crit_edge416:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.cleanup_crit_edge415:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %iommu_data, null
  br i1 %tobool.not.i, label %sw.bb1.i.cleanup_crit_edge, label %if.end.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1.i
  %lock.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #14
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %iommu_data, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %iommu_data
  br i1 %cmp.not.i.i, label %for.cond.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_domains_have_iommu_cache.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %prot.i.i = getelementptr i8, ptr %.pn.i.i, i32 16
  %3 = ptrtoint ptr %prot.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prot.i.i, align 4
  %and.i.i = and i32 %4, 4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

for.body.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_domains_have_iommu_cache.exit.i

vfio_domains_have_iommu_cache.exit.i:             ; preds = %for.body.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge, %for.cond.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ 1, %for.cond.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge ], [ 0, %for.body.i.i.vfio_domains_have_iommu_cache.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #14
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i) #14
  %5 = call ptr @memset(ptr %info.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %caps.i) #14
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %caps.i, align 8
  %7 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %sw.bb1.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb1.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb1
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 16, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !93

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 16) #14
  %9 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !94
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %7, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i17, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !93

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb1.if.then11.i.i.i_crit_edge
  %res.0.i.i96.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb1.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i96.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i96.i)
  br label %vfio_iommu_type1_get_info.exit

if.end.i17:                                       ; preds = %if.end.i.i.i
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp.i = icmp ult i32 %14, 16
  br i1 %cmp.i, label %if.end.i17.vfio_iommu_type1_get_info.exit_crit_edge, label %if.end2.i

if.end.i17.vfio_iommu_type1_get_info.exit_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_get_info.exit

if.end2.i:                                        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %14)
  %cmp4.i = icmp ugt i32 %14, 19
  br i1 %cmp4.i, label %if.then5.i, label %if.end2.i.if.end6.i_crit_edge

if.end2.i.if.end6.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_offset.i = getelementptr inbounds %struct.vfio_iommu_type1_info, ptr %info.i, i32 0, i32 3
  %15 = ptrtoint ptr %cap_offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cap_offset.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end2.i.if.end6.i_crit_edge
  %minsz.0.i = phi i32 [ 20, %if.then5.i ], [ 16, %if.end2.i.if.end6.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %flags.i = getelementptr inbounds %struct.vfio_iommu_type1_info, ptr %info.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags.i, align 4
  %pgsize_bitmap.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %17 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pgsize_bitmap.i, align 8
  %iova_pgsizes.i = getelementptr inbounds %struct.vfio_iommu_type1_info, ptr %info.i, i32 0, i32 2
  %19 = ptrtoint ptr %iova_pgsizes.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %iova_pgsizes.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cap_mig.i.i) #14
  %20 = call ptr @memset(ptr %cap_mig.i.i, i32 255, i32 16)
  %21 = ptrtoint ptr %cap_mig.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %cap_mig.i.i, align 8
  %version.i.i = getelementptr inbounds %struct.vfio_info_cap_header, ptr %cap_mig.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %version.i.i, align 2
  %flags.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_migration, ptr %cap_mig.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i.i, align 8
  %conv.i.i = trunc i64 %18 to i32
  %24 = call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 false) #14, !range !97
  %shl.i.i = shl nuw i32 1, %24
  %conv2.i.i = zext i32 %shl.i.i to i64
  %pgsize_bitmap3.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_migration, ptr %cap_mig.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %pgsize_bitmap3.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv2.i.i, ptr %pgsize_bitmap3.i.i, align 8
  %max_dirty_bitmap_size.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_migration, ptr %cap_mig.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %max_dirty_bitmap_size.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 268435456, ptr %max_dirty_bitmap_size.i.i, align 8
  %call5.i.i = call i32 @vfio_info_add_capability(ptr noundef nonnull %caps.i, ptr noundef nonnull %cap_mig.i.i, i32 noundef 32) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cap_mig.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool8.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.end6.i.if.end15.thread.i_crit_edge

if.end6.i.if.end15.thread.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.thread.i

if.end11.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cap_dma_avail.i.i) #14
  %27 = getelementptr inbounds %struct.vfio_info_cap_header, ptr %cap_dma_avail.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.vfio_iommu_type1_info_dma_avail, ptr %cap_dma_avail.i.i, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %cap_dma_avail.i.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4
  %31 = ptrtoint ptr %cap_dma_avail.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 3, ptr %cap_dma_avail.i.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %27, align 2
  %dma_avail.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 5
  %33 = ptrtoint ptr %dma_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_avail.i.i, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %28, align 4
  %call.i.i = call i32 @vfio_info_add_capability(ptr noundef nonnull %caps.i, ptr noundef nonnull %cap_dma_avail.i.i, i32 noundef 12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cap_dma_avail.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end11.i.if.end15.thread.i_crit_edge

if.end11.i.if.end15.thread.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.thread.i

if.then13.i:                                      ; preds = %if.end11.i
  %iova_list.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 1
  br label %for.cond.i.i19

for.cond.i.i19:                                   ; preds = %for.cond.i.i19.for.cond.i.i19_crit_edge, %if.then13.i
  %iovas.0.i.i = phi i32 [ 0, %if.then13.i ], [ %inc.i.i, %for.cond.i.i19.for.cond.i.i19_crit_edge ]
  %iova.0.in.i.i = phi ptr [ %iova_list.i.i, %if.then13.i ], [ %iova.0.i.i, %for.cond.i.i19.for.cond.i.i19_crit_edge ]
  %36 = ptrtoint ptr %iova.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %iova.0.i.i = load ptr, ptr %iova.0.in.i.i, align 4
  %cmp.not.i.i18 = icmp eq ptr %iova.0.i.i, %iova_list.i.i
  %inc.i.i = add i32 %iovas.0.i.i, 1
  br i1 %cmp.not.i.i18, label %for.end.i.i, label %for.cond.i.i19.for.cond.i.i19_crit_edge

for.cond.i.i19.for.cond.i.i19_crit_edge:          ; preds = %for.cond.i.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i19

for.end.i.i:                                      ; preds = %for.cond.i.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iovas.0.i.i)
  %tobool.not.i.i20 = icmp eq i32 %iovas.0.i.i, 0
  br i1 %tobool.not.i.i20, label %if.end15.thread103.i, label %if.end.i.i

if.end15.thread103.i:                             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %if.end19.i

if.end.i.i:                                       ; preds = %for.end.i.i
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %iovas.0.i.i, i32 16) #14
  %38 = extractvalue { i32, i1 } %37, 1
  %39 = extractvalue { i32, i1 } %37, 0
  %spec.select.i.i88.i = call i32 @llvm.uadd.sat.i32(i32 %39, i32 16) #14
  %retval.0.i.i.i = select i1 %38, i32 -1, i32 %spec.select.i.i88.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #19
  %tobool8.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool8.not.i.i, label %if.end.i.i.if.end15.thread.i_crit_edge, label %if.end10.i.i

if.end.i.i.if.end15.thread.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.thread.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %nr_iovas.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call9.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %nr_iovas.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %iovas.0.i.i, ptr %nr_iovas.i.i, align 8
  %41 = ptrtoint ptr %iova_list.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %iova.162.i.i = load ptr, ptr %iova_list.i.i, align 4
  %cmp19.not63.i.i = icmp eq ptr %iova.162.i.i, %iova_list.i.i
  br i1 %cmp19.not63.i.i, label %if.end10.i.i.for.end34.i.i_crit_edge, label %if.end10.i.i.for.body21.i.i_crit_edge

if.end10.i.i.for.body21.i.i_crit_edge:            ; preds = %if.end10.i.i
  br label %for.body21.i.i

if.end10.i.i.for.end34.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %if.end10.i.i.for.body21.i.i_crit_edge
  %iova.165.i.i = phi ptr [ %iova.1.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ %iova.162.i.i, %if.end10.i.i.for.body21.i.i_crit_edge ]
  %i.064.i.i = phi i32 [ %inc27.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %if.end10.i.i.for.body21.i.i_crit_edge ]
  %start.i.i = getelementptr inbounds %struct.vfio_iova, ptr %iova.165.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start.i.i, align 4
  %conv.i90.i = zext i32 %43 to i64
  %arrayidx.i.i = getelementptr %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call9.i.i.i.i, i32 0, i32 3, i32 %i.064.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv.i90.i, ptr %arrayidx.i.i, align 16
  %end.i.i = getelementptr inbounds %struct.vfio_iova, ptr %iova.165.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i.i, align 4
  %conv23.i.i = zext i32 %46 to i64
  %end26.i.i = getelementptr %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call9.i.i.i.i, i32 0, i32 3, i32 %i.064.i.i, i32 1
  %47 = ptrtoint ptr %end26.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv23.i.i, ptr %end26.i.i, align 8
  %inc27.i.i = add i32 %i.064.i.i, 1
  %48 = ptrtoint ptr %iova.165.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %iova.1.i.i = load ptr, ptr %iova.165.i.i, align 4
  %cmp19.not.i.i = icmp eq ptr %iova.1.i.i, %iova_list.i.i
  br i1 %cmp19.not.i.i, label %for.body21.i.i.for.end34.i.i_crit_edge, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21.i.i

for.body21.i.i.for.end34.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34.i.i

for.end34.i.i:                                    ; preds = %for.body21.i.i.for.end34.i.i_crit_edge, %if.end10.i.i.for.end34.i.i_crit_edge
  %call.i.i91.i = call ptr @vfio_info_cap_add(ptr noundef nonnull %caps.i, i32 noundef %retval.0.i.i.i, i16 noundef zeroext 1, i16 noundef zeroext 1) #14
  %cmp.i.i60.i.i = icmp ugt ptr %call.i.i91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i60.i.i, label %if.then.i.i92.i, label %if.end.i.i93.i

if.then.i.i92.i:                                  ; preds = %for.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %call.i.i91.i to i32
  br label %if.end15.i

if.end.i.i93.i:                                   ; preds = %for.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %nr_iovas.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_iovas.i.i, align 8
  %nr_iovas3.i.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call.i.i91.i, i32 0, i32 1
  %52 = ptrtoint ptr %nr_iovas3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %nr_iovas3.i.i.i, align 8
  %iova_ranges.i.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call.i.i91.i, i32 0, i32 3
  %iova_ranges4.i.i.i = getelementptr inbounds %struct.vfio_iommu_type1_info_cap_iova_range, ptr %call9.i.i.i.i, i32 0, i32 3
  %53 = load i32, ptr %nr_iovas.i.i, align 8
  %mul.i.i.i = shl i32 %53, 4
  %54 = call ptr @memcpy(ptr %iova_ranges.i.i.i, ptr %iova_ranges4.i.i.i, i32 %mul.i.i.i)
  br label %if.end15.i

if.end15.thread.i:                                ; preds = %if.end.i.i.if.end15.thread.i_crit_edge, %if.end11.i.if.end15.thread.i_crit_edge, %if.end6.i.if.end15.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ -12, %if.end.i.i.if.end15.thread.i_crit_edge ], [ %call.i.i, %if.end11.i.if.end15.thread.i_crit_edge ], [ %call5.i.i, %if.end6.i.if.end15.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %vfio_iommu_type1_get_info.exit

if.end15.i:                                       ; preds = %if.end.i.i93.i, %if.then.i.i92.i
  %retval.0.i61.i.i = phi i32 [ %49, %if.then.i.i92.i ], [ 0, %if.end.i.i93.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #14
  call void @mutex_unlock(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i61.i.i)
  %tobool17.not.i = icmp eq i32 %retval.0.i61.i.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end19.i_crit_edge, label %if.end15.i.vfio_iommu_type1_get_info.exit_crit_edge

if.end15.i.vfio_iommu_type1_get_info.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_get_info.exit

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end15.i.if.end19.i_crit_edge, %if.end15.thread103.i
  %size.i = getelementptr inbounds %struct.vfio_info_cap, ptr %caps.i, i32 0, i32 1
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20.not.i = icmp eq i32 %56, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.then.i.i.i77.i_crit_edge, label %if.then21.i

if.end19.i.if.then.i.i.i77.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i77.i

if.then21.i:                                      ; preds = %if.end19.i
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %58, 2
  store i32 %or.i, ptr %flags.i, align 4
  %59 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %info.i, align 8
  %add.i = add i32 %56, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add.i)
  %cmp25.i = icmp ult i32 %60, %add.i
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i, ptr %info.i, align 8
  br label %if.end37.i

if.else.i:                                        ; preds = %if.then21.i
  call void @vfio_info_cap_shift(ptr noundef nonnull %caps.i, i32 noundef 24) #14
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %62 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %caps.i, align 8
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp9.i.i.i = icmp slt i32 %65, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.else.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then33.i_crit_edge, label %if.then27.i.i.i, !prof !93

land.rhs16.i.i.i.if.then33.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.then33.i

if.then.i.i.i.i:                                  ; preds = %if.else.i
  call void @__check_object_size(ptr noundef %63, i32 noundef %65, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #14
  %call.i.i63.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i63.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i66.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.end.i.i66.i:                                   ; preds = %if.then.i.i.i.i
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 %65, i32 -1226833920) #18, !srcloc !98
  %asmresult.i.i64.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i64.i)
  %cmp.i6.i65.i = icmp eq i32 %asmresult.i.i64.i, 0
  br i1 %cmp.i6.i65.i, label %if.then2.i.i.i, label %if.end.i.i66.i.copy_to_user.exit.i_crit_edge

if.end.i.i66.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i67.i = call zeroext i1 @__kasan_check_read(ptr noundef %63, i32 noundef %65) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i, ptr noundef %63, i32 noundef %65) #14
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i66.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i68.i = phi i32 [ %65, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %65, %if.end.i.i66.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i68.i)
  %tobool32.not.i = icmp eq i32 %n.addr.0.i68.i, 0
  br i1 %tobool32.not.i, label %if.end35.i, label %copy_to_user.exit.i.if.then33.i_crit_edge

copy_to_user.exit.i.if.then33.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i

if.then33.i:                                      ; preds = %copy_to_user.exit.i.if.then33.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then33.i_crit_edge
  %67 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %caps.i, align 8
  call void @kfree(ptr noundef %68) #14
  br label %vfio_iommu_type1_get_info.exit

if.end35.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_offset36.i = getelementptr inbounds %struct.vfio_iommu_type1_info, ptr %info.i, i32 0, i32 3
  %69 = ptrtoint ptr %cap_offset36.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 24, ptr %cap_offset36.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end35.i, %if.then26.i
  %70 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %caps.i, align 8
  call void @kfree(ptr noundef %71) #14
  br label %if.then.i.i.i77.i

if.then.i.i.i77.i:                                ; preds = %if.end37.i, %if.end19.i.if.then.i.i.i77.i_crit_edge
  call void @__check_object_size(ptr noundef nonnull %info.i, i32 noundef %minsz.0.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #14
  %call.i.i78.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i78.i, label %if.then.i.i.i77.i.vfio_iommu_type1_get_info.exit_crit_edge, label %if.end.i.i82.i

if.then.i.i.i77.i.vfio_iommu_type1_get_info.exit_crit_edge: ; preds = %if.then.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_get_info.exit

if.end.i.i82.i:                                   ; preds = %if.then.i.i.i77.i
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %minsz.0.i, i32 -1226833920) #18, !srcloc !98
  %asmresult.i.i80.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80.i)
  %cmp.i6.i81.i = icmp eq i32 %asmresult.i.i80.i, 0
  br i1 %cmp.i6.i81.i, label %if.then2.i.i85.i, label %if.end.i.i82.i.vfio_iommu_type1_get_info.exit_crit_edge

if.end.i.i82.i.vfio_iommu_type1_get_info.exit_crit_edge: ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_get_info.exit

if.then2.i.i85.i:                                 ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i83.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef %minsz.0.i) #14
  %call.i12.i.i84.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %info.i, i32 noundef %minsz.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i84.i)
  %phi.cmp.i = icmp eq i32 %call.i12.i.i84.i, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 0, i32 -14
  br label %vfio_iommu_type1_get_info.exit

vfio_iommu_type1_get_info.exit:                   ; preds = %if.then2.i.i85.i, %if.end.i.i82.i.vfio_iommu_type1_get_info.exit_crit_edge, %if.then.i.i.i77.i.vfio_iommu_type1_get_info.exit_crit_edge, %if.then33.i, %if.end15.i.vfio_iommu_type1_get_info.exit_crit_edge, %if.end15.thread.i, %if.end.i17.vfio_iommu_type1_get_info.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i21 = phi i32 [ -14, %if.then33.i ], [ -22, %if.end.i17.vfio_iommu_type1_get_info.exit_crit_edge ], [ %retval.0.i61.i.i, %if.end15.i.vfio_iommu_type1_get_info.exit_crit_edge ], [ %ret.1.ph.i, %if.end15.thread.i ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i.i.i77.i.vfio_iommu_type1_get_info.exit_crit_edge ], [ %phi.sel.i, %if.then2.i.i85.i ], [ -14, %if.end.i.i82.i.vfio_iommu_type1_get_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %caps.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i) #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map.i) #14
  %73 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %map.i, i32 0, i32 1
  %74 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %map.i, i32 0, i32 2
  %75 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %map.i, i32 0, i32 3
  %76 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %map.i, i32 0, i32 4
  %77 = inttoptr i32 %arg to ptr
  %78 = call ptr @memset(ptr %map.i, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i.i22 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i22, label %sw.bb3.if.then11.i.i.i36_crit_edge, label %land.lhs.true.i.i.i25

sw.bb3.if.then11.i.i.i36_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i36

land.lhs.true.i.i.i25:                            ; preds = %sw.bb3
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %77, i32 32, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i.i23 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i23)
  %cmp.i6.i.i24 = icmp eq i32 %asmresult.i.i.i23, 0
  br i1 %cmp.i6.i.i24, label %if.end.i.i.i33, label %land.lhs.true.i.i.i25.if.then11.i.i.i36_crit_edge, !prof !93

land.lhs.true.i.i.i25.if.then11.i.i.i36_crit_edge: ; preds = %land.lhs.true.i.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i36

if.end.i.i.i33:                                   ; preds = %land.lhs.true.i.i.i25
  %call.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map.i, i32 noundef 32) #14
  %80 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i.i27 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i.i27 to ptr
  %cpu_domain.i.i.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i28) #8, !srcloc !94
  %and.i.i.i.i.i29 = and i32 %82, -13
  %or.i.i.i.i.i30 = or i32 %and.i.i.i.i.i29, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i30) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i.i31 = call i32 @arm_copy_from_user(ptr noundef nonnull %map.i, ptr noundef %77, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i31)
  %tobool4.not.i.i.i32 = icmp eq i32 %call1.i.i.i.i31, 0
  br i1 %tobool4.not.i.i.i32, label %if.end.i38, label %if.end.i.i.i33.if.then11.i.i.i36_crit_edge, !prof !93

if.end.i.i.i33.if.then11.i.i.i36_crit_edge:       ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i36

if.then11.i.i.i36:                                ; preds = %if.end.i.i.i33.if.then11.i.i.i36_crit_edge, %land.lhs.true.i.i.i25.if.then11.i.i.i36_crit_edge, %sw.bb3.if.then11.i.i.i36_crit_edge
  %res.0.i.i12.i = phi i32 [ %call1.i.i.i.i31, %if.end.i.i.i33.if.then11.i.i.i36_crit_edge ], [ 32, %sw.bb3.if.then11.i.i.i36_crit_edge ], [ 32, %land.lhs.true.i.i.i25.if.then11.i.i.i36_crit_edge ]
  %sub.i.i.i34 = sub i32 32, %res.0.i.i12.i
  %add.ptr.i.i.i35 = getelementptr i8, ptr %map.i, i32 %sub.i.i.i34
  %83 = call ptr @memset(ptr %add.ptr.i.i.i35, i32 0, i32 %res.0.i.i12.i)
  br label %vfio_iommu_type1_map_dma.exit

if.end.i38:                                       ; preds = %if.end.i.i.i33
  %84 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %map.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %85)
  %cmp.i37 = icmp ult i32 %85, 32
  br i1 %cmp.i37, label %if.end.i38.vfio_iommu_type1_map_dma.exit_crit_edge, label %lor.lhs.false.i

if.end.i38.vfio_iommu_type1_map_dma.exit_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_map_dma.exit

lor.lhs.false.i:                                  ; preds = %if.end.i38
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %87)
  %tobool1.not.i = icmp ult i32 %87, 8
  br i1 %tobool1.not.i, label %if.end3.i, label %lor.lhs.false.i.vfio_iommu_type1_map_dma.exit_crit_edge

lor.lhs.false.i.vfio_iommu_type1_map_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_map_dma.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %and.i.i39 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  %88 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %75, align 8
  %conv.i.i41 = trunc i64 %89 to i32
  %90 = ptrtoint ptr %74 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %74, align 8
  %conv3.i.i = trunc i64 %91 to i32
  %92 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %76, align 8
  %conv5.i.i = trunc i64 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %93)
  %94 = icmp ult i64 %93, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %91)
  %95 = icmp ult i64 %91, 4294967296
  %or.cond.i.i = select i1 %94, i1 %95, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %89)
  %96 = icmp ult i64 %89, 4294967296
  %or.cond230.i.i = select i1 %or.cond.i.i, i1 %96, i1 false
  br i1 %or.cond230.i.i, label %if.end.i.i42, label %if.end3.i.vfio_iommu_type1_map_dma.exit_crit_edge

if.end3.i.vfio_iommu_type1_map_dma.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_map_dma.exit

if.end.i.i42:                                     ; preds = %if.end3.i
  %97 = and i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool29.not.i.i = icmp eq i32 %97, 0
  %brmerge.i.i = or i1 %tobool29.not.i.i, %tobool.not.i.i40
  %brmerge.not.i.i = xor i1 %brmerge.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %.not.i.i = icmp eq i32 %87, 0
  %or.cond240.i.i = select i1 %brmerge.not.i.i, i1 true, i1 %.not.i.i
  br i1 %or.cond240.i.i, label %if.end.i.i42.vfio_iommu_type1_map_dma.exit_crit_edge, label %if.end37.i.i

if.end.i.i42.vfio_iommu_type1_map_dma.exit_crit_edge: ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_map_dma.exit

if.end37.i.i:                                     ; preds = %if.end.i.i42
  %lock.i.i43 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i.i43, i32 noundef 0) #14
  %pgsize_bitmap.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %98 = ptrtoint ptr %pgsize_bitmap.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %pgsize_bitmap.i.i, align 8
  %conv38.i.i = trunc i64 %99 to i32
  %100 = call i32 @llvm.cttz.i32(i32 %conv38.i.i, i1 false) #14, !range !97
  %notmask = shl nsw i32 -1, %100
  %sub.i.i = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %notmask)
  %tobool40.not.i.i = icmp ugt i32 %notmask, -4097
  br i1 %tobool40.not.i.i, label %if.end37.i.i.if.end55.i.i_crit_edge, label %do.end.i.i, !prof !93

if.end37.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i.i

do.end.i.i:                                       ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1578, i32 noundef 9, ptr noundef null) #14
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %do.end.i.i, %if.end37.i.i.if.end55.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i.i)
  %tobool62.not.i.i = icmp eq i32 %conv5.i.i, 0
  br i1 %tobool62.not.i.i, label %if.end55.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false63.i.i

if.end55.i.i.out_unlock.i.i_crit_edge:            ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

lor.lhs.false63.i.i:                              ; preds = %if.end55.i.i
  %or64228.i.i = or i64 %91, %89
  %or65229.i.i = or i64 %or64228.i.i, %93
  %or65.i.i = trunc i64 %or65229.i.i to i32
  %and67.i.i = and i32 %sub.i.i, %or65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  br i1 %tobool68.not.i.i, label %if.end70.i.i, label %lor.lhs.false63.i.i.out_unlock.i.i_crit_edge

lor.lhs.false63.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false63.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end70.i.i:                                     ; preds = %lor.lhs.false63.i.i
  %add.i.i = add i32 %conv5.i.i, %conv.i.i41
  %sub71.i.i = add i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub71.i.i, i32 %conv.i.i41)
  %cmp72.i.i = icmp ult i32 %sub71.i.i, %conv.i.i41
  %101 = sub i32 0, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %conv3.i.i)
  %cmp77.i.i = icmp ult i32 %101, %conv3.i.i
  %or.cond232.i.i = select i1 %cmp72.i.i, i1 true, i1 %cmp77.i.i
  br i1 %or.cond232.i.i, label %if.end70.i.i.out_unlock.i.i_crit_edge, label %if.end80.i.i

if.end70.i.i.out_unlock.i.i_crit_edge:            ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end80.i.i:                                     ; preds = %if.end70.i.i
  %dma_list.i.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %102 = ptrtoint ptr %dma_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %node.019.i.i.i = load ptr, ptr %dma_list.i.i.i, align 4
  %tobool.not20.i.i.i = icmp eq ptr %node.019.i.i.i, null
  br i1 %tobool.not20.i.i.i, label %if.end80.i.i.vfio_find_dma.exit.i.i_crit_edge, label %if.end80.i.i.while.body.i.i.i_crit_edge

if.end80.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end80.i.i
  br label %while.body.i.i.i

if.end80.i.i.vfio_find_dma.exit.i.i_crit_edge:    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end80.i.i.while.body.i.i.i_crit_edge
  %node.021.i.i.i = phi ptr [ %node.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %node.019.i.i.i, %if.end80.i.i.while.body.i.i.i_crit_edge ]
  %iova.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %iova.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iova.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %104)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %104
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i45, label %if.then.i.i8.i

if.then.i.i8.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i45:                                  ; preds = %while.body.i.i.i
  %size2.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size2.i.i.i, align 4
  %add3.i.i.i = add i32 %106, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.i, i32 %conv.i.i41)
  %cmp4.not.i.i.i = icmp ugt i32 %add3.i.i.i, %conv.i.i41
  br i1 %cmp4.not.i.i.i, label %if.else.i.i.i45.vfio_find_dma.exit.i.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i45.vfio_find_dma.exit.i.i_crit_edge: ; preds = %if.else.i.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.then.i.i8.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i8.i ], [ %rb_right.i.i.i, %if.then5.i.i.i ]
  %107 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.vfio_find_dma.exit.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

cleanup.i.i.i.vfio_find_dma.exit.i.i_crit_edge:   ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit.i.i

vfio_find_dma.exit.i.i:                           ; preds = %cleanup.i.i.i.vfio_find_dma.exit.i.i_crit_edge, %if.else.i.i.i45.vfio_find_dma.exit.i.i_crit_edge, %if.end80.i.i.vfio_find_dma.exit.i.i_crit_edge
  %node.0.lcssa.i.i.i = phi ptr [ null, %if.end80.i.i.vfio_find_dma.exit.i.i_crit_edge ], [ null, %cleanup.i.i.i.vfio_find_dma.exit.i.i_crit_edge ], [ %node.021.i.i.i, %if.else.i.i.i45.vfio_find_dma.exit.i.i_crit_edge ]
  %tobool102.not.i.i = icmp eq ptr %node.0.lcssa.i.i.i, null
  br i1 %tobool.not.i.i40, label %if.else101.i.i, label %if.then83.i.i

if.then83.i.i:                                    ; preds = %vfio_find_dma.exit.i.i
  br i1 %tobool102.not.i.i, label %if.then83.i.i.out_unlock.i.i_crit_edge, label %if.else.i.i

if.then83.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.else.i.i:                                      ; preds = %if.then83.i.i
  %vaddr_invalid.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.0.lcssa.i.i.i, i32 0, i32 7
  %108 = ptrtoint ptr %vaddr_invalid.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %vaddr_invalid.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool86.not.i.i = icmp eq i8 %109, 0
  br i1 %tobool86.not.i.i, label %if.else.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false87.i.i

if.else.i.i.out_unlock.i.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

lor.lhs.false87.i.i:                              ; preds = %if.else.i.i
  %iova88.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.0.lcssa.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %iova88.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iova88.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %conv.i.i41)
  %cmp89.not.i.i = icmp eq i32 %111, %conv.i.i41
  br i1 %cmp89.not.i.i, label %lor.lhs.false91.i.i, label %lor.lhs.false87.i.i.out_unlock.i.i_crit_edge

lor.lhs.false87.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

lor.lhs.false91.i.i:                              ; preds = %lor.lhs.false87.i.i
  %size92.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.0.lcssa.i.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %size92.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size92.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %conv5.i.i)
  %cmp93.not.i.i = icmp eq i32 %113, %conv5.i.i
  br i1 %cmp93.not.i.i, label %if.else96.i.i, label %lor.lhs.false91.i.i.out_unlock.i.i_crit_edge

lor.lhs.false91.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false91.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.else96.i.i:                                    ; preds = %lor.lhs.false91.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %vaddr97.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.0.lcssa.i.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %vaddr97.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv3.i.i, ptr %vaddr97.i.i, align 4
  %115 = ptrtoint ptr %vaddr_invalid.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %vaddr_invalid.i.i, align 2
  %vaddr_invalid_count.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 6
  %116 = ptrtoint ptr %vaddr_invalid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vaddr_invalid_count.i.i, align 8
  %dec.i.i = add i32 %117, -1
  store i32 %dec.i.i, ptr %vaddr_invalid_count.i.i, align 8
  %vaddr_wait.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 9
  call void @__wake_up(ptr noundef %vaddr_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %out_unlock.i.i

if.else101.i.i:                                   ; preds = %vfio_find_dma.exit.i.i
  br i1 %tobool102.not.i.i, label %if.end105.i.i, label %if.else101.i.i.out_unlock.i.i_crit_edge

if.else101.i.i.out_unlock.i.i_crit_edge:          ; preds = %if.else101.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end105.i.i:                                    ; preds = %if.else101.i.i
  %dma_avail.i.i46 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 5
  %118 = ptrtoint ptr %dma_avail.i.i46 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_avail.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool106.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool106.not.i.i, label %if.end105.i.i.out_unlock.i.i_crit_edge, label %if.end108.i.i

if.end105.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end108.i.i:                                    ; preds = %if.end105.i.i
  %iova_list.i.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 1
  %120 = ptrtoint ptr %iova_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %node.016.i.i.i = load ptr, ptr %iova_list.i.i.i, align 4
  %cmp.not17.i.i.i = icmp eq ptr %node.016.i.i.i, %iova_list.i.i.i
  br i1 %cmp.not17.i.i.i, label %if.end108.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge, label %if.end108.i.i.for.body.i.i.i_crit_edge

if.end108.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end108.i.i
  br label %for.body.i.i.i

if.end108.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge: ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_dma_valid.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end108.i.i.for.body.i.i.i_crit_edge
  %node.018.i.i.i = phi ptr [ %node.0.i234.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %node.016.i.i.i, %if.end108.i.i.for.body.i.i.i_crit_edge ]
  %start1.i.i.i = getelementptr inbounds %struct.vfio_iova, ptr %node.018.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %start1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %start1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %conv.i.i41)
  %cmp2.not.i.i.i = icmp ugt i32 %122, %conv.i.i41
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i9.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

land.lhs.true.i.i9.i:                             ; preds = %for.body.i.i.i
  %end3.i.i.i = getelementptr inbounds %struct.vfio_iova, ptr %node.018.i.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %end3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %end3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %sub71.i.i)
  %cmp4.not.i233.i.i = icmp ult i32 %124, %sub71.i.i
  br i1 %cmp4.not.i233.i.i, label %land.lhs.true.i.i9.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i9.i.if.end113.i.i_crit_edge

land.lhs.true.i.i9.i.if.end113.i.i_crit_edge:     ; preds = %land.lhs.true.i.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113.i.i

land.lhs.true.i.i9.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i9.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %125 = ptrtoint ptr %node.018.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %node.0.i234.i.i = load ptr, ptr %node.018.i.i.i, align 4
  %cmp.not.i235.i.i = icmp eq ptr %node.0.i234.i.i, %iova_list.i.i.i
  br i1 %cmp.not.i235.i.i, label %for.inc.i.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_dma_valid.exit.i.i

vfio_iommu_iova_dma_valid.exit.i.i:               ; preds = %for.inc.i.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge, %if.end108.i.i.vfio_iommu_iova_dma_valid.exit.i.i_crit_edge
  %126 = ptrtoint ptr %iova_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %iova_list.i.i.i, align 4
  %cmp.i.i.i.i47 = icmp eq ptr %127, %iova_list.i.i.i
  br i1 %cmp.i.i.i.i47, label %vfio_iommu_iova_dma_valid.exit.i.i.if.end113.i.i_crit_edge, label %vfio_iommu_iova_dma_valid.exit.i.i.out_unlock.i.i_crit_edge

vfio_iommu_iova_dma_valid.exit.i.i.out_unlock.i.i_crit_edge: ; preds = %vfio_iommu_iova_dma_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

vfio_iommu_iova_dma_valid.exit.i.i.if.end113.i.i_crit_edge: ; preds = %vfio_iommu_iova_dma_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %vfio_iommu_iova_dma_valid.exit.i.i.if.end113.i.i_crit_edge, %land.lhs.true.i.i9.i.if.end113.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %128 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3520, i32 noundef 44) #17
  %tobool115.not.i.i = icmp eq ptr %call7.i.i.i.i48, null
  br i1 %tobool115.not.i.i, label %if.end113.i.i.out_unlock.i.i_crit_edge, label %if.end117.i.i

if.end113.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end117.i.i:                                    ; preds = %if.end113.i.i
  %129 = ptrtoint ptr %dma_avail.i.i46 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_avail.i.i46, align 4
  %dec119.i.i = add i32 %130, -1
  store i32 %dec119.i.i, ptr %dma_avail.i.i46, align 4
  %iova120.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 1
  %131 = ptrtoint ptr %iova120.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv.i.i41, ptr %iova120.i.i, align 4
  %vaddr121.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 2
  %132 = ptrtoint ptr %vaddr121.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv3.i.i, ptr %vaddr121.i.i, align 8
  %prot122.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 4
  %133 = ptrtoint ptr %prot122.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %97, ptr %prot122.i.i, align 8
  %134 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task.i.i, align 8
  %group_leader.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 75
  %138 = ptrtoint ptr %group_leader.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %group_leader.i.i, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #14
  %140 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end117.i.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !101

if.end117.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end117.i.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %141 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %.not.i.i.i.i = icmp sgt i32 %141, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !93

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end117.i.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end117.i.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #14
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %142 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task.i.i, align 8
  %group_leader127.i.i = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 75
  %144 = ptrtoint ptr %group_leader127.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %group_leader127.i.i, align 4
  %task128.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 8
  %146 = ptrtoint ptr %task128.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %task128.i.i, align 8
  %call129.i.i = call zeroext i1 @capable(i32 noundef 14) #14
  %lock_cap.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 6
  %frombool130.i.i = zext i1 %call129.i.i to i8
  %147 = ptrtoint ptr %lock_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %frombool130.i.i, ptr %lock_cap.i.i, align 1
  %pfn_list.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 9
  %148 = ptrtoint ptr %pfn_list.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %pfn_list.i.i, align 4
  %149 = ptrtoint ptr %dma_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dma_list.i.i.i, align 4
  %tobool.not13.i = icmp eq ptr %150, null
  br i1 %tobool.not13.i, label %get_task_struct.exit.vfio_link_dma.exit_crit_edge, label %while.body.lr.ph.i199

get_task_struct.exit.vfio_link_dma.exit_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_link_dma.exit

while.body.lr.ph.i199:                            ; preds = %get_task_struct.exit
  %151 = ptrtoint ptr %iova120.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %iova120.i.i, align 4
  %size.i197 = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 3
  %153 = ptrtoint ptr %size.i197 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %size.i197, align 4
  %add.i198 = add i32 %154, %152
  br label %while.body.i202

while.body.i202:                                  ; preds = %while.body.i202.while.body.i202_crit_edge, %while.body.lr.ph.i199
  %155 = phi ptr [ %150, %while.body.lr.ph.i199 ], [ %159, %while.body.i202.while.body.i202_crit_edge ]
  %iova1.i200 = getelementptr inbounds %struct.vfio_dma, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %iova1.i200 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %iova1.i200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i198, i32 %157)
  %cmp.not.i = icmp ugt i32 %add.i198, %157
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 1
  %link.1.i = select i1 %cmp.not.i, ptr %rb_right.i, ptr %rb_left.i
  %158 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i201 = icmp eq ptr %159, null
  br i1 %tobool.not.i201, label %while.cond.while.end_crit_edge.i, label %while.body.i202.while.body.i202_crit_edge

while.body.i202.while.body.i202_crit_edge:        ; preds = %while.body.i202
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i202

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i202
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %155 to i32
  br label %vfio_link_dma.exit

vfio_link_dma.exit:                               ; preds = %while.cond.while.end_crit_edge.i, %get_task_struct.exit.vfio_link_dma.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %get_task_struct.exit.vfio_link_dma.exit_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %dma_list.i.i.i, %get_task_struct.exit.vfio_link_dma.exit_crit_edge ]
  %160 = ptrtoint ptr %call7.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i.i48, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i48, i32 0, i32 1
  %161 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i48, i32 0, i32 2
  %162 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %rb_left.i.i, align 8
  %163 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call7.i.i.i.i48, ptr %link.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %call7.i.i.i.i48, ptr noundef %dma_list.i.i.i) #14
  %164 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %iommu_data, align 4
  %cmp.i.not.i.i = icmp eq ptr %165, %iommu_data
  br i1 %cmp.i.not.i.i, label %if.end137.thread.i.i, label %if.end137.i.i

if.end137.thread.i.i:                             ; preds = %vfio_link_dma.exit
  call void @__sanitizer_cov_trace_pc() #16
  %size134.i.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 3
  %166 = ptrtoint ptr %size134.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv5.i.i, ptr %size134.i.i, align 4
  br label %land.lhs.true139.i.i

if.end137.i.i:                                    ; preds = %vfio_link_dma.exit
  %167 = ptrtoint ptr %iova120.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %iova120.i.i, align 4
  %169 = ptrtoint ptr %vaddr121.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vaddr121.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %batch.i) #14
  %171 = getelementptr inbounds %struct.vfio_batch, ptr %batch.i, i32 0, i32 1
  %172 = getelementptr inbounds %struct.vfio_batch, ptr %batch.i, i32 0, i32 2
  %173 = getelementptr inbounds %struct.vfio_batch, ptr %batch.i, i32 0, i32 3
  %174 = getelementptr inbounds %struct.vfio_batch, ptr %batch.i, i32 0, i32 4
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %171, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfn.i) #14
  %176 = ptrtoint ptr %pfn.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %pfn.i, align 4, !annotation !102
  %177 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i172 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i172 to ptr
  %task.i.i173 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task.i.i173 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task.i.i173, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 111
  %181 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %182, i32 0, i32 51, i32 8
  %183 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %shr.i174 = lshr i32 %184, 12
  %185 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %173, align 4
  %186 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %174, align 4
  %187 = load i8, ptr @disable_hugepages, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i.i175 = icmp eq i8 %187, 0
  br i1 %tobool.not.i.i175, label %if.end.i.i177, label %if.end137.i.i.fallback.i.i_crit_edge, !prof !93

if.end137.i.i.fallback.i.i_crit_edge:             ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fallback.i.i

if.end.i.i177:                                    ; preds = %if.end137.i.i
  %call.i.i176 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %188 = inttoptr i32 %call.i.i176 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %tobool4.not.i.i = icmp eq i32 %call.i.i176, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i177.fallback.i.i_crit_edge, label %if.end.i.i177.while.body.lr.ph.i_crit_edge

if.end.i.i177.while.body.lr.ph.i_crit_edge:       ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph.i

if.end.i.i177.fallback.i.i_crit_edge:             ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #16
  br label %fallback.i.i

fallback.i.i:                                     ; preds = %if.end.i.i177.fallback.i.i_crit_edge, %if.end137.i.i.fallback.i.i_crit_edge
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %fallback.i.i, %if.end.i.i177.while.body.lr.ph.i_crit_edge
  %storemerge.i.i = phi ptr [ %171, %fallback.i.i ], [ %188, %if.end.i.i177.while.body.lr.ph.i_crit_edge ]
  %.sink.i.i = phi i32 [ 1, %fallback.i.i ], [ 1024, %if.end.i.i177.while.body.lr.ph.i_crit_edge ]
  %189 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %storemerge.i.i, ptr %batch.i, align 4
  %190 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %.sink.i.i, ptr %172, align 4
  %size3.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end37.i192.while.body.i_crit_edge, %while.body.lr.ph.i
  %size.083.i = phi i32 [ %conv5.i.i, %while.body.lr.ph.i ], [ %sub.i190, %if.end37.i192.while.body.i_crit_edge ]
  %191 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %size3.i, align 4
  %add.i178 = add i32 %192, %170
  %shr4.i = lshr i32 %size.083.i, 12
  %call5.i = call fastcc i32 @vfio_pin_pages_remote(ptr noundef %call7.i.i.i.i48, i32 noundef %add.i178, i32 noundef %shr4.i, ptr noundef nonnull %pfn.i, i32 noundef %shr.i174, ptr noundef nonnull %batch.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i179 = icmp slt i32 %call5.i, 1
  br i1 %cmp.i179, label %if.then.i, label %if.end28.i181

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i180 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i180, label %do.end.i, label %if.then.i.while.end.i_crit_edge, !prof !101

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1501, i32 noundef 9, ptr noundef null) #14
  br label %while.end.i

if.end28.i181:                                    ; preds = %while.body.i
  %193 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %size3.i, align 4
  %add30.i = add i32 %194, %168
  %195 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pfn.i, align 4
  %197 = ptrtoint ptr %prot122.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %prot122.i.i, align 8
  %199 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pn51.i.i = load ptr, ptr %iommu_data, align 4
  %cmp.not52.i.i = icmp eq ptr %.pn51.i.i, %iommu_data
  br i1 %cmp.not52.i.i, label %if.end28.if.end37_crit_edge.i, label %for.body.lr.ph.i.i

if.end28.if.end37_crit_edge.i:                    ; preds = %if.end28.i181
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = shl i32 %call5.i, 12
  br label %if.end37.i192

for.body.lr.ph.i.i:                               ; preds = %if.end28.i181
  %shl.i.i182 = shl i32 %196, 12
  %shl3.i.i = shl i32 %call5.i, 12
  br label %for.body.i.i183

for.body.i.i183:                                  ; preds = %if.end.i70.i.for.body.i.i183_crit_edge, %for.body.lr.ph.i.i
  %.pn53.i.i = phi ptr [ %.pn51.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i185, %if.end.i70.i.for.body.i.i183_crit_edge ]
  %d.0.i.i = getelementptr i8, ptr %.pn53.i.i, i32 -4
  %200 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %d.0.i.i, align 4
  %prot4.i.i = getelementptr i8, ptr %.pn53.i.i, i32 16
  %202 = ptrtoint ptr %prot4.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %prot4.i.i, align 4
  %or.i.i = or i32 %203, %198
  %call.i68.i = call i32 @iommu_map(ptr noundef %201, i32 noundef %add30.i, i32 noundef %shl.i.i182, i32 noundef %shl3.i.i, i32 noundef %or.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i69.i, label %if.end.i70.i, label %for.cond16.preheader.i.i

for.cond16.preheader.i.i:                         ; preds = %for.body.i.i183
  %.pn47.in54.i.i = getelementptr inbounds %struct.list_head, ptr %.pn53.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %.pn47.in54.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %.pn4755.i.i = load ptr, ptr %.pn47.in54.i.i, align 4
  %cmp19.not56.i.i = icmp eq ptr %.pn4755.i.i, %iommu_data
  br i1 %cmp19.not56.i.i, label %for.cond16.preheader.i.i.if.then33.i189_crit_edge, label %for.cond16.preheader.i.i.for.body21.i.i188_crit_edge

for.cond16.preheader.i.i.for.body21.i.i188_crit_edge: ; preds = %for.cond16.preheader.i.i
  br label %for.body21.i.i188

for.cond16.preheader.i.i.if.then33.i189_crit_edge: ; preds = %for.cond16.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i189

if.end.i70.i:                                     ; preds = %for.body.i.i183
  call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1468, i32 noundef 0) #14
  %call.i.i.i184 = call i32 @__cond_resched() #14
  %205 = ptrtoint ptr %.pn53.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pn.i.i185 = load ptr, ptr %.pn53.i.i, align 4
  %cmp.not.i.i186 = icmp eq ptr %.pn.i.i185, %iommu_data
  br i1 %cmp.not.i.i186, label %if.end.i70.i.if.end37.i192_crit_edge, label %if.end.i70.i.for.body.i.i183_crit_edge

if.end.i70.i.for.body.i.i183_crit_edge:           ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i183

if.end.i70.i.if.end37.i192_crit_edge:             ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i192

for.body21.i.i188:                                ; preds = %for.body21.i.i188.for.body21.i.i188_crit_edge, %for.cond16.preheader.i.i.for.body21.i.i188_crit_edge
  %.pn4757.i.i = phi ptr [ %.pn47.i.i, %for.body21.i.i188.for.body21.i.i188_crit_edge ], [ %.pn4755.i.i, %for.cond16.preheader.i.i.for.body21.i.i188_crit_edge ]
  %d.1.i.i = getelementptr i8, ptr %.pn4757.i.i, i32 -4
  %206 = ptrtoint ptr %d.1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %d.1.i.i, align 4
  %call24.i.i = call i32 @iommu_unmap(ptr noundef %207, i32 noundef %add30.i, i32 noundef %shl3.i.i) #14
  call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1476, i32 noundef 0) #14
  %call.i48.i.i = call i32 @__cond_resched() #14
  %.pn47.in.i.i = getelementptr inbounds %struct.list_head, ptr %.pn4757.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %.pn47.in.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pn47.i.i = load ptr, ptr %.pn47.in.i.i, align 4
  %cmp19.not.i.i187 = icmp eq ptr %.pn47.i.i, %iommu_data
  br i1 %cmp19.not.i.i187, label %for.body21.i.i188.if.then33.i189_crit_edge, label %for.body21.i.i188.for.body21.i.i188_crit_edge

for.body21.i.i188.for.body21.i.i188_crit_edge:    ; preds = %for.body21.i.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21.i.i188

for.body21.i.i188.if.then33.i189_crit_edge:       ; preds = %for.body21.i.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i189

if.then33.i189:                                   ; preds = %for.body21.i.i188.if.then33.i189_crit_edge, %for.cond16.preheader.i.i.if.then33.i189_crit_edge
  %209 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %size3.i, align 4
  %add35.i = add i32 %210, %168
  %call36.i = call fastcc i32 @vfio_unpin_pages_remote(ptr noundef %call7.i.i.i.i48, i32 noundef %add35.i, i32 noundef %196, i32 noundef %call5.i, i1 noundef zeroext true) #14
  call fastcc void @vfio_batch_unpin(ptr noundef nonnull %batch.i, ptr noundef %call7.i.i.i.i48) #14
  br label %while.end.i

if.end37.i192:                                    ; preds = %if.end.i70.i.if.end37.i192_crit_edge, %if.end28.if.end37_crit_edge.i
  %shl.pre-phi.i = phi i32 [ %.pre.i, %if.end28.if.end37_crit_edge.i ], [ %shl3.i.i, %if.end.i70.i.if.end37.i192_crit_edge ]
  %sub.i190 = sub i32 %size.083.i, %shl.pre-phi.i
  %211 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %size3.i, align 4
  %add40.i = add i32 %212, %shl.pre-phi.i
  store i32 %add40.i, ptr %size3.i, align 4
  %tobool.not.i191 = icmp eq i32 %sub.i190, 0
  br i1 %tobool.not.i191, label %if.end37.i192.while.end.i_crit_edge, label %if.end37.i192.while.body.i_crit_edge

if.end37.i192.while.body.i_crit_edge:             ; preds = %if.end37.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end37.i192.while.end.i_crit_edge:              ; preds = %if.end37.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end37.i192.while.end.i_crit_edge, %if.then33.i189, %do.end.i, %if.then.i.while.end.i_crit_edge
  %ret.1.ph.i193 = phi i32 [ %call5.i, %if.then.i.while.end.i_crit_edge ], [ 0, %do.end.i ], [ %call.i68.i, %if.then33.i189 ], [ 0, %if.end37.i192.while.end.i_crit_edge ]
  %213 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr.i = load i32, ptr %172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %.pr.i)
  %cmp.i.i195 = icmp eq i32 %.pr.i, 1024
  br i1 %cmp.i.i195, label %if.then.i.i196, label %while.end.i.vfio_batch_fini.exit.i_crit_edge

while.end.i.vfio_batch_fini.exit.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_batch_fini.exit.i

if.then.i.i196:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %214 = ptrtoint ptr %batch.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %batch.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @free_pages(i32 noundef %216, i32 noundef 0) #14
  br label %vfio_batch_fini.exit.i

vfio_batch_fini.exit.i:                           ; preds = %if.then.i.i196, %while.end.i.vfio_batch_fini.exit.i_crit_edge
  %iommu_mapped.i = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 5
  %217 = ptrtoint ptr %iommu_mapped.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %iommu_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.i193)
  %tobool41.not.i = icmp eq i32 %ret.1.ph.i193, 0
  br i1 %tobool41.not.i, label %vfio_pin_map_dma.exit.thread, label %vfio_pin_map_dma.exit

vfio_pin_map_dma.exit.thread:                     ; preds = %vfio_batch_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %batch.i) #14
  br label %land.lhs.true139.i.i

vfio_pin_map_dma.exit:                            ; preds = %vfio_batch_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef %call7.i.i.i.i48) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %batch.i) #14
  br label %out_unlock.i.i

land.lhs.true139.i.i:                             ; preds = %vfio_pin_map_dma.exit.thread, %if.end137.thread.i.i
  %dirty_page_tracking.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %218 = ptrtoint ptr %dirty_page_tracking.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %dirty_page_tracking.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool140.not.i.i = icmp eq i8 %219, 0
  br i1 %tobool140.not.i.i, label %land.lhs.true139.i.i.out_unlock.i.i_crit_edge, label %if.then142.i.i

land.lhs.true139.i.i.out_unlock.i.i_crit_edge:    ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.then142.i.i:                                   ; preds = %land.lhs.true139.i.i
  %size.i162 = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 3
  %220 = ptrtoint ptr %size.i162 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %size.i162, align 4
  %div.i263 = lshr i32 %221, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i263)
  %cmp.i163 = icmp slt i32 %div.i263, 0
  br i1 %cmp.i163, label %if.then142.i.i.if.then145.i.i_crit_edge, label %if.end.i169

if.then142.i.i.if.then145.i.i_crit_edge:          ; preds = %if.then142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then145.i.i

if.end.i169:                                      ; preds = %if.then142.i.i
  %conv.i164 = zext i32 %div.i263 to i64
  %add.i165 = add nuw nsw i64 %conv.i164, 63
  %and.i = lshr i64 %add.i165, 3
  %222 = trunc i64 %and.i to i32
  %223 = and i32 %222, 1073741816
  %conv4.i = add nuw nsw i32 %223, 8
  %call.i.i.i166 = call noalias ptr @kvmalloc_node(i32 noundef %conv4.i, i32 noundef 3520, i32 noundef -1) #19
  %bitmap.i167 = getelementptr inbounds %struct.vfio_dma, ptr %call7.i.i.i.i48, i32 0, i32 10
  %224 = ptrtoint ptr %bitmap.i167 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i.i.i166, ptr %bitmap.i167, align 8
  %tobool.not.i168 = icmp eq ptr %call.i.i.i166, null
  br i1 %tobool.not.i168, label %if.end.i169.if.then145.i.i_crit_edge, label %if.end.i169.out_unlock.i.i_crit_edge

if.end.i169.out_unlock.i.i_crit_edge:             ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i.i

if.end.i169.if.then145.i.i_crit_edge:             ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then145.i.i

if.then145.i.i:                                   ; preds = %if.end.i169.if.then145.i.i_crit_edge, %if.then142.i.i.if.then145.i.i_crit_edge
  %retval.0.i170.ph = phi i32 [ -22, %if.then142.i.i.if.then145.i.i_crit_edge ], [ -12, %if.end.i169.if.then145.i.i_crit_edge ]
  call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef nonnull %call7.i.i.i.i48) #14
  br label %out_unlock.i.i

out_unlock.i.i:                                   ; preds = %if.then145.i.i, %if.end.i169.out_unlock.i.i_crit_edge, %land.lhs.true139.i.i.out_unlock.i.i_crit_edge, %vfio_pin_map_dma.exit, %if.end113.i.i.out_unlock.i.i_crit_edge, %vfio_iommu_iova_dma_valid.exit.i.i.out_unlock.i.i_crit_edge, %if.end105.i.i.out_unlock.i.i_crit_edge, %if.else101.i.i.out_unlock.i.i_crit_edge, %if.else96.i.i, %lor.lhs.false91.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false87.i.i.out_unlock.i.i_crit_edge, %if.else.i.i.out_unlock.i.i_crit_edge, %if.then83.i.i.out_unlock.i.i_crit_edge, %if.end70.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false63.i.i.out_unlock.i.i_crit_edge, %if.end55.i.i.out_unlock.i.i_crit_edge
  %ret.1.i.i = phi i32 [ 0, %if.else96.i.i ], [ %ret.1.ph.i193, %vfio_pin_map_dma.exit ], [ %retval.0.i170.ph, %if.then145.i.i ], [ 0, %land.lhs.true139.i.i.out_unlock.i.i_crit_edge ], [ -22, %lor.lhs.false63.i.i.out_unlock.i.i_crit_edge ], [ -22, %if.end55.i.i.out_unlock.i.i_crit_edge ], [ -22, %if.end70.i.i.out_unlock.i.i_crit_edge ], [ -2, %if.then83.i.i.out_unlock.i.i_crit_edge ], [ -22, %lor.lhs.false91.i.i.out_unlock.i.i_crit_edge ], [ -22, %lor.lhs.false87.i.i.out_unlock.i.i_crit_edge ], [ -22, %if.else.i.i.out_unlock.i.i_crit_edge ], [ -17, %if.else101.i.i.out_unlock.i.i_crit_edge ], [ -28, %if.end105.i.i.out_unlock.i.i_crit_edge ], [ -22, %vfio_iommu_iova_dma_valid.exit.i.i.out_unlock.i.i_crit_edge ], [ -12, %if.end113.i.i.out_unlock.i.i_crit_edge ], [ 0, %if.end.i169.out_unlock.i.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i43) #14
  br label %vfio_iommu_type1_map_dma.exit

vfio_iommu_type1_map_dma.exit:                    ; preds = %out_unlock.i.i, %if.end.i.i42.vfio_iommu_type1_map_dma.exit_crit_edge, %if.end3.i.vfio_iommu_type1_map_dma.exit_crit_edge, %lor.lhs.false.i.vfio_iommu_type1_map_dma.exit_crit_edge, %if.end.i38.vfio_iommu_type1_map_dma.exit_crit_edge, %if.then11.i.i.i36
  %retval.0.i49 = phi i32 [ -22, %lor.lhs.false.i.vfio_iommu_type1_map_dma.exit_crit_edge ], [ -22, %if.end.i38.vfio_iommu_type1_map_dma.exit_crit_edge ], [ %ret.1.i.i, %out_unlock.i.i ], [ -22, %if.end3.i.vfio_iommu_type1_map_dma.exit_crit_edge ], [ -22, %if.end.i.i42.vfio_iommu_type1_map_dma.exit_crit_edge ], [ -14, %if.then11.i.i.i36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map.i) #14
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unmap.i) #14
  %225 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %unmap.i, i32 0, i32 1
  %226 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %unmap.i, i32 0, i32 2
  %227 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %unmap.i, i32 0, i32 3
  %228 = call ptr @memset(ptr %unmap.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bitmap.i) #14
  %229 = call ptr @memset(ptr %bitmap.i, i32 0, i32 24)
  %230 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i.i50 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i50, label %sw.bb5.if.then11.i.i.i64_crit_edge, label %land.lhs.true.i.i.i53

sw.bb5.if.then11.i.i.i64_crit_edge:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i64

land.lhs.true.i.i.i53:                            ; preds = %sw.bb5
  %231 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %230, i32 24, i32 -1226833920) #18
  %asmresult.i.i.i51 = extractvalue { i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i51)
  %cmp.i6.i.i52 = icmp eq i32 %asmresult.i.i.i51, 0
  br i1 %cmp.i6.i.i52, label %if.end.i.i.i61, label %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, !prof !93

land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge: ; preds = %land.lhs.true.i.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i64

if.end.i.i.i61:                                   ; preds = %land.lhs.true.i.i.i53
  %call.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %unmap.i, i32 noundef 24) #14
  %232 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i.i55 = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i.i.i.i.i55 to ptr
  %cpu_domain.i.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 4
  %234 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i56) #8, !srcloc !94
  %and.i.i.i.i.i57 = and i32 %234, -13
  %or.i.i.i.i.i58 = or i32 %and.i.i.i.i.i57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i58) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i.i59 = call i32 @arm_copy_from_user(ptr noundef nonnull %unmap.i, ptr noundef %230, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %234) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i59)
  %tobool4.not.i.i.i60 = icmp eq i32 %call1.i.i.i.i59, 0
  br i1 %tobool4.not.i.i.i60, label %if.end.i66, label %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, !prof !93

if.end.i.i.i61.if.then11.i.i.i64_crit_edge:       ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i64

if.then11.i.i.i64:                                ; preds = %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, %sw.bb5.if.then11.i.i.i64_crit_edge
  %res.0.i.i98.i = phi i32 [ %call1.i.i.i.i59, %if.end.i.i.i61.if.then11.i.i.i64_crit_edge ], [ 24, %sw.bb5.if.then11.i.i.i64_crit_edge ], [ 24, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge ]
  %sub.i.i.i62 = sub i32 24, %res.0.i.i98.i
  %add.ptr.i.i.i63 = getelementptr i8, ptr %unmap.i, i32 %sub.i.i.i62
  %235 = call ptr @memset(ptr %add.ptr.i.i.i63, i32 0, i32 %res.0.i.i98.i)
  br label %vfio_iommu_type1_unmap_dma.exit

if.end.i66:                                       ; preds = %if.end.i.i.i61
  %236 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %unmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %237)
  %cmp.i65 = icmp ult i32 %237, 24
  br i1 %cmp.i65, label %if.end.i66.vfio_iommu_type1_unmap_dma.exit_crit_edge, label %lor.lhs.false.i68

if.end.i66.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

lor.lhs.false.i68:                                ; preds = %if.end.i66
  %238 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %239)
  %tobool1.not.i67 = icmp ult i32 %239, 8
  br i1 %tobool1.not.i67, label %if.end3.i69, label %lor.lhs.false.i68.vfio_iommu_type1_unmap_dma.exit_crit_edge

lor.lhs.false.i68.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %lor.lhs.false.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end3.i69:                                      ; preds = %lor.lhs.false.i68
  %and5.i = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %and8.i = and i32 %239, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond.i = or i1 %tobool6.not.i, %tobool9.not.i
  br i1 %or.cond.i, label %if.end11.i70, label %if.end3.i69.vfio_iommu_type1_unmap_dma.exit_crit_edge

if.end3.i69.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.end3.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end11.i70:                                     ; preds = %if.end3.i69
  br i1 %tobool6.not.i, label %if.end11.i70.if.end36.i_crit_edge, label %if.then15.i

if.end11.i70.if.end36.i_crit_edge:                ; preds = %if.end11.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then15.i:                                      ; preds = %if.end11.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %237)
  %cmp17.i = icmp ult i32 %237, 48
  br i1 %cmp17.i, label %if.then15.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, label %if.end19.i71

if.then15.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end19.i71:                                     ; preds = %if.then15.i
  %add20.i = add i32 %arg, 24
  %240 = inttoptr i32 %add20.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i62.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i62.i, label %if.end19.i71.if.then11.i.i78.i_crit_edge, label %land.lhs.true.i.i65.i

if.end19.i71.if.then11.i.i78.i_crit_edge:         ; preds = %if.end19.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i78.i

land.lhs.true.i.i65.i:                            ; preds = %if.end19.i71
  %241 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %240, i32 24, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i63.i = extractvalue { i32, i32 } %241, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i63.i)
  %cmp.i6.i64.i = icmp eq i32 %asmresult.i.i63.i, 0
  br i1 %cmp.i6.i64.i, label %if.end.i.i75.i, label %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge, !prof !93

land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge: ; preds = %land.lhs.true.i.i65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i78.i

if.end.i.i75.i:                                   ; preds = %land.lhs.true.i.i65.i
  %call.i.i.i66.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bitmap.i, i32 noundef 24) #14
  %242 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i67.i = and i32 %242, -16384
  %243 = inttoptr i32 %and.i.i.i.i.i.i67.i to ptr
  %cpu_domain.i.i.i.i.i68.i = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 4
  %244 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i68.i) #8, !srcloc !94
  %and.i.i.i.i69.i = and i32 %244, -13
  %or.i.i.i.i70.i = or i32 %and.i.i.i.i69.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i70.i) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i71.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bitmap.i, ptr noundef %240, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i71.i)
  %tobool4.not.i.i74.i = icmp eq i32 %call1.i.i.i71.i, 0
  br i1 %tobool4.not.i.i74.i, label %if.end24.i, label %if.end.i.i75.i.if.then11.i.i78.i_crit_edge, !prof !93

if.end.i.i75.i.if.then11.i.i78.i_crit_edge:       ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i78.i

if.then11.i.i78.i:                                ; preds = %if.end.i.i75.i.if.then11.i.i78.i_crit_edge, %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge, %if.end19.i71.if.then11.i.i78.i_crit_edge
  %res.0.i.i73103.i = phi i32 [ %call1.i.i.i71.i, %if.end.i.i75.i.if.then11.i.i78.i_crit_edge ], [ 24, %if.end19.i71.if.then11.i.i78.i_crit_edge ], [ 24, %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge ]
  %sub.i.i76.i = sub i32 24, %res.0.i.i73103.i
  %add.ptr.i.i77.i = getelementptr i8, ptr %bitmap.i, i32 %sub.i.i76.i
  %245 = call ptr @memset(ptr %add.ptr.i.i77.i, i32 0, i32 %res.0.i.i73103.i)
  br label %vfio_iommu_type1_unmap_dma.exit

if.end24.i:                                       ; preds = %if.end.i.i75.i
  %data.i = getelementptr inbounds %struct.vfio_bitmap, ptr %bitmap.i, i32 0, i32 2
  %246 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data.i, align 8
  %size.i72 = getelementptr inbounds %struct.vfio_bitmap, ptr %bitmap.i, i32 0, i32 1
  %248 = ptrtoint ptr %size.i72 to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %size.i72, align 8
  %250 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %247, i64 %249, i32 -1226833920) #18, !srcloc !103
  %asmresult.i = extractvalue { i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp26.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp26.i, label %if.end28.i, label %if.end24.i.vfio_iommu_type1_unmap_dma.exit_crit_edge

if.end24.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end28.i:                                       ; preds = %if.end24.i
  %251 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %bitmap.i, align 8
  %conv.i = trunc i64 %252 to i32
  %253 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #14, !range !97
  %254 = ptrtoint ptr %227 to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %227, align 8
  %sh_prom.i = zext i32 %253 to i64
  %shr.i = lshr i64 %255, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool.not.i.i73 = icmp eq i64 %shr.i, 0
  %256 = add i64 %249, -268435457
  call void @__sanitizer_cov_trace_const_cmp8(i64 -268435456, i64 %256)
  %257 = icmp ult i64 %256, -268435456
  %258 = or i1 %257, %tobool.not.i.i73
  br i1 %258, label %if.end28.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, label %lor.lhs.false3.i.i

if.end28.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

lor.lhs.false3.i.i:                               ; preds = %if.end28.i
  %add.i.i74 = add i64 %shr.i, 63
  %and.i.i75 = lshr i64 %add.i.i74, 3
  %div8.i.i = and i64 %and.i.i75, 2305843009213693944
  call void @__sanitizer_cov_trace_cmp8(i64 %div8.i.i, i64 %249)
  %cmp4.i.i = icmp ugt i64 %div8.i.i, %249
  br i1 %cmp4.i.i, label %lor.lhs.false3.i.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, label %lor.lhs.false3.i.i.if.end36.i_crit_edge

lor.lhs.false3.i.i.if.end36.i_crit_edge:          ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

lor.lhs.false3.i.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end36.i:                                       ; preds = %lor.lhs.false3.i.i.if.end36.i_crit_edge, %if.end11.i70.if.end36.i_crit_edge
  %259 = ptrtoint ptr %226 to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %226, align 8
  %conv.i.i76 = trunc i64 %260 to i32
  %261 = ptrtoint ptr %227 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %227, align 8
  %263 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %225, align 4
  %and.i91.i = and i32 %264, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.not.i92.i = icmp eq i32 %and.i91.i, 0
  %and4.i.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %lock.i.i77 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i.i77, i32 noundef 0) #14
  %pgsize_bitmap.i.i78 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %265 = ptrtoint ptr %pgsize_bitmap.i.i78 to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %pgsize_bitmap.i.i78, align 8
  %conv7.i.i = trunc i64 %266 to i32
  %267 = call i32 @llvm.cttz.i32(i32 %conv7.i.i, i1 false) #14, !range !97
  %shl.i.i79 = shl nuw i32 1, %267
  %sub.i.i80 = add i32 %shl.i.i79, -1
  %and8.i.i = and i32 %sub.i.i80, %conv.i.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i81, label %if.end36.i.vfio_dma_do_unmap.exit.i_crit_edge

if.end36.i.vfio_dma_do_unmap.exit.i_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end.i.i81:                                     ; preds = %if.end36.i
  br i1 %tobool.not.i92.i, label %if.else.i.i83, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i76)
  %tobool12.not.i.i = icmp eq i32 %conv.i.i76, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %262)
  %tobool13.not.i.i = icmp eq i64 %262, 0
  %or.cond.i.i82 = select i1 %tobool12.not.i.i, i1 %tobool13.not.i.i, i1 false
  br i1 %or.cond.i.i82, label %if.then11.i.i.if.end32.i.i_crit_edge, label %if.then11.i.i.vfio_dma_do_unmap.exit.i_crit_edge

if.then11.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.then11.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.else.i.i83:                                    ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %262)
  %tobool16.not.i.i = icmp eq i64 %262, 0
  br i1 %tobool16.not.i.i, label %if.else.i.i83.vfio_dma_do_unmap.exit.i_crit_edge, label %lor.lhs.false17.i.i

if.else.i.i83.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.else.i.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

lor.lhs.false17.i.i:                              ; preds = %if.else.i.i83
  %conv19.i.i = zext i32 %sub.i.i80 to i64
  %and20.i.i = and i64 %262, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20.i.i)
  %tobool21.not.i.i = icmp eq i64 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %lor.lhs.false17.i.i.vfio_dma_do_unmap.exit.i_crit_edge

lor.lhs.false17.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %lor.lhs.false17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

lor.lhs.false22.i.i:                              ; preds = %lor.lhs.false17.i.i
  %conv23.i.i84 = and i64 %260, 4294967295
  %268 = sub i64 0, %262
  call void @__sanitizer_cov_trace_cmp8(i64 %conv23.i.i84, i64 %268)
  %cmp.i.i = icmp ugt i64 %conv23.i.i84, %268
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %262)
  %cmp28.i.i = icmp ugt i64 %262, 4294967295
  %or.cond276.i.i = or i1 %cmp.i.i, %cmp28.i.i
  br i1 %or.cond276.i.i, label %lor.lhs.false22.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %lor.lhs.false22.i.i.if.end32.i.i_crit_edge

lor.lhs.false22.i.i.if.end32.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

lor.lhs.false22.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end32.i.i:                                     ; preds = %lor.lhs.false22.i.i.if.end32.i.i_crit_edge, %if.then11.i.i.if.end32.i.i_crit_edge
  %size.0.i.i = phi i64 [ -1, %if.then11.i.i.if.end32.i.i_crit_edge ], [ %262, %lor.lhs.false22.i.i.if.end32.i.i_crit_edge ]
  %269 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %225, align 4
  %and34.i.i = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end32.i.i.if.end43.i.i_crit_edge, label %land.lhs.true.i.i

if.end32.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i.i

land.lhs.true.i.i:                                ; preds = %if.end32.i.i
  %dirty_page_tracking.i.i85 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %271 = ptrtoint ptr %dirty_page_tracking.i.i85 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %dirty_page_tracking.i.i85, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool36.not.i.i = icmp eq i8 %272, 0
  br i1 %tobool36.not.i.i, label %land.lhs.true.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %lor.lhs.false37.i.i

land.lhs.true.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

lor.lhs.false37.i.i:                              ; preds = %land.lhs.true.i.i
  %273 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %bitmap.i, align 8
  %conv39.i.i = zext i32 %shl.i.i79 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %274, i64 %conv39.i.i)
  %cmp40.not.i.i = icmp eq i64 %274, %conv39.i.i
  br i1 %cmp40.not.i.i, label %lor.lhs.false37.i.i.if.end43.i.i_crit_edge, label %lor.lhs.false37.i.i.vfio_dma_do_unmap.exit.i_crit_edge

lor.lhs.false37.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

lor.lhs.false37.i.i.if.end43.i.i_crit_edge:       ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %lor.lhs.false37.i.i.if.end43.i.i_crit_edge, %if.end32.i.i.if.end43.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i80)
  %tobool46.not.i.i = icmp ult i32 %sub.i.i80, 4096
  br i1 %tobool46.not.i.i, label %if.end43.i.i.if.end61.i.i_crit_edge, label %do.end.i.i86, !prof !93

if.end43.i.i.if.end61.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i.i

do.end.i.i86:                                     ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1327, i32 noundef 9, ptr noundef null) #14
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %do.end.i.i86, %if.end43.i.i.if.end61.i.i_crit_edge
  %v2.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 10
  %tobool.not.not.i.i = xor i1 %tobool.not.i92.i, true
  %dma_list.i.i.i87 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %add.i.i.i = add i32 %conv.i.i76, 1
  %conv81.i.i = and i64 %260, 4294967295
  %add82.i.i = add nsw i64 %size.0.i.i, %conv81.i.i
  %275 = trunc i64 %add82.i.i to i32
  %conv84.i.i = add i32 %275, -1
  %vaddr_invalid_count138.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 6
  %data.i.i = getelementptr inbounds %struct.vfio_bitmap, ptr %bitmap.i, i32 0, i32 2
  %276 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %nb_unmap.i.i, i32 0, i32 2
  %277 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %nb_unmap.i.i, i32 0, i32 3
  %notifier.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4
  br label %again.i.i

again.i.i:                                        ; preds = %if.end174.i.i, %if.end61.i.i
  %retries.0.i.i = phi i32 [ 0, %if.end61.i.i ], [ %retries.1.i.i, %if.end174.i.i ]
  %ret.0.i.i88 = phi i32 [ -22, %if.end61.i.i ], [ 0, %if.end174.i.i ]
  %unmapped.0.i.i = phi i32 [ 0, %if.end61.i.i ], [ %unmapped.1340.i.i, %if.end174.i.i ]
  %dma_last.0.i.i = phi ptr [ null, %if.end61.i.i ], [ %dma_last.1.i.i, %if.end174.i.i ]
  %278 = ptrtoint ptr %v2.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %v2.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool68.not.i.i89 = icmp eq i8 %279, 0
  %brmerge.i.i90 = select i1 %tobool68.not.i.i89, i1 true, i1 %tobool.not.not.i.i
  br i1 %brmerge.i.i90, label %again.i.i.if.end98.i.i_crit_edge, label %if.then72.i.i

again.i.i.if.end98.i.i_crit_edge:                 ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i.i

if.then72.i.i:                                    ; preds = %again.i.i
  %280 = ptrtoint ptr %dma_list.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %280)
  %node.019.i.i.i91 = load ptr, ptr %dma_list.i.i.i87, align 4
  %tobool.not20.i.i.i92 = icmp eq ptr %node.019.i.i.i91, null
  br i1 %tobool.not20.i.i.i92, label %if.then72.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %if.then72.i.i.while.body.i.i.i96_crit_edge

if.then72.i.i.while.body.i.i.i96_crit_edge:       ; preds = %if.then72.i.i
  br label %while.body.i.i.i96

if.then72.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

while.body.i.i.i96:                               ; preds = %cleanup.i.i.i107.while.body.i.i.i96_crit_edge, %if.then72.i.i.while.body.i.i.i96_crit_edge
  %node.021.i.i.i93 = phi ptr [ %node.0.i.i.i105, %cleanup.i.i.i107.while.body.i.i.i96_crit_edge ], [ %node.019.i.i.i91, %if.then72.i.i.while.body.i.i.i96_crit_edge ]
  %iova.i.i.i94 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i93, i32 0, i32 1
  %281 = ptrtoint ptr %iova.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %iova.i.i.i94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %282)
  %cmp.not.i.i.i95 = icmp ugt i32 %add.i.i.i, %282
  br i1 %cmp.not.i.i.i95, label %if.else.i.i.i101, label %if.then.i.i93.i

if.then.i.i93.i:                                  ; preds = %while.body.i.i.i96
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i.i97 = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i93, i32 0, i32 2
  br label %cleanup.i.i.i107

if.else.i.i.i101:                                 ; preds = %while.body.i.i.i96
  %size2.i.i.i98 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i93, i32 0, i32 3
  %283 = ptrtoint ptr %size2.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %size2.i.i.i98, align 4
  %add3.i.i.i99 = add i32 %284, %282
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.i99, i32 %conv.i.i76)
  %cmp4.not.i.i.i100 = icmp ugt i32 %add3.i.i.i99, %conv.i.i76
  br i1 %cmp4.not.i.i.i100, label %land.lhs.true75.i.i, label %if.then5.i.i.i103

if.then5.i.i.i103:                                ; preds = %if.else.i.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i.i102 = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i93, i32 0, i32 1
  br label %cleanup.i.i.i107

cleanup.i.i.i107:                                 ; preds = %if.then5.i.i.i103, %if.then.i.i93.i
  %node.1.in.i.i.i104 = phi ptr [ %rb_left.i.i.i97, %if.then.i.i93.i ], [ %rb_right.i.i.i102, %if.then5.i.i.i103 ]
  %285 = ptrtoint ptr %node.1.in.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %285)
  %node.0.i.i.i105 = load ptr, ptr %node.1.in.i.i.i104, align 4
  %tobool.not.i.i.i106 = icmp eq ptr %node.0.i.i.i105, null
  br i1 %tobool.not.i.i.i106, label %cleanup.i.i.i107.while.body.i285.i.i.preheader_crit_edge, label %cleanup.i.i.i107.while.body.i.i.i96_crit_edge

cleanup.i.i.i107.while.body.i.i.i96_crit_edge:    ; preds = %cleanup.i.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i96

cleanup.i.i.i107.while.body.i285.i.i.preheader_crit_edge: ; preds = %cleanup.i.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i285.i.i.preheader

land.lhs.true75.i.i:                              ; preds = %if.else.i.i.i101
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %conv.i.i76)
  %cmp77.not.i.i = icmp eq i32 %282, %conv.i.i76
  br i1 %cmp77.not.i.i, label %land.lhs.true75.i.i.while.body.i285.i.i.preheader_crit_edge, label %land.lhs.true75.i.i.vfio_dma_do_unmap.exit.i_crit_edge

land.lhs.true75.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %land.lhs.true75.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

land.lhs.true75.i.i.while.body.i285.i.i.preheader_crit_edge: ; preds = %land.lhs.true75.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i285.i.i.preheader

while.body.i285.i.i.preheader:                    ; preds = %land.lhs.true75.i.i.while.body.i285.i.i.preheader_crit_edge, %cleanup.i.i.i107.while.body.i285.i.i.preheader_crit_edge
  br label %while.body.i285.i.i

while.body.i285.i.i:                              ; preds = %cleanup.i297.i.i.while.body.i285.i.i_crit_edge, %while.body.i285.i.i.preheader
  %node.021.i282.i.i = phi ptr [ %node.0.i295.i.i, %cleanup.i297.i.i.while.body.i285.i.i_crit_edge ], [ %node.019.i.i.i91, %while.body.i285.i.i.preheader ]
  %iova.i283.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i282.i.i, i32 0, i32 1
  %286 = ptrtoint ptr %iova.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %iova.i283.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv84.i.i, i32 %287)
  %cmp.not.i284.i.i = icmp ugt i32 %conv84.i.i, %287
  br i1 %cmp.not.i284.i.i, label %if.else.i291.i.i, label %if.then.i287.i.i

if.then.i287.i.i:                                 ; preds = %while.body.i285.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i286.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i282.i.i, i32 0, i32 2
  br label %cleanup.i297.i.i

if.else.i291.i.i:                                 ; preds = %while.body.i285.i.i
  %size2.i288.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i282.i.i, i32 0, i32 3
  %288 = ptrtoint ptr %size2.i288.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %size2.i288.i.i, align 4
  %add3.i289.i.i = add i32 %289, %287
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i289.i.i, i32 %conv84.i.i)
  %cmp4.not.i290.i.i = icmp ugt i32 %add3.i289.i.i, %conv84.i.i
  br i1 %cmp4.not.i290.i.i, label %land.lhs.true87.i.i, label %if.then5.i293.i.i

if.then5.i293.i.i:                                ; preds = %if.else.i291.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i292.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i282.i.i, i32 0, i32 1
  br label %cleanup.i297.i.i

cleanup.i297.i.i:                                 ; preds = %if.then5.i293.i.i, %if.then.i287.i.i
  %node.1.in.i294.i.i = phi ptr [ %rb_left.i286.i.i, %if.then.i287.i.i ], [ %rb_right.i292.i.i, %if.then5.i293.i.i ]
  %290 = ptrtoint ptr %node.1.in.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %node.0.i295.i.i = load ptr, ptr %node.1.in.i294.i.i, align 4
  %tobool.not.i296.i.i = icmp eq ptr %node.0.i295.i.i, null
  br i1 %tobool.not.i296.i.i, label %cleanup.i297.i.i.if.end98.i.i_crit_edge, label %cleanup.i297.i.i.while.body.i285.i.i_crit_edge

cleanup.i297.i.i.while.body.i285.i.i_crit_edge:   ; preds = %cleanup.i297.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i285.i.i

cleanup.i297.i.i.if.end98.i.i_crit_edge:          ; preds = %cleanup.i297.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i.i

land.lhs.true87.i.i:                              ; preds = %if.else.i291.i.i
  %conv91.i.i = zext i32 %add3.i289.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add82.i.i, i64 %conv91.i.i)
  %cmp94.not.i.i = icmp eq i64 %add82.i.i, %conv91.i.i
  br i1 %cmp94.not.i.i, label %land.lhs.true87.i.i.if.end98.i.i_crit_edge, label %land.lhs.true87.i.i.vfio_dma_do_unmap.exit.i_crit_edge

land.lhs.true87.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

land.lhs.true87.i.i.if.end98.i.i_crit_edge:       ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %land.lhs.true87.i.i.if.end98.i.i_crit_edge, %cleanup.i297.i.i.if.end98.i.i_crit_edge, %again.i.i.if.end98.i.i_crit_edge
  %291 = ptrtoint ptr %dma_list.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %291)
  %node.043.i.pr.i.i = load ptr, ptr %dma_list.i.i.i87, align 4
  %tobool.not44.i.i.i = icmp eq ptr %node.043.i.pr.i.i, null
  br i1 %tobool.not44.i.i.i, label %if.end98.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %if.end98.i.i.while.body.i303.i.i_crit_edge

if.end98.i.i.while.body.i303.i.i_crit_edge:       ; preds = %if.end98.i.i
  br label %while.body.i303.i.i

if.end98.i.i.vfio_dma_do_unmap.exit.i_crit_edge:  ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

while.body.i303.i.i:                              ; preds = %cleanup.i311.i.i.while.body.i303.i.i_crit_edge, %if.end98.i.i.while.body.i303.i.i_crit_edge
  %node.047.i.i.i = phi ptr [ %node.0.i309.i.i, %cleanup.i311.i.i.while.body.i303.i.i_crit_edge ], [ %node.043.i.pr.i.i, %if.end98.i.i.while.body.i303.i.i_crit_edge ]
  %res.046.i.i.i = phi ptr [ %res.1.i.i.i, %cleanup.i311.i.i.while.body.i303.i.i_crit_edge ], [ null, %if.end98.i.i.while.body.i303.i.i_crit_edge ]
  %dma_res.045.i.i.i = phi ptr [ %dma_res.1.i.i.i, %cleanup.i311.i.i.while.body.i303.i.i_crit_edge ], [ null, %if.end98.i.i.while.body.i303.i.i_crit_edge ]
  %iova.i301.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.047.i.i.i, i32 0, i32 1
  %292 = ptrtoint ptr %iova.i301.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %iova.i301.i.i, align 4
  %size1.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.047.i.i.i, i32 0, i32 3
  %294 = ptrtoint ptr %size1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %size1.i.i.i, align 4
  %add.i302.i.i = add i32 %295, %293
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i302.i.i, i32 %conv.i.i76)
  %cmp.i.i94.i = icmp ugt i32 %add.i302.i.i, %conv.i.i76
  br i1 %cmp.i.i94.i, label %if.then.i304.i.i, label %if.else.i307.i.i

if.then.i304.i.i:                                 ; preds = %while.body.i303.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %293, i32 %conv.i.i76)
  %cmp3.not.i.i.i = icmp ugt i32 %293, %conv.i.i76
  br i1 %cmp3.not.i.i.i, label %if.end.i.i95.i, label %if.then.i304.i.i.land.lhs.true8.i.i.i_crit_edge

if.then.i304.i.i.land.lhs.true8.i.i.i_crit_edge:  ; preds = %if.then.i304.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true8.i.i.i

if.end.i.i95.i:                                   ; preds = %if.then.i304.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i305.i.i = getelementptr inbounds %struct.rb_node, ptr %node.047.i.i.i, i32 0, i32 2
  br label %cleanup.i311.i.i

if.else.i307.i.i:                                 ; preds = %while.body.i303.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i306.i.i = getelementptr inbounds %struct.rb_node, ptr %node.047.i.i.i, i32 0, i32 1
  br label %cleanup.i311.i.i

cleanup.i311.i.i:                                 ; preds = %if.else.i307.i.i, %if.end.i.i95.i
  %dma_res.1.i.i.i = phi ptr [ %node.047.i.i.i, %if.end.i.i95.i ], [ %dma_res.045.i.i.i, %if.else.i307.i.i ]
  %node.1.in.i308.i.i = phi ptr [ %rb_left.i305.i.i, %if.end.i.i95.i ], [ %rb_right.i306.i.i, %if.else.i307.i.i ]
  %res.1.i.i.i = phi ptr [ %node.047.i.i.i, %if.end.i.i95.i ], [ %res.046.i.i.i, %if.else.i307.i.i ]
  %296 = ptrtoint ptr %node.1.in.i308.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %node.0.i309.i.i = load ptr, ptr %node.1.in.i308.i.i, align 4
  %tobool.not.i310.i.i = icmp eq ptr %node.0.i309.i.i, null
  br i1 %tobool.not.i310.i.i, label %while.end.i.i.i, label %cleanup.i311.i.i.while.body.i303.i.i_crit_edge

cleanup.i311.i.i.while.body.i303.i.i_crit_edge:   ; preds = %cleanup.i311.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i303.i.i

while.end.i.i.i:                                  ; preds = %cleanup.i311.i.i
  %tobool6.not.i.i.i = icmp eq ptr %res.1.i.i.i, null
  br i1 %tobool6.not.i.i.i, label %while.end.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %while.end.i.i.i.land.lhs.true8.i.i.i_crit_edge

while.end.i.i.i.land.lhs.true8.i.i.i_crit_edge:   ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true8.i.i.i

while.end.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

land.lhs.true8.i.i.i:                             ; preds = %while.end.i.i.i.land.lhs.true8.i.i.i_crit_edge, %if.then.i304.i.i.land.lhs.true8.i.i.i_crit_edge
  %res.339.i.i.i = phi ptr [ %res.1.i.i.i, %while.end.i.i.i.land.lhs.true8.i.i.i_crit_edge ], [ %node.047.i.i.i, %if.then.i304.i.i.land.lhs.true8.i.i.i_crit_edge ]
  %dma_res.338.i.i.i = phi ptr [ %dma_res.1.i.i.i, %while.end.i.i.i.land.lhs.true8.i.i.i_crit_edge ], [ %node.047.i.i.i, %if.then.i304.i.i.land.lhs.true8.i.i.i_crit_edge ]
  %iova9.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %dma_res.338.i.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %iova9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %iova9.i.i.i, align 4
  %conv.i.i.i = zext i32 %298 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add82.i.i, i64 %conv.i.i.i)
  %cmp12.not.i.i.i = icmp ugt i64 %add82.i.i, %conv.i.i.i
  br i1 %cmp12.not.i.i.i, label %land.lhs.true8.i.i.i.while.body.i.i_crit_edge, label %land.lhs.true8.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge

land.lhs.true8.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

land.lhs.true8.i.i.i.while.body.i.i_crit_edge:    ; preds = %land.lhs.true8.i.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %land.lhs.true8.i.i.i.while.body.i.i_crit_edge
  %unmapped.1340.i.i = phi i32 [ %unmapped.1.be.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %unmapped.0.i.i, %land.lhs.true8.i.i.i.while.body.i.i_crit_edge ]
  %n.0338.i.i = phi ptr [ %n.0.be.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %res.339.i.i.i, %land.lhs.true8.i.i.i.while.body.i.i_crit_edge ]
  %iova102.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %iova102.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %iova102.i.i, align 4
  %conv103.i.i = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add82.i.i, i64 %conv103.i.i)
  %cmp106.not.i.i = icmp ugt i64 %add82.i.i, %conv103.i.i
  br i1 %cmp106.not.i.i, label %if.end109.i.i, label %while.body.i.i.vfio_dma_do_unmap.exit.i_crit_edge

while.body.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end109.i.i:                                    ; preds = %while.body.i.i
  %301 = ptrtoint ptr %v2.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %v2.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool111.not.i.i = icmp eq i8 %302, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %conv.i.i76)
  %cmp114.i.i = icmp ult i32 %300, %conv.i.i76
  %or.cond277.i.i = select i1 %tobool111.not.i.i, i1 %cmp114.i.i, i1 false
  br i1 %or.cond277.i.i, label %if.end109.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %if.end117.i.i110

if.end109.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end117.i.i110:                                 ; preds = %if.end109.i.i
  %task.i.i108 = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 8
  %303 = ptrtoint ptr %task.i.i108 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %task.i.i108, align 4
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %304, i32 0, i32 53
  %305 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mm.i.i, align 8
  %307 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i109 = and i32 %307, -16384
  %308 = inttoptr i32 %and.i.i.i109 to ptr
  %task119.i.i = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 2
  %309 = ptrtoint ptr %task119.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %task119.i.i, align 8
  %mm120.i.i = getelementptr inbounds %struct.task_struct, ptr %310, i32 0, i32 53
  %311 = ptrtoint ptr %mm120.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mm120.i.i, align 8
  %cmp121.not.i.i = icmp eq ptr %306, %312
  br i1 %cmp121.not.i.i, label %if.end124.i.i, label %if.end117.i.i110.vfio_dma_do_unmap.exit.i_crit_edge

if.end117.i.i110.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.end117.i.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end124.i.i:                                    ; preds = %if.end117.i.i110
  br i1 %tobool5.not.i.i, label %do.end145.i.i, label %if.then126.i.i

if.then126.i.i:                                   ; preds = %if.end124.i.i
  %vaddr_invalid.i.i111 = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 7
  %313 = ptrtoint ptr %vaddr_invalid.i.i111 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %vaddr_invalid.i.i111, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool127.not.i.i = icmp eq i8 %314, 0
  br i1 %tobool127.not.i.i, label %if.end136.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then126.i.i
  %cmp129.not353.i.i = icmp eq ptr %res.339.i.i.i, %n.0338.i.i
  br i1 %cmp129.not353.i.i, label %for.cond.preheader.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i113_crit_edge

for.cond.preheader.i.i.for.body.i.i113_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i113

for.cond.preheader.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

for.body.i.i113:                                  ; preds = %for.body.i.i113.for.body.i.i113_crit_edge, %for.cond.preheader.i.i.for.body.i.i113_crit_edge
  %n.1354.i.i = phi ptr [ %call135.i.i, %for.body.i.i113.for.body.i.i113_crit_edge ], [ %res.339.i.i.i, %for.cond.preheader.i.i.for.body.i.i113_crit_edge ]
  %vaddr_invalid134.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.1354.i.i, i32 0, i32 7
  %315 = ptrtoint ptr %vaddr_invalid134.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 0, ptr %vaddr_invalid134.i.i, align 2
  %316 = ptrtoint ptr %vaddr_invalid_count138.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %vaddr_invalid_count138.i.i, align 8
  %dec.i.i112 = add i32 %317, -1
  store i32 %dec.i.i112, ptr %vaddr_invalid_count138.i.i, align 8
  %call135.i.i = call ptr @rb_next(ptr noundef %n.1354.i.i) #14
  %cmp129.not.i.i = icmp eq ptr %call135.i.i, %n.0338.i.i
  br i1 %cmp129.not.i.i, label %for.body.i.i113.vfio_dma_do_unmap.exit.i_crit_edge, label %for.body.i.i113.for.body.i.i113_crit_edge

for.body.i.i113.for.body.i.i113_crit_edge:        ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i113

for.body.i.i113.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.end136.i.i:                                    ; preds = %if.then126.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %318 = ptrtoint ptr %vaddr_invalid.i.i111 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 1, ptr %vaddr_invalid.i.i111, align 2
  %319 = ptrtoint ptr %vaddr_invalid_count138.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %vaddr_invalid_count138.i.i, align 8
  %inc.i.i114 = add i32 %320, 1
  store i32 %inc.i.i114, ptr %vaddr_invalid_count138.i.i, align 8
  %size139.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 3
  %321 = ptrtoint ptr %size139.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %size139.i.i, align 4
  %call141.i.i = call ptr @rb_next(ptr noundef nonnull %n.0338.i.i) #14
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end193.i.i, %if.end136.i.i
  %n.0.be.i.i = phi ptr [ %call141.i.i, %if.end136.i.i ], [ %call196.i.i, %if.end193.i.i ]
  %.pn.i.i115 = phi i32 [ %322, %if.end136.i.i ], [ %337, %if.end193.i.i ]
  %unmapped.1.be.i.i = add i32 %.pn.i.i115, %unmapped.1340.i.i
  %tobool100.not.i.i = icmp eq ptr %n.0.be.i.i, null
  br i1 %tobool100.not.i.i, label %while.cond.backedge.i.i.vfio_dma_do_unmap.exit.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.backedge.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

do.end145.i.i:                                    ; preds = %if.end124.i.i
  %pfn_list.i.i116 = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 9
  %323 = ptrtoint ptr %pfn_list.i.i116 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load volatile ptr, ptr %pfn_list.i.i116, align 4
  %cmp147.i.i = icmp eq ptr %324, null
  br i1 %cmp147.i.i, label %if.end184.i.i, label %if.then149.i.i

if.then149.i.i:                                   ; preds = %do.end145.i.i
  %iova102.i.i.le = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nb_unmap.i.i) #14
  %cmp150.i.i = icmp eq ptr %dma_last.0.i.i, %n.0338.i.i
  %325 = call ptr @memset(ptr %nb_unmap.i.i, i32 255, i32 24)
  br i1 %cmp150.i.i, label %do.body153.i.i, label %if.then149.i.i.if.end174.i.i_crit_edge

if.then149.i.i.if.end174.i.i_crit_edge:           ; preds = %if.then149.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174.i.i

do.body153.i.i:                                   ; preds = %if.then149.i.i
  %inc154.i.i = add i32 %retries.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc154.i.i)
  %cmp155.i.i = icmp sgt i32 %inc154.i.i, 10
  br i1 %cmp155.i.i, label %do.body164.i.i, label %do.body153.i.i.if.end174.i.i_crit_edge, !prof !101

do.body153.i.i.if.end174.i.i_crit_edge:           ; preds = %do.body153.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174.i.i

do.body164.i.i:                                   ; preds = %do.body153.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/vfio/vfio_iommu_type1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1412, 0\0A.popsection", ""() #14, !srcloc !104
  unreachable

if.end174.i.i:                                    ; preds = %do.body153.i.i.if.end174.i.i_crit_edge, %if.then149.i.i.if.end174.i.i_crit_edge
  %retries.1.i.i = phi i32 [ %inc154.i.i, %do.body153.i.i.if.end174.i.i_crit_edge ], [ 0, %if.then149.i.i.if.end174.i.i_crit_edge ]
  %dma_last.1.i.i = phi ptr [ %dma_last.0.i.i, %do.body153.i.i.if.end174.i.i_crit_edge ], [ %n.0338.i.i, %if.then149.i.i.if.end174.i.i_crit_edge ]
  %326 = ptrtoint ptr %iova102.i.i.le to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %iova102.i.i.le, align 4
  %conv176.i.i = zext i32 %327 to i64
  %328 = ptrtoint ptr %276 to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %conv176.i.i, ptr %276, align 8
  %size178.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 3
  %329 = ptrtoint ptr %size178.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %size178.i.i, align 4
  %conv179.i.i = zext i32 %330 to i64
  %331 = ptrtoint ptr %277 to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 %conv179.i.i, ptr %277, align 8
  call void @mutex_unlock(ptr noundef %lock.i.i77) #14
  %call182.i.i = call i32 @blocking_notifier_call_chain(ptr noundef %notifier.i.i, i32 noundef 1, ptr noundef nonnull %nb_unmap.i.i) #14
  call void @mutex_lock_nested(ptr noundef %lock.i.i77, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nb_unmap.i.i) #14
  br label %again.i.i

if.end184.i.i:                                    ; preds = %do.end145.i.i
  %332 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %225, align 4
  %and186.i.i = and i32 %333, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i.i)
  %tobool187.not.i.i = icmp eq i32 %and186.i.i, 0
  br i1 %tobool187.not.i.i, label %if.end184.i.i.if.end193.i.i_crit_edge, label %if.then188.i.i

if.end184.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end193.i.i

if.then188.i.i:                                   ; preds = %if.end184.i.i
  %334 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %data.i.i, align 8
  %call189.i.i = call fastcc i32 @update_user_bitmap(ptr noundef %335, ptr noundef %iommu_data, ptr noundef nonnull %n.0338.i.i, i32 noundef %conv.i.i76, i32 noundef %shl.i.i79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i.i)
  %tobool190.not.i.i = icmp eq i32 %call189.i.i, 0
  br i1 %tobool190.not.i.i, label %if.then188.i.i.if.end193.i.i_crit_edge, label %if.then188.i.i.vfio_dma_do_unmap.exit.i_crit_edge

if.then188.i.i.vfio_dma_do_unmap.exit.i_crit_edge: ; preds = %if.then188.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_dma_do_unmap.exit.i

if.then188.i.i.if.end193.i.i_crit_edge:           ; preds = %if.then188.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.then188.i.i.if.end193.i.i_crit_edge, %if.end184.i.i.if.end193.i.i_crit_edge
  %size194.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0338.i.i, i32 0, i32 3
  %336 = ptrtoint ptr %size194.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %size194.i.i, align 4
  %call196.i.i = call ptr @rb_next(ptr noundef nonnull %n.0338.i.i) #14
  call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef nonnull %n.0338.i.i) #14
  br label %while.cond.backedge.i.i

vfio_dma_do_unmap.exit.i:                         ; preds = %if.then188.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %while.cond.backedge.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %for.body.i.i113.vfio_dma_do_unmap.exit.i_crit_edge, %for.cond.preheader.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %if.end117.i.i110.vfio_dma_do_unmap.exit.i_crit_edge, %if.end109.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %while.body.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %land.lhs.true8.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %while.end.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %if.end98.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %land.lhs.true87.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %land.lhs.true75.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %if.then72.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %lor.lhs.false37.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %land.lhs.true.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %lor.lhs.false22.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %lor.lhs.false17.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %if.else.i.i83.vfio_dma_do_unmap.exit.i_crit_edge, %if.then11.i.i.vfio_dma_do_unmap.exit.i_crit_edge, %if.end36.i.vfio_dma_do_unmap.exit.i_crit_edge
  %ret.3.i.i = phi i32 [ -22, %if.end36.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %if.then11.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %lor.lhs.false37.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %land.lhs.true.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %lor.lhs.false17.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %lor.lhs.false22.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %if.else.i.i83.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %for.cond.preheader.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ -22, %for.body.i.i113.vfio_dma_do_unmap.exit.i_crit_edge ], [ %call189.i.i, %if.then188.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.end117.i.i110.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %while.body.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %while.cond.backedge.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.end109.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.then72.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.end98.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %land.lhs.true8.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %while.end.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %ret.0.i.i88, %land.lhs.true75.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %ret.0.i.i88, %land.lhs.true87.i.i.vfio_dma_do_unmap.exit.i_crit_edge ]
  %unmapped.2.i.i = phi i32 [ 0, %if.end36.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.then11.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %lor.lhs.false37.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %lor.lhs.false17.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %lor.lhs.false22.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %if.else.i.i83.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ 0, %for.body.i.i113.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.1340.i.i, %if.then188.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.1340.i.i, %if.end117.i.i110.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.1340.i.i, %while.body.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.1.be.i.i, %while.cond.backedge.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.1340.i.i, %if.end109.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %if.then72.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %land.lhs.true75.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %land.lhs.true87.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %if.end98.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %while.end.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge ], [ %unmapped.0.i.i, %land.lhs.true8.i.i.i.vfio_dma_do_unmap.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i77) #14
  %conv198.i.i = zext i32 %unmapped.2.i.i to i64
  %338 = ptrtoint ptr %227 to i32
  call void @__asan_store8_noabort(i32 %338)
  store i64 %conv198.i.i, ptr %227, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %tobool38.not.i = icmp eq i32 %ret.3.i.i, 0
  br i1 %tobool38.not.i, label %if.end8.i.i84.i, label %vfio_dma_do_unmap.exit.i.vfio_iommu_type1_unmap_dma.exit_crit_edge

vfio_dma_do_unmap.exit.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %vfio_dma_do_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

if.end8.i.i84.i:                                  ; preds = %vfio_dma_do_unmap.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #14
  %call.i.i85.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i85.i, label %if.end8.i.i84.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, label %copy_to_user.exit.i118

if.end8.i.i84.i.vfio_iommu_type1_unmap_dma.exit_crit_edge: ; preds = %if.end8.i.i84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_unmap_dma.exit

copy_to_user.exit.i118:                           ; preds = %if.end8.i.i84.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i89.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %unmap.i, i32 noundef 24) #14
  %call.i12.i.i.i117 = call i32 @arm_copy_to_user(ptr noundef %230, ptr noundef nonnull %unmap.i, i32 noundef 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i117)
  %tobool42.not.i = icmp eq i32 %call.i12.i.i.i117, 0
  %spec.select.i = select i1 %tobool42.not.i, i32 0, i32 -14
  br label %vfio_iommu_type1_unmap_dma.exit

vfio_iommu_type1_unmap_dma.exit:                  ; preds = %copy_to_user.exit.i118, %if.end8.i.i84.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %vfio_dma_do_unmap.exit.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %lor.lhs.false3.i.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.end28.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.end24.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.then11.i.i78.i, %if.then15.i.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.end3.i69.vfio_iommu_type1_unmap_dma.exit_crit_edge, %lor.lhs.false.i68.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.end.i66.vfio_iommu_type1_unmap_dma.exit_crit_edge, %if.then11.i.i.i64
  %retval.1.i = phi i32 [ -22, %lor.lhs.false.i68.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -22, %if.end.i66.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -22, %if.end3.i69.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ %ret.3.i.i, %vfio_dma_do_unmap.exit.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -14, %if.then11.i.i.i64 ], [ -22, %if.end24.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -22, %if.then15.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -14, %if.then11.i.i78.i ], [ -22, %if.end28.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -22, %lor.lhs.false3.i.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ -14, %if.end8.i.i84.i.vfio_iommu_type1_unmap_dma.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i118 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bitmap.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unmap.i) #14
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dirty.i) #14
  %339 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 -1, ptr %dirty.i, align 4, !annotation !102
  %340 = getelementptr inbounds %struct.vfio_iommu_type1_dirty_bitmap, ptr %dirty.i, i32 0, i32 1
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 -1, ptr %340, align 4, !annotation !102
  %v2.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 10
  %342 = ptrtoint ptr %v2.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %v2.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool.not.i119 = icmp eq i8 %343, 0
  br i1 %tobool.not.i119, label %sw.bb7.vfio_iommu_type1_dirty_pages.exit_crit_edge, label %if.end.i121

sw.bb7.vfio_iommu_type1_dirty_pages.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_dirty_pages.exit

if.end.i121:                                      ; preds = %sw.bb7
  %344 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i.i120 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i120, label %if.end.i121.if.then11.i.i.i135_crit_edge, label %land.lhs.true.i.i.i124

if.end.i121.if.then11.i.i.i135_crit_edge:         ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i135

land.lhs.true.i.i.i124:                           ; preds = %if.end.i121
  %345 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %344, i32 8, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i.i122 = extractvalue { i32, i32 } %345, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i122)
  %cmp.i6.i.i123 = icmp eq i32 %asmresult.i.i.i122, 0
  br i1 %cmp.i6.i.i123, label %if.end.i.i.i132, label %land.lhs.true.i.i.i124.if.then11.i.i.i135_crit_edge, !prof !93

land.lhs.true.i.i.i124.if.then11.i.i.i135_crit_edge: ; preds = %land.lhs.true.i.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i135

if.end.i.i.i132:                                  ; preds = %land.lhs.true.i.i.i124
  %call.i.i.i.i125 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dirty.i, i32 noundef 8) #14
  %346 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i.i126 = and i32 %346, -16384
  %347 = inttoptr i32 %and.i.i.i.i.i.i.i126 to ptr
  %cpu_domain.i.i.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %347, i32 0, i32 4
  %348 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i127) #8, !srcloc !94
  %and.i.i.i.i.i128 = and i32 %348, -13
  %or.i.i.i.i.i129 = or i32 %and.i.i.i.i.i128, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i129) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i.i130 = call i32 @arm_copy_from_user(ptr noundef nonnull %dirty.i, ptr noundef %344, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %348) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i130)
  %tobool4.not.i.i.i131 = icmp eq i32 %call1.i.i.i.i130, 0
  br i1 %tobool4.not.i.i.i131, label %if.end3.i137, label %if.end.i.i.i132.if.then11.i.i.i135_crit_edge, !prof !93

if.end.i.i.i132.if.then11.i.i.i135_crit_edge:     ; preds = %if.end.i.i.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i135

if.then11.i.i.i135:                               ; preds = %if.end.i.i.i132.if.then11.i.i.i135_crit_edge, %land.lhs.true.i.i.i124.if.then11.i.i.i135_crit_edge, %if.end.i121.if.then11.i.i.i135_crit_edge
  %res.0.i.i188.i = phi i32 [ %call1.i.i.i.i130, %if.end.i.i.i132.if.then11.i.i.i135_crit_edge ], [ 8, %if.end.i121.if.then11.i.i.i135_crit_edge ], [ 8, %land.lhs.true.i.i.i124.if.then11.i.i.i135_crit_edge ]
  %sub.i.i.i133 = sub i32 8, %res.0.i.i188.i
  %add.ptr.i.i.i134 = getelementptr i8, ptr %dirty.i, i32 %sub.i.i.i133
  %349 = call ptr @memset(ptr %add.ptr.i.i.i134, i32 0, i32 %res.0.i.i188.i)
  br label %vfio_iommu_type1_dirty_pages.exit

if.end3.i137:                                     ; preds = %if.end.i.i.i132
  %350 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %351)
  %cmp.i136 = icmp ult i32 %351, 8
  br i1 %cmp.i136, label %if.end3.i137.vfio_iommu_type1_dirty_pages.exit_crit_edge, label %lor.lhs.false.i138

if.end3.i137.vfio_iommu_type1_dirty_pages.exit_crit_edge: ; preds = %if.end3.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_dirty_pages.exit

lor.lhs.false.i138:                               ; preds = %if.end3.i137
  %352 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %353)
  %tobool4.not.i = icmp ult i32 %353, 8
  br i1 %tobool4.not.i, label %if.end6.i140, label %lor.lhs.false.i138.vfio_iommu_type1_dirty_pages.exit_crit_edge

lor.lhs.false.i138.vfio_iommu_type1_dirty_pages.exit_crit_edge: ; preds = %lor.lhs.false.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_dirty_pages.exit

if.end6.i140:                                     ; preds = %lor.lhs.false.i138
  %354 = call i32 @llvm.cttz.i32(i32 %353, i1 false) #14, !range !97
  %355 = call i32 @llvm.ctlz.i32(i32 %353, i1 false) #14, !range !97
  %sub.i.i139 = sub nsw i32 31, %355
  call void @__sanitizer_cov_trace_cmp4(i32 %354, i32 %sub.i.i139)
  %cmp11.not.i = icmp eq i32 %354, %sub.i.i139
  br i1 %cmp11.not.i, label %if.end13.i, label %if.end6.i140.vfio_iommu_type1_dirty_pages.exit_crit_edge

if.end6.i140.vfio_iommu_type1_dirty_pages.exit_crit_edge: ; preds = %if.end6.i140
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_dirty_pages.exit

if.end13.i:                                       ; preds = %if.end6.i140
  %and15.i = and i32 %353, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i144, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  %lock.i141 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i141, i32 noundef 0) #14
  %dirty_page_tracking.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %356 = ptrtoint ptr %dirty_page_tracking.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %dirty_page_tracking.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool19.not.i = icmp eq i8 %357, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.then17.i.if.end26.i_crit_edge

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.then17.i
  %pgsize_bitmap.i142 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %358 = ptrtoint ptr %pgsize_bitmap.i142 to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %pgsize_bitmap.i142, align 8
  %conv.i143 = trunc i64 %359 to i32
  %360 = call i32 @llvm.cttz.i32(i32 %conv.i143, i1 false) #14, !range !97
  %dma_list.i227 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call.i228 = call ptr @rb_first(ptr noundef %dma_list.i227) #14
  %tobool.not38.i = icmp eq ptr %call.i228, null
  br i1 %tobool.not38.i, label %if.then20.i.if.then23.i_crit_edge, label %if.then20.i.for.body.i230_crit_edge

if.then20.i.for.body.i230_crit_edge:              ; preds = %if.then20.i
  br label %for.body.i230

if.then20.i.if.then23.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23.i

for.body.i230:                                    ; preds = %for.inc13.i.for.body.i230_crit_edge, %if.then20.i.for.body.i230_crit_edge
  %n.039.i = phi ptr [ %call14.i, %for.inc13.i.for.body.i230_crit_edge ], [ %call.i228, %if.then20.i.for.body.i230_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.039.i, i32 0, i32 3
  %361 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %size.i.i, align 4
  %div.i.i262 = lshr i32 %362, %360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i262)
  %cmp.i.i229 = icmp slt i32 %div.i.i262, 0
  br i1 %cmp.i.i229, label %for.body.i230.if.then.i238_crit_edge, label %if.end.i.i237

for.body.i230.if.then.i238_crit_edge:             ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i238

if.end.i.i237:                                    ; preds = %for.body.i230
  %conv.i.i231 = zext i32 %div.i.i262 to i64
  %add.i.i232 = add nuw nsw i64 %conv.i.i231, 63
  %and.i.i233 = lshr i64 %add.i.i232, 3
  %363 = trunc i64 %and.i.i233 to i32
  %364 = and i32 %363, 1073741816
  %conv4.i.i = add nuw nsw i32 %364, 8
  %call.i.i.i.i234 = call noalias ptr @kvmalloc_node(i32 noundef %conv4.i.i, i32 noundef 3520, i32 noundef -1) #19
  %bitmap.i.i235 = getelementptr inbounds %struct.vfio_dma, ptr %n.039.i, i32 0, i32 10
  %365 = ptrtoint ptr %bitmap.i.i235 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i.i.i.i234, ptr %bitmap.i.i235, align 4
  %tobool.not.i.i236 = icmp eq ptr %call.i.i.i.i234, null
  br i1 %tobool.not.i.i236, label %if.end.i.i237.if.then.i238_crit_edge, label %if.end.i242

if.end.i.i237.if.then.i238_crit_edge:             ; preds = %if.end.i.i237
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i238

if.then.i238:                                     ; preds = %if.end.i.i237.if.then.i238_crit_edge, %for.body.i230.if.then.i238_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %for.body.i230.if.then.i238_crit_edge ], [ -12, %if.end.i.i237.if.then.i238_crit_edge ]
  %call3.i = call ptr @rb_prev(ptr noundef nonnull %n.039.i) #14
  %tobool5.not41.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not41.i, label %if.then.i238.if.end26.i_crit_edge, label %for.body6.lr.ph.i

if.then.i238.if.end26.i_crit_edge:                ; preds = %if.then.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

for.body6.lr.ph.i:                                ; preds = %if.then.i238
  %bitmap.i25.i = getelementptr inbounds %struct.vfio_dma, ptr %n.039.i, i32 0, i32 10
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %p.042.i = phi ptr [ %call3.i, %for.body6.lr.ph.i ], [ %call11.i, %for.body6.i.for.body6.i_crit_edge ]
  %366 = ptrtoint ptr %bitmap.i25.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %bitmap.i25.i, align 4
  call void @kvfree(ptr noundef %367) #14
  %368 = ptrtoint ptr %bitmap.i25.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr null, ptr %bitmap.i25.i, align 4
  %call11.i = call ptr @rb_prev(ptr noundef nonnull %p.042.i) #14
  %tobool5.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool5.not.i, label %for.body6.i.if.end26.i_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i

for.body6.i.if.end26.i_crit_edge:                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i242:                                      ; preds = %if.end.i.i237
  %pfn_list.i.i239 = getelementptr inbounds %struct.vfio_dma, ptr %n.039.i, i32 0, i32 9
  %call1.i.i240 = call ptr @rb_first(ptr noundef %pfn_list.i.i239) #14
  %tobool.not8.i.i241 = icmp eq ptr %call1.i.i240, null
  br i1 %tobool.not8.i.i241, label %if.end.i242.for.inc13.i_crit_edge, label %for.body.lr.ph.i.i243

if.end.i242.for.inc13.i_crit_edge:                ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc13.i

for.body.lr.ph.i.i243:                            ; preds = %if.end.i242
  %iova2.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.039.i, i32 0, i32 1
  br label %for.body.i.i254

for.body.i.i254:                                  ; preds = %for.body.i.i254.for.body.i.i254_crit_edge, %for.body.lr.ph.i.i243
  %p.09.i.i244 = phi ptr [ %call1.i.i240, %for.body.lr.ph.i.i243 ], [ %call3.i.i253, %for.body.i.i254.for.body.i.i254_crit_edge ]
  %369 = ptrtoint ptr %bitmap.i.i235 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %bitmap.i.i235, align 4
  %iova.i.i245 = getelementptr inbounds %struct.vfio_pfn, ptr %p.09.i.i244, i32 0, i32 1
  %371 = ptrtoint ptr %iova.i.i245 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %iova.i.i245, align 4
  %373 = ptrtoint ptr %iova2.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %iova2.i.i, align 4
  %sub.i.i246 = sub i32 %372, %374
  %shr.i.i247 = lshr i32 %sub.i.i246, %360
  %rem.i.i.i.i248 = and i32 %shr.i.i247, 31
  %shl.i.i.i.i249 = shl nuw i32 1, %rem.i.i.i.i248
  %div2.i.i.i.i250 = lshr i32 %shr.i.i247, 5
  %add.ptr.i.i.i.i251 = getelementptr i32, ptr %370, i32 %div2.i.i.i.i250
  %375 = ptrtoint ptr %add.ptr.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %add.ptr.i.i.i.i251, align 4
  %or.i.i.i.i252 = or i32 %shl.i.i.i.i249, %376
  store i32 %or.i.i.i.i252, ptr %add.ptr.i.i.i.i251, align 4
  %call3.i.i253 = call ptr @rb_next(ptr noundef nonnull %p.09.i.i244) #14
  %tobool.not.i27.i = icmp eq ptr %call3.i.i253, null
  br i1 %tobool.not.i27.i, label %for.body.i.i254.for.inc13.i_crit_edge, label %for.body.i.i254.for.body.i.i254_crit_edge

for.body.i.i254.for.body.i.i254_crit_edge:        ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i254

for.body.i.i254.for.inc13.i_crit_edge:            ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.body.i.i254.for.inc13.i_crit_edge, %if.end.i242.for.inc13.i_crit_edge
  %call14.i = call ptr @rb_next(ptr noundef nonnull %n.039.i) #14
  %tobool.not.i255 = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i255, label %for.inc13.i.if.then23.i_crit_edge, label %for.inc13.i.for.body.i230_crit_edge

for.inc13.i.for.body.i230_crit_edge:              ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i230

for.inc13.i.if.then23.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23.i

if.then23.i:                                      ; preds = %for.inc13.i.if.then23.i_crit_edge, %if.then20.i.if.then23.i_crit_edge
  %377 = ptrtoint ptr %dirty_page_tracking.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 1, ptr %dirty_page_tracking.i, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %for.body6.i.if.end26.i_crit_edge, %if.then.i238.if.end26.i_crit_edge, %if.then17.i.if.end26.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then17.i.if.end26.i_crit_edge ], [ 0, %if.then23.i ], [ %retval.0.i.ph.i, %if.then.i238.if.end26.i_crit_edge ], [ %retval.0.i.ph.i, %for.body6.i.if.end26.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i141) #14
  br label %vfio_iommu_type1_dirty_pages.exit

if.else.i144:                                     ; preds = %if.end13.i
  %and29.i = and i32 %353, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else39.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else.i144
  %lock32.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock32.i, i32 noundef 0) #14
  %dirty_page_tracking33.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %378 = ptrtoint ptr %dirty_page_tracking33.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %dirty_page_tracking33.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool34.not.i = icmp eq i8 %379, 0
  br i1 %tobool34.not.i, label %if.then31.i.if.end37.i145_crit_edge, label %if.then35.i

if.then31.i.if.end37.i145_crit_edge:              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i145

if.then35.i:                                      ; preds = %if.then31.i
  %380 = ptrtoint ptr %dirty_page_tracking33.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %dirty_page_tracking33.i, align 2
  %dma_list.i224 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call.i = call ptr @rb_first(ptr noundef %dma_list.i224) #14
  %tobool.not4.i = icmp eq ptr %call.i, null
  br i1 %tobool.not4.i, label %if.then35.i.if.end37.i145_crit_edge, label %if.then35.i.for.body.i226_crit_edge

if.then35.i.for.body.i226_crit_edge:              ; preds = %if.then35.i
  br label %for.body.i226

if.then35.i.if.end37.i145_crit_edge:              ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i145

for.body.i226:                                    ; preds = %for.body.i226.for.body.i226_crit_edge, %if.then35.i.for.body.i226_crit_edge
  %n.05.i = phi ptr [ %call1.i, %for.body.i226.for.body.i226_crit_edge ], [ %call.i, %if.then35.i.for.body.i226_crit_edge ]
  %bitmap.i.i = getelementptr inbounds %struct.vfio_dma, ptr %n.05.i, i32 0, i32 10
  %381 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %bitmap.i.i, align 4
  call void @kvfree(ptr noundef %382) #14
  %383 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr null, ptr %bitmap.i.i, align 4
  %call1.i = call ptr @rb_next(ptr noundef nonnull %n.05.i) #14
  %tobool.not.i225 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i225, label %for.body.i226.if.end37.i145_crit_edge, label %for.body.i226.for.body.i226_crit_edge

for.body.i226.for.body.i226_crit_edge:            ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i226

for.body.i226.if.end37.i145_crit_edge:            ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i145

if.end37.i145:                                    ; preds = %for.body.i226.if.end37.i145_crit_edge, %if.then35.i.if.end37.i145_crit_edge, %if.then31.i.if.end37.i145_crit_edge
  call void @mutex_unlock(ptr noundef %lock32.i) #14
  br label %vfio_iommu_type1_dirty_pages.exit

if.else39.i:                                      ; preds = %if.else.i144
  %and41.i = and i32 %353, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i146 = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i146, label %if.else39.i.vfio_iommu_type1_dirty_pages.exit_crit_edge, label %if.then43.i

if.else39.i.vfio_iommu_type1_dirty_pages.exit_crit_edge: ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_type1_dirty_pages.exit

if.then43.i:                                      ; preds = %if.else39.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %range.i) #14
  %384 = call ptr @memset(ptr %range.i, i32 255, i32 40)
  %sub.i = add i32 %351, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i)
  %cmp47.i = icmp ult i32 %sub.i, 40
  br i1 %cmp47.i, label %if.then43.i.cleanup.i_crit_edge, label %if.end50.i

if.then43.i.cleanup.i_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end50.i:                                       ; preds = %if.then43.i
  %add.i147 = add i32 %arg, 8
  %385 = inttoptr i32 %add.i147 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i167.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i167.i, label %if.end50.i.if.then11.i.i183.i_crit_edge, label %land.lhs.true.i.i170.i

if.end50.i.if.then11.i.i183.i_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i183.i

land.lhs.true.i.i170.i:                           ; preds = %if.end50.i
  %386 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %385, i32 40, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i168.i = extractvalue { i32, i32 } %386, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i168.i)
  %cmp.i6.i169.i = icmp eq i32 %asmresult.i.i168.i, 0
  br i1 %cmp.i6.i169.i, label %if.end.i.i180.i, label %land.lhs.true.i.i170.i.if.then11.i.i183.i_crit_edge, !prof !93

land.lhs.true.i.i170.i.if.then11.i.i183.i_crit_edge: ; preds = %land.lhs.true.i.i170.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i183.i

if.end.i.i180.i:                                  ; preds = %land.lhs.true.i.i170.i
  %call.i.i.i171.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 40) #14
  %387 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i172.i = and i32 %387, -16384
  %388 = inttoptr i32 %and.i.i.i.i.i.i172.i to ptr
  %cpu_domain.i.i.i.i.i173.i = getelementptr inbounds %struct.thread_info, ptr %388, i32 0, i32 4
  %389 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i173.i) #8, !srcloc !94
  %and.i.i.i.i174.i = and i32 %389, -13
  %or.i.i.i.i175.i = or i32 %and.i.i.i.i174.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i175.i) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i176.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %385, i32 noundef 40) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %389) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i176.i)
  %tobool4.not.i.i179.i = icmp eq i32 %call1.i.i.i176.i, 0
  br i1 %tobool4.not.i.i179.i, label %if.end54.i, label %if.end.i.i180.i.if.then11.i.i183.i_crit_edge, !prof !93

if.end.i.i180.i.if.then11.i.i183.i_crit_edge:     ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i183.i

if.then11.i.i183.i:                               ; preds = %if.end.i.i180.i.if.then11.i.i183.i_crit_edge, %land.lhs.true.i.i170.i.if.then11.i.i183.i_crit_edge, %if.end50.i.if.then11.i.i183.i_crit_edge
  %res.0.i.i178193.i = phi i32 [ %call1.i.i.i176.i, %if.end.i.i180.i.if.then11.i.i183.i_crit_edge ], [ 40, %if.end50.i.if.then11.i.i183.i_crit_edge ], [ 40, %land.lhs.true.i.i170.i.if.then11.i.i183.i_crit_edge ]
  %sub.i.i181.i = sub i32 40, %res.0.i.i178193.i
  %add.ptr.i.i182.i = getelementptr i8, ptr %range.i, i32 %sub.i.i181.i
  %390 = call ptr @memset(ptr %add.ptr.i.i182.i, i32 0, i32 %res.0.i.i178193.i)
  br label %cleanup.i

if.end54.i:                                       ; preds = %if.end.i.i180.i
  %391 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %range.i, align 8
  %size.i148 = getelementptr inbounds %struct.vfio_iommu_type1_dirty_bitmap_get, ptr %range.i, i32 0, i32 1
  %393 = ptrtoint ptr %size.i148 to i32
  call void @__asan_load8_noabort(i32 %393)
  %394 = load i64, ptr %size.i148, align 8
  %395 = xor i64 %392, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %394, i64 %395)
  %cmp57.i = icmp ugt i64 %394, %395
  br i1 %cmp57.i, label %if.end54.i.cleanup.i_crit_edge, label %if.end60.i

if.end54.i.cleanup.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end60.i:                                       ; preds = %if.end54.i
  %bitmap.i149 = getelementptr inbounds %struct.vfio_iommu_type1_dirty_bitmap_get, ptr %range.i, i32 0, i32 2
  %data.i150 = getelementptr inbounds %struct.vfio_iommu_type1_dirty_bitmap_get, ptr %range.i, i32 0, i32 2, i32 2
  %396 = ptrtoint ptr %data.i150 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %data.i150, align 8
  %size62.i = getelementptr inbounds %struct.vfio_iommu_type1_dirty_bitmap_get, ptr %range.i, i32 0, i32 2, i32 1
  %398 = ptrtoint ptr %size62.i to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %size62.i, align 8
  %400 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %397, i64 %399, i32 -1226833920) #18, !srcloc !105
  %asmresult.i151 = extractvalue { i32, i32 } %400, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i151)
  %cmp64.i = icmp eq i32 %asmresult.i151, 0
  br i1 %cmp64.i, label %if.end67.i, label %if.end60.i.cleanup.i_crit_edge

if.end60.i.cleanup.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end67.i:                                       ; preds = %if.end60.i
  %401 = ptrtoint ptr %bitmap.i149 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %bitmap.i149, align 8
  %conv70.i = trunc i64 %402 to i32
  %403 = call i32 @llvm.cttz.i32(i32 %conv70.i, i1 false) #14, !range !97
  %sh_prom.i152 = zext i32 %403 to i64
  %shr.i153 = lshr i64 %394, %sh_prom.i152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i153)
  %tobool.not.i.i154 = icmp eq i64 %shr.i153, 0
  %404 = add i64 %399, -268435457
  call void @__sanitizer_cov_trace_const_cmp8(i64 -268435456, i64 %404)
  %405 = icmp ult i64 %404, -268435456
  %406 = or i1 %405, %tobool.not.i.i154
  br i1 %406, label %if.end67.i.cleanup.i_crit_edge, label %lor.lhs.false3.i.i159

if.end67.i.cleanup.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

lor.lhs.false3.i.i159:                            ; preds = %if.end67.i
  %add.i.i155 = add i64 %shr.i153, 63
  %and.i.i156 = lshr i64 %add.i.i155, 3
  %div8.i.i157 = and i64 %and.i.i156, 2305843009213693944
  call void @__sanitizer_cov_trace_cmp8(i64 %div8.i.i157, i64 %399)
  %cmp4.i.i158 = icmp ugt i64 %div8.i.i157, %399
  br i1 %cmp4.i.i158, label %lor.lhs.false3.i.i159.cleanup.i_crit_edge, label %if.end78.i

lor.lhs.false3.i.i159.cleanup.i_crit_edge:        ; preds = %lor.lhs.false3.i.i159
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end78.i:                                       ; preds = %lor.lhs.false3.i.i159
  %lock79.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock79.i, i32 noundef 0) #14
  %pgsize_bitmap80.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %407 = ptrtoint ptr %pgsize_bitmap80.i to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %pgsize_bitmap80.i, align 8
  %conv81.i = trunc i64 %408 to i32
  %409 = call i32 @llvm.cttz.i32(i32 %conv81.i, i1 false) #14, !range !97
  %shl83.i = shl nuw i32 1, %409
  %410 = ptrtoint ptr %bitmap.i149 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %bitmap.i149, align 8
  %conv86.i = zext i32 %shl83.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %411, i64 %conv86.i)
  %cmp87.not.i = icmp eq i64 %411, %conv86.i
  br i1 %cmp87.not.i, label %if.end90.i, label %if.end78.i.out_unlock.i_crit_edge

if.end78.i.out_unlock.i_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end90.i:                                       ; preds = %if.end78.i
  %412 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %range.i, align 8
  %sub92.i = add i32 %shl83.i, -1
  %conv93.i = zext i32 %sub92.i to i64
  %and94.i = and i64 %413, %conv93.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94.i)
  %tobool95.not.i = icmp eq i64 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %if.end90.i.out_unlock.i_crit_edge

if.end90.i.out_unlock.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end97.i:                                       ; preds = %if.end90.i
  %414 = ptrtoint ptr %size.i148 to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %size.i148, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %415)
  %tobool99.not.i = icmp ne i64 %415, 0
  %and104.i = and i64 %415, %conv93.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and104.i)
  %tobool105.not.i = icmp eq i64 %and104.i, 0
  %or.cond162.i = select i1 %tobool99.not.i, i1 %tobool105.not.i, i1 false
  br i1 %or.cond162.i, label %if.end107.i, label %if.end97.i.out_unlock.i_crit_edge

if.end97.i.out_unlock.i_crit_edge:                ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end107.i:                                      ; preds = %if.end97.i
  %dirty_page_tracking108.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %416 = ptrtoint ptr %dirty_page_tracking108.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %dirty_page_tracking108.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool109.not.i = icmp eq i8 %417, 0
  br i1 %tobool109.not.i, label %if.end107.i.out_unlock.i_crit_edge, label %if.then110.i

if.end107.i.out_unlock.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.then110.i:                                     ; preds = %if.end107.i
  %418 = ptrtoint ptr %data.i150 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %data.i150, align 8
  %conv114.i = trunc i64 %413 to i32
  %conv116.i = trunc i64 %415 to i32
  %conv119.i = trunc i64 %411 to i32
  %420 = call i32 @llvm.cttz.i32(i32 %conv119.i, i1 false) #14, !range !97
  %dma_list.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %421 = ptrtoint ptr %dma_list.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %node.019.i.i = load ptr, ptr %dma_list.i.i, align 4
  %tobool.not20.i.i = icmp eq ptr %node.019.i.i, null
  br i1 %tobool.not20.i.i, label %if.end.thread.i, label %while.body.lr.ph.i.i

if.end.thread.i:                                  ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #16
  %add97.i = add i32 %conv116.i, %conv114.i
  %sub98.i = add i32 %add97.i, -1
  br label %if.end12.i

while.body.lr.ph.i.i:                             ; preds = %if.then110.i
  %add.i.i204 = add i32 %conv114.i, 1
  br label %while.body.i.i206

while.body.i.i206:                                ; preds = %cleanup.i.i.while.body.i.i206_crit_edge, %while.body.lr.ph.i.i
  %node.021.i.i = phi ptr [ %node.019.i.i, %while.body.lr.ph.i.i ], [ %node.0.i.i, %cleanup.i.i.while.body.i.i206_crit_edge ]
  %iova.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i, i32 0, i32 1
  %422 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %iova.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i204, i32 %423)
  %cmp.not.i.i205 = icmp ugt i32 %add.i.i204, %423
  br i1 %cmp.not.i.i205, label %if.else.i.i208, label %if.then.i62.i

if.then.i62.i:                                    ; preds = %while.body.i.i206
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i207 = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i208:                                   ; preds = %while.body.i.i206
  %size2.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i, i32 0, i32 3
  %424 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %size2.i.i, align 4
  %add3.i.i = add i32 %425, %423
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %conv114.i)
  %cmp4.not.i.i = icmp ugt i32 %add3.i.i, %conv114.i
  br i1 %cmp4.not.i.i, label %land.lhs.true.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i208
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i209 = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then5.i.i, %if.then.i62.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i207, %if.then.i62.i ], [ %rb_right.i.i209, %if.then5.i.i ]
  %426 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i210 = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i210, label %cleanup.i.i.while.body.i70.preheader.i_crit_edge, label %cleanup.i.i.while.body.i.i206_crit_edge

cleanup.i.i.while.body.i.i206_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i206

cleanup.i.i.while.body.i70.preheader.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i70.preheader.i

land.lhs.true.i:                                  ; preds = %if.else.i.i208
  call void @__sanitizer_cov_trace_cmp4(i32 %423, i32 %conv114.i)
  %cmp.not.i211 = icmp eq i32 %423, %conv114.i
  br i1 %cmp.not.i211, label %land.lhs.true.i.while.body.i70.preheader.i_crit_edge, label %land.lhs.true.i.out_unlock.i_crit_edge

land.lhs.true.i.out_unlock.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

land.lhs.true.i.while.body.i70.preheader.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i70.preheader.i

while.body.i70.preheader.i:                       ; preds = %land.lhs.true.i.while.body.i70.preheader.i_crit_edge, %cleanup.i.i.while.body.i70.preheader.i_crit_edge
  %add.i212 = add i32 %conv116.i, %conv114.i
  %sub.i213 = add i32 %add.i212, -1
  br label %while.body.i70.i

while.body.i70.i:                                 ; preds = %cleanup.i82.i.while.body.i70.i_crit_edge, %while.body.i70.preheader.i
  %node.021.i67.i = phi ptr [ %node.0.i80.i, %cleanup.i82.i.while.body.i70.i_crit_edge ], [ %node.019.i.i, %while.body.i70.preheader.i ]
  %iova.i68.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i67.i, i32 0, i32 1
  %427 = ptrtoint ptr %iova.i68.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %iova.i68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i213, i32 %428)
  %cmp.not.i69.i = icmp ugt i32 %sub.i213, %428
  br i1 %cmp.not.i69.i, label %if.else.i76.i, label %if.then.i72.i

if.then.i72.i:                                    ; preds = %while.body.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i71.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i67.i, i32 0, i32 2
  br label %cleanup.i82.i

if.else.i76.i:                                    ; preds = %while.body.i70.i
  %size2.i73.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i67.i, i32 0, i32 3
  %429 = ptrtoint ptr %size2.i73.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %size2.i73.i, align 4
  %add3.i74.i = add i32 %430, %428
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i74.i, i32 %sub.i213)
  %cmp4.not.i75.i = icmp ugt i32 %add3.i74.i, %sub.i213
  br i1 %cmp4.not.i75.i, label %land.lhs.true5.i, label %if.then5.i78.i

if.then5.i78.i:                                   ; preds = %if.else.i76.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i77.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i67.i, i32 0, i32 1
  br label %cleanup.i82.i

cleanup.i82.i:                                    ; preds = %if.then5.i78.i, %if.then.i72.i
  %node.1.in.i79.i = phi ptr [ %rb_left.i71.i, %if.then.i72.i ], [ %rb_right.i77.i, %if.then5.i78.i ]
  %431 = ptrtoint ptr %node.1.in.i79.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %node.0.i80.i = load ptr, ptr %node.1.in.i79.i, align 4
  %tobool.not.i81.i = icmp eq ptr %node.0.i80.i, null
  br i1 %tobool.not.i81.i, label %cleanup.i82.i.if.end12.i_crit_edge, label %cleanup.i82.i.while.body.i70.i_crit_edge

cleanup.i82.i.while.body.i70.i_crit_edge:         ; preds = %cleanup.i82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i70.i

cleanup.i82.i.if.end12.i_crit_edge:               ; preds = %cleanup.i82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true5.i:                                 ; preds = %if.else.i76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i74.i, i32 %add.i212)
  %cmp10.not.i = icmp eq i32 %add3.i74.i, %add.i212
  br i1 %cmp10.not.i, label %land.lhs.true5.i.if.end12.i_crit_edge, label %land.lhs.true5.i.out_unlock.i_crit_edge

land.lhs.true5.i.out_unlock.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

land.lhs.true5.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true5.i.if.end12.i_crit_edge, %cleanup.i82.i.if.end12.i_crit_edge, %if.end.thread.i
  %sub99.i = phi i32 [ %sub.i213, %land.lhs.true5.i.if.end12.i_crit_edge ], [ %sub98.i, %if.end.thread.i ], [ %sub.i213, %cleanup.i82.i.if.end12.i_crit_edge ]
  %call13.i = call ptr @rb_first(ptr noundef %dma_list.i.i) #14
  %tobool14.not103.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not103.i, label %if.end12.i.out_unlock.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.out_unlock.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %n.0104.i = phi ptr [ %call32.i, %for.inc.i.for.body.i_crit_edge ], [ %call13.i, %if.end12.i.for.body.i_crit_edge ]
  %iova16.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0104.i, i32 0, i32 1
  %432 = ptrtoint ptr %iova16.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %iova16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %433, i32 %conv114.i)
  %cmp17.i214 = icmp ult i32 %433, %conv114.i
  br i1 %cmp17.i214, label %for.body.i.for.inc.i_crit_edge, label %if.end19.i215

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end19.i215:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %433, i32 %sub99.i)
  %cmp23.i = icmp ugt i32 %433, %sub99.i
  br i1 %cmp23.i, label %if.end19.i215.out_unlock.i_crit_edge, label %if.end25.i

if.end19.i215.out_unlock.i_crit_edge:             ; preds = %if.end19.i215
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end25.i:                                       ; preds = %if.end19.i215
  %call26.i = call fastcc i32 @update_user_bitmap(ptr noundef %419, ptr noundef %iommu_data, ptr noundef nonnull %n.0104.i, i32 noundef %conv114.i, i32 noundef %conv119.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.out_unlock.i_crit_edge

if.end25.i.out_unlock.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end29.i:                                       ; preds = %if.end25.i
  %bitmap30.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0104.i, i32 0, i32 10
  %434 = ptrtoint ptr %bitmap30.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %bitmap30.i, align 4
  %size31.i = getelementptr inbounds %struct.vfio_dma, ptr %n.0104.i, i32 0, i32 3
  %436 = ptrtoint ptr %size31.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %size31.i, align 4
  %shr.i216 = lshr i32 %437, %420
  call void @__bitmap_clear(ptr noundef %435, i32 noundef 0, i32 noundef %shr.i216) #14
  %pfn_list.i.i221 = getelementptr inbounds %struct.vfio_dma, ptr %n.0104.i, i32 0, i32 9
  %call1.i.i = call ptr @rb_first(ptr noundef %pfn_list.i.i221) #14
  %tobool.not8.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not8.i.i, label %if.end29.i.for.inc.i_crit_edge, label %if.end29.i.for.body.i.i223_crit_edge

if.end29.i.for.body.i.i223_crit_edge:             ; preds = %if.end29.i
  br label %for.body.i.i223

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.body.i.i223:                                  ; preds = %for.body.i.i223.for.body.i.i223_crit_edge, %if.end29.i.for.body.i.i223_crit_edge
  %p.09.i.i = phi ptr [ %call3.i.i, %for.body.i.i223.for.body.i.i223_crit_edge ], [ %call1.i.i, %if.end29.i.for.body.i.i223_crit_edge ]
  %438 = ptrtoint ptr %bitmap30.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %bitmap30.i, align 4
  %iova.i85.i = getelementptr inbounds %struct.vfio_pfn, ptr %p.09.i.i, i32 0, i32 1
  %440 = ptrtoint ptr %iova.i85.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %iova.i85.i, align 4
  %442 = ptrtoint ptr %iova16.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %iova16.i, align 4
  %sub.i.i222 = sub i32 %441, %443
  %shr.i.i = lshr i32 %sub.i.i222, %420
  %rem.i.i.i.i = and i32 %shr.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %shr.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %439, i32 %div2.i.i.i.i
  %444 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %445
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %call3.i.i = call ptr @rb_next(ptr noundef nonnull %p.09.i.i) #14
  %tobool.not.i86.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i86.i, label %for.body.i.i223.for.inc.i_crit_edge, label %for.body.i.i223.for.body.i.i223_crit_edge

for.body.i.i223.for.body.i.i223_crit_edge:        ; preds = %for.body.i.i223
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i223

for.body.i.i223.for.inc.i_crit_edge:              ; preds = %for.body.i.i223
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.i223.for.inc.i_crit_edge, %if.end29.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call32.i = call ptr @rb_next(ptr noundef nonnull %n.0104.i) #14
  %tobool14.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool14.not.i, label %for.inc.i.out_unlock.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.out_unlock.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %for.inc.i.out_unlock.i_crit_edge, %if.end25.i.out_unlock.i_crit_edge, %if.end19.i215.out_unlock.i_crit_edge, %if.end12.i.out_unlock.i_crit_edge, %land.lhs.true5.i.out_unlock.i_crit_edge, %land.lhs.true.i.out_unlock.i_crit_edge, %if.end107.i.out_unlock.i_crit_edge, %if.end97.i.out_unlock.i_crit_edge, %if.end90.i.out_unlock.i_crit_edge, %if.end78.i.out_unlock.i_crit_edge
  %ret.1.i = phi i32 [ -22, %if.end78.i.out_unlock.i_crit_edge ], [ -22, %if.end90.i.out_unlock.i_crit_edge ], [ -22, %if.end97.i.out_unlock.i_crit_edge ], [ -22, %if.end107.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true5.i.out_unlock.i_crit_edge ], [ 0, %if.end12.i.out_unlock.i_crit_edge ], [ %call26.i, %if.end25.i.out_unlock.i_crit_edge ], [ 0, %for.inc.i.out_unlock.i_crit_edge ], [ 0, %if.end19.i215.out_unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock79.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %out_unlock.i, %lor.lhs.false3.i.i159.cleanup.i_crit_edge, %if.end67.i.cleanup.i_crit_edge, %if.end60.i.cleanup.i_crit_edge, %if.end54.i.cleanup.i_crit_edge, %if.then11.i.i183.i, %if.then43.i.cleanup.i_crit_edge
  %retval.0.i160 = phi i32 [ %ret.1.i, %out_unlock.i ], [ -22, %if.then43.i.cleanup.i_crit_edge ], [ -22, %if.end54.i.cleanup.i_crit_edge ], [ -22, %if.end60.i.cleanup.i_crit_edge ], [ -14, %if.then11.i.i183.i ], [ -22, %if.end67.i.cleanup.i_crit_edge ], [ -22, %lor.lhs.false3.i.i159.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %range.i) #14
  br label %vfio_iommu_type1_dirty_pages.exit

vfio_iommu_type1_dirty_pages.exit:                ; preds = %cleanup.i, %if.else39.i.vfio_iommu_type1_dirty_pages.exit_crit_edge, %if.end37.i145, %if.end26.i, %if.end6.i140.vfio_iommu_type1_dirty_pages.exit_crit_edge, %lor.lhs.false.i138.vfio_iommu_type1_dirty_pages.exit_crit_edge, %if.end3.i137.vfio_iommu_type1_dirty_pages.exit_crit_edge, %if.then11.i.i.i135, %sw.bb7.vfio_iommu_type1_dirty_pages.exit_crit_edge
  %retval.1.i161 = phi i32 [ %ret.0.i, %if.end26.i ], [ 0, %if.end37.i145 ], [ %retval.0.i160, %cleanup.i ], [ -13, %sw.bb7.vfio_iommu_type1_dirty_pages.exit_crit_edge ], [ -22, %lor.lhs.false.i138.vfio_iommu_type1_dirty_pages.exit_crit_edge ], [ -22, %if.end3.i137.vfio_iommu_type1_dirty_pages.exit_crit_edge ], [ -22, %if.end6.i140.vfio_iommu_type1_dirty_pages.exit_crit_edge ], [ -22, %if.else39.i.vfio_iommu_type1_dirty_pages.exit_crit_edge ], [ -14, %if.then11.i.i.i135 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dirty.i) #14
  br label %cleanup

cleanup:                                          ; preds = %vfio_iommu_type1_dirty_pages.exit, %vfio_iommu_type1_unmap_dma.exit, %vfio_iommu_type1_map_dma.exit, %vfio_iommu_type1_get_info.exit, %sw.default.i, %vfio_domains_have_iommu_cache.exit.i, %sw.bb1.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %sw.bb.cleanup_crit_edge415, %sw.bb.cleanup_crit_edge416, %sw.bb.cleanup_crit_edge417, %sw.bb.cleanup_crit_edge418, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i161, %vfio_iommu_type1_dirty_pages.exit ], [ %retval.1.i, %vfio_iommu_type1_unmap_dma.exit ], [ %retval.0.i49, %vfio_iommu_type1_map_dma.exit ], [ %retval.0.i21, %vfio_iommu_type1_get_info.exit ], [ -25, %entry.cleanup_crit_edge ], [ 0, %sw.default.i ], [ %ret.0.i.i, %vfio_domains_have_iommu_cache.exit.i ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge415 ], [ 1, %sw.bb.cleanup_crit_edge416 ], [ 1, %sw.bb.cleanup_crit_edge417 ], [ 1, %sw.bb.cleanup_crit_edge418 ], [ 0, %sw.bb1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_attach_group(ptr noundef %iommu_data, ptr noundef %iommu_group, i32 noundef %type) #2 align 64 {
entry:
  %bus = alloca ptr, align 4
  %iova_copy = alloca %struct.list_head, align 4
  %group_resv_regions = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus) #14
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova_copy) #14
  %1 = getelementptr inbounds %struct.list_head, ptr %iova_copy, i32 0, i32 1
  %2 = ptrtoint ptr %iova_copy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iova_copy, ptr %iova_copy, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iova_copy, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %group_resv_regions) #14
  %4 = getelementptr inbounds %struct.list_head, ptr %group_resv_regions, i32 0, i32 1
  %5 = ptrtoint ptr %group_resv_regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %group_resv_regions, ptr %group_resv_regions, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %group_resv_regions, ptr %4, align 4
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %find_iommu_group.exit.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %iommu_data, %entry ], [ %.pn.i, %find_iommu_group.exit.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %iommu_data
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %group_list.i.i = getelementptr i8, ptr %.pn.i, i32 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %.pn.in.i.i = phi ptr [ %group_list.i.i, %for.body.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %group_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.find_iommu_group.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.find_iommu_group.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_iommu_group.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %g.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %9 = ptrtoint ptr %g.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g.0.i.i, align 4
  %cmp4.i.i = icmp eq ptr %10, %iommu_group
  br i1 %cmp4.i.i, label %find_iommu_group.exit.i.split.loop.exit259, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

find_iommu_group.exit.i.split.loop.exit259:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %g.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  br label %find_iommu_group.exit.i

find_iommu_group.exit.i:                          ; preds = %find_iommu_group.exit.i.split.loop.exit259, %for.cond.i.i.find_iommu_group.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %g.0.i.i.le, %find_iommu_group.exit.i.split.loop.exit259 ], [ null, %for.cond.i.i.find_iommu_group.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %find_iommu_group.exit.i.for.cond.i_crit_edge, label %find_iommu_group.exit.i.out_unlock_crit_edge

find_iommu_group.exit.i.out_unlock_crit_edge:     ; preds = %find_iommu_group.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

find_iommu_group.exit.i.for.cond.i_crit_edge:     ; preds = %find_iommu_group.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %emulated_iommu_groups.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 14
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body17.i.for.cond12.i_crit_edge, %for.end.i
  %.pn41.in.i = phi ptr [ %emulated_iommu_groups.i, %for.end.i ], [ %.pn41.i, %for.body17.i.for.cond12.i_crit_edge ]
  %11 = ptrtoint ptr %.pn41.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn41.i = load ptr, ptr %.pn41.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn41.i, %emulated_iommu_groups.i
  br i1 %cmp15.not.i, label %for.cond12.i.if.end_crit_edge, label %for.body17.i

for.cond12.i.if.end_crit_edge:                    ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body17.i:                                     ; preds = %for.cond12.i
  %group.0.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %12 = ptrtoint ptr %group.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group.0.i, align 4
  %cmp19.i = icmp eq ptr %13, %iommu_group
  br i1 %cmp19.i, label %vfio_iommu_find_iommu_group.exit, label %for.body17.i.for.cond12.i_crit_edge

for.body17.i.for.cond12.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.i

vfio_iommu_find_iommu_group.exit:                 ; preds = %for.body17.i
  %group.0.i.le = getelementptr i8, ptr %.pn41.i, i32 -4
  %tobool.not = icmp eq ptr %group.0.i.le, null
  br i1 %tobool.not, label %vfio_iommu_find_iommu_group.exit.if.end_crit_edge, label %vfio_iommu_find_iommu_group.exit.out_unlock_crit_edge

vfio_iommu_find_iommu_group.exit.out_unlock_crit_edge: ; preds = %vfio_iommu_find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

vfio_iommu_find_iommu_group.exit.if.end_crit_edge: ; preds = %vfio_iommu_find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %vfio_iommu_find_iommu_group.exit.if.end_crit_edge, %for.cond12.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 16) #17
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %iommu_group, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %next9 = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %emulated_iommu_groups.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %emulated_iommu_groups.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %next9, ptr noundef %emulated_iommu_groups.i, ptr noundef %17) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_add.exit_crit_edge

if.then8.list_add.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %next9, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %next9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %next9, align 4
  %prev3.i.i = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %emulated_iommu_groups.i, ptr %prev3.i.i, align 8
  %21 = ptrtoint ptr %emulated_iommu_groups.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %next9, ptr %emulated_iommu_groups.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then8.list_add.exit_crit_edge
  %pinned_page_dirty_scope = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %pinned_page_dirty_scope to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pinned_page_dirty_scope, align 4
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @iommu_group_for_each_dev(ptr noundef %iommu_group, ptr noundef nonnull %bus, ptr noundef nonnull @vfio_bus_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_free_group_crit_edge

if.end10.out_free_group_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_group

if.end14:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i217 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #17
  %tobool16.not = icmp eq ptr %call7.i.i217, null
  br i1 %tobool16.not, label %if.end14.out_free_group_crit_edge, label %if.end18

if.end14.out_free_group_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_group

if.end18:                                         ; preds = %if.end14
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %call19 = call ptr @iommu_domain_alloc(ptr noundef %25) #14
  %26 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call19, ptr %call7.i.i217, align 8
  %tobool22.not = icmp eq ptr %call19, null
  br i1 %tobool22.not, label %if.end18.out_free_domain_crit_edge, label %if.end24

if.end18.out_free_domain_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_domain

if.end24:                                         ; preds = %if.end18
  %nesting = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 11
  %27 = ptrtoint ptr %nesting to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nesting, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not = icmp eq i8 %28, 0
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %call28 = call i32 @iommu_enable_nesting(ptr noundef nonnull %call19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then26.if.end32_crit_edge, label %if.then26.out_domain_crit_edge

if.then26.out_domain_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_domain

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %29 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i217, align 8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %call35 = call i32 @iommu_attach_group(ptr noundef %30, ptr noundef %32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.out_domain_crit_edge

if.end32.out_domain_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_domain

if.end38:                                         ; preds = %if.end32
  %33 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i217, align 8
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %34, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aperture_end, align 4
  %call40 = call fastcc zeroext i1 @vfio_iommu_aper_conflict(ptr noundef %iommu_data, i32 noundef %36, i32 noundef %38)
  br i1 %call40, label %if.end38.out_detach_crit_edge, label %if.end42

if.end38.out_detach_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @iommu_get_group_resv_regions(ptr noundef %iommu_group, ptr noundef nonnull %group_resv_regions) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_detach_crit_edge

if.end42.out_detach_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end46:                                         ; preds = %if.end42
  %call47 = call fastcc zeroext i1 @vfio_iommu_resv_conflict(ptr noundef %iommu_data, ptr noundef nonnull %group_resv_regions)
  br i1 %call47, label %if.end46.out_detach_crit_edge, label %if.end49

if.end46.out_detach_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end49:                                         ; preds = %if.end46
  %call50 = call fastcc i32 @vfio_iommu_iova_get_copy(ptr noundef %iommu_data, ptr noundef nonnull %iova_copy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.out_detach_crit_edge

if.end49.out_detach_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end53:                                         ; preds = %if.end49
  %39 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %geometry, align 4
  %41 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %aperture_end, align 4
  %call56 = call fastcc i32 @vfio_iommu_aper_resize(ptr noundef nonnull %iova_copy, i32 noundef %40, i32 noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.out_detach_crit_edge

if.end53.out_detach_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end59:                                         ; preds = %if.end53
  %call60 = call fastcc i32 @vfio_iommu_resv_exclude(ptr noundef nonnull %iova_copy, ptr noundef nonnull %group_resv_regions)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_detach_crit_edge

if.end59.out_detach_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end63:                                         ; preds = %if.end59
  %43 = ptrtoint ptr %group_resv_regions to i32
  call void @__asan_load4_noabort(i32 %43)
  %region.018.i = load ptr, ptr %group_resv_regions, align 4
  %cmp.not19.i = icmp eq ptr %region.018.i, %group_resv_regions
  br i1 %cmp.not19.i, label %if.end63.vfio_iommu_has_sw_msi.exit_crit_edge, label %if.end63.for.body.i218_crit_edge

if.end63.for.body.i218_crit_edge:                 ; preds = %if.end63
  br label %for.body.i218

if.end63.vfio_iommu_has_sw_msi.exit_crit_edge:    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_has_sw_msi.exit

for.body.i218:                                    ; preds = %for.inc.i.for.body.i218_crit_edge, %if.end63.for.body.i218_crit_edge
  %region.021.i = phi ptr [ %region.0.i, %for.inc.i.for.body.i218_crit_edge ], [ %region.018.i, %if.end63.for.body.i218_crit_edge ]
  %type.i = getelementptr inbounds %struct.iommu_resv_region, ptr %region.021.i, i32 0, i32 4
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cond = icmp eq i32 %45, 3
  br i1 %cond, label %for.body.i218.vfio_iommu_has_sw_msi.exit_crit_edge, label %for.inc.i

for.body.i218.vfio_iommu_has_sw_msi.exit_crit_edge: ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_has_sw_msi.exit

for.inc.i:                                        ; preds = %for.body.i218
  %46 = ptrtoint ptr %region.021.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %region.0.i = load ptr, ptr %region.021.i, align 4
  %cmp.not.i219 = icmp eq ptr %region.0.i, %group_resv_regions
  br i1 %cmp.not.i219, label %for.inc.i.vfio_iommu_has_sw_msi.exit_crit_edge, label %for.inc.i.for.body.i218_crit_edge

for.inc.i.for.body.i218_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i218

for.inc.i.vfio_iommu_has_sw_msi.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_has_sw_msi.exit

vfio_iommu_has_sw_msi.exit:                       ; preds = %for.inc.i.vfio_iommu_has_sw_msi.exit_crit_edge, %for.body.i218.vfio_iommu_has_sw_msi.exit_crit_edge, %if.end63.vfio_iommu_has_sw_msi.exit_crit_edge
  %group_list = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 2
  %47 = ptrtoint ptr %group_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %group_list, ptr %group_list, align 4
  %prev.i = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %group_list, ptr %prev.i, align 8
  %next65 = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 1
  %call.i.i221 = call zeroext i1 @__list_add_valid(ptr noundef %next65, ptr noundef %group_list, ptr noundef %group_list) #14
  br i1 %call.i.i221, label %if.end.i.i224, label %vfio_iommu_has_sw_msi.exit.list_add.exit225_crit_edge

vfio_iommu_has_sw_msi.exit.list_add.exit225_crit_edge: ; preds = %vfio_iommu_has_sw_msi.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit225

if.end.i.i224:                                    ; preds = %vfio_iommu_has_sw_msi.exit
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %next65, ptr %prev.i, align 8
  %50 = ptrtoint ptr %next65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %group_list, ptr %next65, align 4
  %prev3.i.i223 = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i223 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %group_list, ptr %prev3.i.i223, align 8
  %52 = ptrtoint ptr %group_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %next65, ptr %group_list, align 4
  br label %list_add.exit225

list_add.exit225:                                 ; preds = %if.end.i.i224, %vfio_iommu_has_sw_msi.exit.list_add.exit225_crit_edge
  %call67 = call zeroext i1 @irq_domain_check_msi_remap() #14
  br i1 %call67, label %list_add.exit225.if.end74_crit_edge, label %lor.end

list_add.exit225.if.end74_crit_edge:              ; preds = %list_add.exit225
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

lor.end:                                          ; preds = %list_add.exit225
  %53 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus, align 4
  %call68 = call zeroext i1 @iommu_capable(ptr noundef %54, i32 noundef 1) #14
  %55 = load i8, ptr @allow_unsafe_interrupts, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool70.not = icmp ne i8 %55, 0
  %brmerge = select i1 %tobool70.not, i1 true, i1 %call68
  br i1 %brmerge, label %lor.end.if.end74_crit_edge, label %do.end

lor.end.if.end74_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #20
  br label %out_detach

if.end74:                                         ; preds = %lor.end.if.end74_crit_edge, %list_add.exit225.if.end74_crit_edge
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %call75 = call zeroext i1 @iommu_capable(ptr noundef %57, i32 noundef 0) #14
  br i1 %call75, label %if.then76, label %if.end74.if.end77_crit_edge

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %prot = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 3
  %58 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prot, align 4
  %or = or i32 %59, 4
  store i32 %or, ptr %prot, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  %60 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn248 = load ptr, ptr %iommu_data, align 4
  %cmp82.not250 = icmp eq ptr %.pn248, %iommu_data
  br i1 %cmp82.not250, label %if.end77.for.end_crit_edge, label %for.body.lr.ph

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end77
  %prot89 = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn251 = phi ptr [ %.pn248, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %d.0252 = getelementptr i8, ptr %.pn251, i32 -4
  %61 = ptrtoint ptr %d.0252 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d.0252, align 4
  %ops = getelementptr inbounds %struct.iommu_domain, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops, align 4
  %65 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i217, align 8
  %ops85 = getelementptr inbounds %struct.iommu_domain, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %ops85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops85, align 4
  %cmp86 = icmp eq ptr %64, %68
  br i1 %cmp86, label %land.lhs.true87, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true87:                                  ; preds = %for.body
  %prot88 = getelementptr i8, ptr %.pn251, i32 16
  %69 = ptrtoint ptr %prot88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %prot88, align 4
  %71 = ptrtoint ptr %prot89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %prot89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp90 = icmp eq i32 %70, %72
  br i1 %cmp90, label %if.then91, label %land.lhs.true87.for.inc_crit_edge

land.lhs.true87.for.inc_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then91:                                        ; preds = %land.lhs.true87
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call7.i.i, align 8
  call void @iommu_detach_group(ptr noundef %66, ptr noundef %74) #14
  %75 = ptrtoint ptr %d.0252 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %d.0252, align 4
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i, align 8
  %call96 = call i32 @iommu_attach_group(ptr noundef %76, ptr noundef %78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end102

if.then98:                                        ; preds = %if.then91
  %group_list100 = getelementptr i8, ptr %.pn251, i32 8
  %79 = ptrtoint ptr %group_list100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %group_list100, align 4
  %call.i.i226 = call zeroext i1 @__list_add_valid(ptr noundef %next65, ptr noundef %group_list100, ptr noundef %80) #14
  br i1 %call.i.i226, label %if.end.i.i229, label %if.then98.list_add.exit230_crit_edge

if.then98.list_add.exit230_crit_edge:             ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit230

if.end.i.i229:                                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i227 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i227 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %next65, ptr %prev1.i.i227, align 4
  %82 = ptrtoint ptr %next65 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %next65, align 4
  %prev3.i.i228 = getelementptr inbounds %struct.vfio_iommu_group, ptr %call7.i.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev3.i.i228 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %group_list100, ptr %prev3.i.i228, align 8
  %84 = ptrtoint ptr %group_list100 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %next65, ptr %group_list100, align 4
  br label %list_add.exit230

list_add.exit230:                                 ; preds = %if.end.i.i229, %if.then98.list_add.exit230_crit_edge
  %85 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i217, align 8
  call void @iommu_domain_free(ptr noundef %86) #14
  call void @kfree(ptr noundef nonnull %call7.i.i217) #14
  br label %done

if.end102:                                        ; preds = %if.then91
  %87 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i217, align 8
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %call105 = call i32 @iommu_attach_group(ptr noundef %88, ptr noundef %90) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end102.for.inc_crit_edge, label %if.end102.out_domain_crit_edge

if.end102.out_domain_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_domain

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end102.for.inc_crit_edge, %land.lhs.true87.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %91 = ptrtoint ptr %.pn251 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn = load ptr, ptr %.pn251, align 4
  %cmp82.not = icmp eq ptr %.pn, %iommu_data
  br i1 %cmp82.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end77.for.end_crit_edge
  call fastcc void @vfio_test_domain_fgsp(ptr noundef nonnull %call7.i.i217)
  %call115 = call fastcc i32 @vfio_iommu_replay(ptr noundef %iommu_data, ptr noundef nonnull %call7.i.i217)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end128, label %for.end.out_detach_crit_edge

for.end.out_detach_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_detach

if.end128:                                        ; preds = %for.end
  %next129 = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 1
  %92 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iommu_data, align 4
  %call.i.i231 = call zeroext i1 @__list_add_valid(ptr noundef %next129, ptr noundef %iommu_data, ptr noundef %93) #14
  br i1 %call.i.i231, label %if.end.i.i234, label %if.end128.list_add.exit235_crit_edge

if.end128.list_add.exit235_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit235

if.end.i.i234:                                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i232 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i232 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %next129, ptr %prev1.i.i232, align 4
  %95 = ptrtoint ptr %next129 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %next129, align 4
  %prev3.i.i233 = getelementptr inbounds %struct.vfio_domain, ptr %call7.i.i217, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev3.i.i233 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %iommu_data, ptr %prev3.i.i233, align 8
  %97 = ptrtoint ptr %iommu_data to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %next129, ptr %iommu_data, align 4
  br label %list_add.exit235

list_add.exit235:                                 ; preds = %if.end.i.i234, %if.end128.list_add.exit235_crit_edge
  call fastcc void @vfio_update_pgsize_bitmap(ptr noundef %iommu_data)
  br label %done

done:                                             ; preds = %list_add.exit235, %list_add.exit230
  call fastcc void @vfio_iommu_iova_insert_copy(ptr noundef %iommu_data, ptr noundef nonnull %iova_copy)
  %num_non_pinned_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 8
  %98 = ptrtoint ptr %num_non_pinned_groups to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %num_non_pinned_groups, align 8
  %inc = add i64 %99, 1
  store i64 %inc, ptr %num_non_pinned_groups, align 8
  call void @mutex_unlock(ptr noundef %lock) #14
  call fastcc void @vfio_iommu_resv_free(ptr noundef nonnull %group_resv_regions)
  br label %cleanup

out_detach:                                       ; preds = %for.end.out_detach_crit_edge, %do.end, %if.end59.out_detach_crit_edge, %if.end53.out_detach_crit_edge, %if.end49.out_detach_crit_edge, %if.end46.out_detach_crit_edge, %if.end42.out_detach_crit_edge, %if.end38.out_detach_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end42.out_detach_crit_edge ], [ %call50, %if.end49.out_detach_crit_edge ], [ %call56, %if.end53.out_detach_crit_edge ], [ %call60, %if.end59.out_detach_crit_edge ], [ %call115, %for.end.out_detach_crit_edge ], [ -1, %do.end ], [ -22, %if.end38.out_detach_crit_edge ], [ -22, %if.end46.out_detach_crit_edge ]
  %100 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call7.i.i217, align 8
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  call void @iommu_detach_group(ptr noundef %101, ptr noundef %103) #14
  br label %out_domain

out_domain:                                       ; preds = %out_detach, %if.end102.out_domain_crit_edge, %if.end32.out_domain_crit_edge, %if.then26.out_domain_crit_edge
  %ret.1 = phi i32 [ %call28, %if.then26.out_domain_crit_edge ], [ %call35, %if.end32.out_domain_crit_edge ], [ %ret.0, %out_detach ], [ %call105, %if.end102.out_domain_crit_edge ]
  %104 = ptrtoint ptr %call7.i.i217 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i.i217, align 8
  call void @iommu_domain_free(ptr noundef %105) #14
  call fastcc void @vfio_iommu_iova_free(ptr noundef nonnull %iova_copy)
  call fastcc void @vfio_iommu_resv_free(ptr noundef nonnull %group_resv_regions)
  br label %out_free_domain

out_free_domain:                                  ; preds = %out_domain, %if.end18.out_free_domain_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_domain ], [ -5, %if.end18.out_free_domain_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i217) #14
  br label %out_free_group

out_free_group:                                   ; preds = %out_free_domain, %if.end14.out_free_group_crit_edge, %if.end10.out_free_group_crit_edge
  %ret.3 = phi i32 [ %call11, %if.end10.out_free_group_crit_edge ], [ %ret.2, %out_free_domain ], [ -12, %if.end14.out_free_group_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out_unlock

out_unlock:                                       ; preds = %out_free_group, %list_add.exit, %if.end.out_unlock_crit_edge, %vfio_iommu_find_iommu_group.exit.out_unlock_crit_edge, %find_iommu_group.exit.i.out_unlock_crit_edge
  %ret.4 = phi i32 [ -22, %vfio_iommu_find_iommu_group.exit.out_unlock_crit_edge ], [ 0, %list_add.exit ], [ %ret.3, %out_free_group ], [ -12, %if.end.out_unlock_crit_edge ], [ -22, %find_iommu_group.exit.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %done
  %retval.0 = phi i32 [ %ret.4, %out_unlock ], [ 0, %done ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %group_resv_regions) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova_copy) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_iommu_type1_detach_group(ptr noundef %iommu_data, ptr noundef readnone %iommu_group) #2 align 64 {
entry:
  %resv_regions.i = alloca %struct.list_head, align 4
  %iova_copy = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova_copy) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %iova_copy, i32 0, i32 1
  %1 = ptrtoint ptr %iova_copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iova_copy, ptr %iova_copy, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iova_copy, ptr %0, align 4
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %emulated_iommu_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %emulated_iommu_groups, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %emulated_iommu_groups
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %group.0 = getelementptr i8, ptr %.pn, i32 -4
  %4 = ptrtoint ptr %group.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.0, align 4
  %cmp5.not = icmp eq ptr %5, %iommu_group
  br i1 %cmp5.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.end:                                           ; preds = %for.body
  %group.0.le = getelementptr i8, ptr %.pn, i32 -4
  %pinned_page_dirty_scope = getelementptr i8, ptr %.pn, i32 8
  %6 = ptrtoint ptr %pinned_page_dirty_scope to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pinned_page_dirty_scope, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %group.0.le) #14
  %16 = ptrtoint ptr %emulated_iommu_groups to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %emulated_iommu_groups, align 4
  %cmp.i.not = icmp eq ptr %17, %emulated_iommu_groups
  br i1 %cmp.i.not, label %land.lhs.true, label %list_del.exit.detach_group_done_crit_edge

list_del.exit.detach_group_done_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

land.lhs.true:                                    ; preds = %list_del.exit
  %18 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %iommu_data, align 4
  %cmp.i179.not = icmp eq ptr %19, %iommu_data
  br i1 %cmp.i179.not, label %if.then12, label %land.lhs.true.detach_group_done_crit_edge

land.lhs.true.detach_group_done_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

if.then12:                                        ; preds = %land.lhs.true
  %head = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head, align 8
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.then12.if.end29_crit_edge, label %do.end, !prof !93

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2473, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then12.if.end29_crit_edge
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call2.i = call ptr @rb_first(ptr noundef %dma_list.i) #14
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %if.end29.detach_group_done_crit_edge, label %if.end29.while.body.i_crit_edge

if.end29.while.body.i_crit_edge:                  ; preds = %if.end29
  br label %while.body.i

if.end29.detach_group_done_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end29.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %if.end29.while.body.i_crit_edge ]
  call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef nonnull %call4.i) #14
  %call.i = call ptr @rb_first(ptr noundef %dma_list.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.detach_group_done_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.detach_group_done_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

for.end:                                          ; preds = %for.cond
  %call43 = call fastcc i32 @vfio_iommu_iova_get_copy(ptr noundef %iommu_data, ptr noundef nonnull %iova_copy)
  br label %for.cond49

for.cond49:                                       ; preds = %find_iommu_group.exit.for.cond49_crit_edge, %for.end
  %.pn178.in = phi ptr [ %iommu_data, %for.end ], [ %.pn178, %find_iommu_group.exit.for.cond49_crit_edge ]
  %22 = ptrtoint ptr %.pn178.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn178 = load ptr, ptr %.pn178.in, align 4
  %cmp52.not = icmp eq ptr %.pn178, %iommu_data
  br i1 %cmp52.not, label %for.cond49.for.end123_crit_edge, label %for.body55

for.cond49.for.end123_crit_edge:                  ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end123

for.body55:                                       ; preds = %for.cond49
  %group_list.i = getelementptr i8, ptr %.pn178, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body55
  %.pn.in.i = phi ptr [ %group_list.i, %for.body55 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %group_list.i
  br i1 %cmp.not.i, label %for.cond.i.find_iommu_group.exit_crit_edge, label %for.body.i

for.cond.i.find_iommu_group.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_iommu_group.exit

for.body.i:                                       ; preds = %for.cond.i
  %g.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %24 = ptrtoint ptr %g.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %g.0.i, align 4
  %cmp4.i = icmp eq ptr %25, %iommu_group
  br i1 %cmp4.i, label %find_iommu_group.exit.split.loop.exit291, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_iommu_group.exit.split.loop.exit291:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %g.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  br label %find_iommu_group.exit

find_iommu_group.exit:                            ; preds = %find_iommu_group.exit.split.loop.exit291, %for.cond.i.find_iommu_group.exit_crit_edge
  %retval.0.i = phi ptr [ %g.0.i.le, %find_iommu_group.exit.split.loop.exit291 ], [ null, %for.cond.i.find_iommu_group.exit_crit_edge ]
  %tobool57.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool57.not, label %find_iommu_group.exit.for.cond49_crit_edge, label %if.end59

find_iommu_group.exit.for.cond49_crit_edge:       ; preds = %find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond49

if.end59:                                         ; preds = %find_iommu_group.exit
  %domain.0.le = getelementptr i8, ptr %.pn178, i32 -4
  %26 = ptrtoint ptr %domain.0.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain.0.le, align 4
  %28 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %retval.0.i, align 4
  call void @iommu_detach_group(ptr noundef %27, ptr noundef %29) #14
  %pinned_page_dirty_scope62 = getelementptr inbounds %struct.vfio_iommu_group, ptr %retval.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %pinned_page_dirty_scope62 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pinned_page_dirty_scope62, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool63.not = icmp eq i8 %31, 0
  %next67 = getelementptr inbounds %struct.vfio_iommu_group, ptr %retval.0.i, i32 0, i32 1
  %call.i.i181 = call zeroext i1 @__list_del_entry_valid(ptr noundef %next67) #14
  br i1 %call.i.i181, label %if.end.i.i184, label %if.end59.list_del.exit186_crit_edge

if.end59.list_del.exit186_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit186

if.end.i.i184:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i182 = getelementptr inbounds %struct.vfio_iommu_group, ptr %retval.0.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i182 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i182, align 4
  %34 = ptrtoint ptr %next67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next67, align 4
  %prev1.i.i.i183 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i183, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit186

list_del.exit186:                                 ; preds = %if.end.i.i184, %if.end59.list_del.exit186_crit_edge
  %38 = ptrtoint ptr %next67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %next67, align 4
  %prev.i185 = getelementptr inbounds %struct.vfio_iommu_group, ptr %retval.0.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i185, align 4
  call void @kfree(ptr noundef nonnull %retval.0.i) #14
  %40 = ptrtoint ptr %group_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %group_list.i, align 4
  %cmp.i187.not = icmp eq ptr %41, %group_list.i
  br i1 %cmp.i187.not, label %if.then70, label %list_del.exit186.for.end123_crit_edge

list_del.exit186.for.end123_crit_edge:            ; preds = %list_del.exit186
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end123

if.then70:                                        ; preds = %list_del.exit186
  %42 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %iommu_data, align 4
  %cmp.i.not.i = icmp eq ptr %43, %iommu_data
  br i1 %cmp.i.not.i, label %if.then70.if.end113_crit_edge, label %list_is_singular.exit

if.then70.if.end113_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

list_is_singular.exit:                            ; preds = %if.then70
  %prev.i189 = getelementptr inbounds %struct.list_head, ptr %iommu_data, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i189 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i189, align 4
  %cmp.i190.not = icmp eq ptr %43, %45
  br i1 %cmp.i190.not, label %if.then74, label %list_is_singular.exit.if.end113_crit_edge

list_is_singular.exit.if.end113_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then74:                                        ; preds = %list_is_singular.exit
  %46 = ptrtoint ptr %emulated_iommu_groups to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %emulated_iommu_groups, align 4
  %cmp.i191.not = icmp eq ptr %47, %emulated_iommu_groups
  br i1 %cmp.i191.not, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.then74
  %head81 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %head81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head81, align 8
  %tobool82.not = icmp eq ptr %49, null
  br i1 %tobool82.not, label %if.then78.if.end104_crit_edge, label %do.end98, !prof !93

if.then78.if.end104_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

do.end98:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2505, i32 noundef 9, ptr noundef null) #14
  br label %if.end104

if.end104:                                        ; preds = %do.end98, %if.then78.if.end104_crit_edge
  %dma_list.i193 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call2.i194 = call ptr @rb_first(ptr noundef %dma_list.i193) #14
  %tobool.not3.i195 = icmp eq ptr %call2.i194, null
  br i1 %tobool.not3.i195, label %if.end104.if.end113_crit_edge, label %if.end104.while.body.i199_crit_edge

if.end104.while.body.i199_crit_edge:              ; preds = %if.end104
  br label %while.body.i199

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

while.body.i199:                                  ; preds = %while.body.i199.while.body.i199_crit_edge, %if.end104.while.body.i199_crit_edge
  %call4.i196 = phi ptr [ %call.i197, %while.body.i199.while.body.i199_crit_edge ], [ %call2.i194, %if.end104.while.body.i199_crit_edge ]
  call fastcc void @vfio_remove_dma(ptr noundef %iommu_data, ptr noundef nonnull %call4.i196) #14
  %call.i197 = call ptr @rb_first(ptr noundef %dma_list.i193) #14
  %tobool.not.i198 = icmp eq ptr %call.i197, null
  br i1 %tobool.not.i198, label %while.body.i199.if.end113_crit_edge, label %while.body.i199.while.body.i199_crit_edge

while.body.i199.while.body.i199_crit_edge:        ; preds = %while.body.i199
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i199

while.body.i199.if.end113_crit_edge:              ; preds = %while.body.i199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.else:                                          ; preds = %if.then74
  %dma_list.i201 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call.i202 = call ptr @rb_first(ptr noundef %dma_list.i201) #14
  %tobool.not30.i = icmp eq ptr %call.i202, null
  br i1 %tobool.not30.i, label %if.else.if.end113_crit_edge, label %if.else.for.body.i204_crit_edge

if.else.for.body.i204_crit_edge:                  ; preds = %if.else
  br label %for.body.i204

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

for.body.i204:                                    ; preds = %for.end.i.for.body.i204_crit_edge, %if.else.for.body.i204_crit_edge
  %n.031.i = phi ptr [ %call13.i, %for.end.i.for.body.i204_crit_edge ], [ %call.i202, %if.else.for.body.i204_crit_edge ]
  %call1.i = call fastcc i32 @vfio_unmap_unpin(ptr noundef %iommu_data, ptr noundef nonnull %n.031.i, i1 noundef zeroext false) #14
  %pfn_list.i = getelementptr inbounds %struct.vfio_dma, ptr %n.031.i, i32 0, i32 9
  %call2.i203 = call ptr @rb_first(ptr noundef %pfn_list.i) #14
  %tobool4.not27.i = icmp eq ptr %call2.i203, null
  br i1 %tobool4.not27.i, label %for.body.i204.for.end.i_crit_edge, label %for.body.i204.for.body5.i_crit_edge

for.body.i204.for.body5.i_crit_edge:              ; preds = %for.body.i204
  br label %for.body5.i

for.body.i204.for.end.i_crit_edge:                ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body.i204.for.body5.i_crit_edge
  %p.029.i = phi ptr [ %call10.i, %for.cond3.i.for.body5.i_crit_edge ], [ %call2.i203, %for.body.i204.for.body5.i_crit_edge ]
  %locked.028.i = phi i32 [ %59, %for.cond3.i.for.body5.i_crit_edge ], [ 0, %for.body.i204.for.body5.i_crit_edge ]
  %pfn.i = getelementptr inbounds %struct.vfio_pfn, ptr %p.029.i, i32 0, i32 2
  %50 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pfn.i, align 4
  %call.i.i205 = call i32 @pfn_valid(i32 noundef %51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %tobool.not.i.i = icmp eq i32 %call.i.i205, 0
  br i1 %tobool.not.i.i, label %for.body5.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge, label %if.then.i.i

for.body5.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_invalid_reserved_pfn.exit.thread.i

if.then.i.i:                                      ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %53 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %51, %53
  %add.ptr.i.i = getelementptr %struct.page, ptr %52, i32 %sub.i.i
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i.i.i = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_invalid_reserved_pfn.exit.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i:                   ; preds = %if.then.i.i
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr.i.i, align 4
  %58 = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.i.not.i = icmp eq i32 %58, 0
  %inc.i = add i32 %locked.028.i, 1
  br i1 %tobool2.i.not.i, label %is_invalid_reserved_pfn.exit.i.for.cond3.i_crit_edge, label %is_invalid_reserved_pfn.exit.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge

is_invalid_reserved_pfn.exit.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_invalid_reserved_pfn.exit.thread.i

is_invalid_reserved_pfn.exit.i.for.cond3.i_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond3.i

is_invalid_reserved_pfn.exit.thread.i:            ; preds = %is_invalid_reserved_pfn.exit.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge, %for.body5.i.is_invalid_reserved_pfn.exit.thread.i_crit_edge
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %is_invalid_reserved_pfn.exit.thread.i, %is_invalid_reserved_pfn.exit.i.for.cond3.i_crit_edge
  %59 = phi i32 [ %locked.028.i, %is_invalid_reserved_pfn.exit.thread.i ], [ %inc.i, %is_invalid_reserved_pfn.exit.i.for.cond3.i_crit_edge ]
  %call10.i = call ptr @rb_next(ptr noundef nonnull %p.029.i) #14
  %tobool4.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool4.not.i, label %for.cond3.i.for.end.i_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.cond3.i.for.end.i_crit_edge:                  ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond3.i.for.end.i_crit_edge, %for.body.i204.for.end.i_crit_edge
  %locked.0.lcssa.i = phi i32 [ 0, %for.body.i204.for.end.i_crit_edge ], [ %59, %for.cond3.i.for.end.i_crit_edge ]
  %sub.i = sub i32 %locked.0.lcssa.i, %call1.i
  %call11.i = call fastcc i32 @vfio_lock_acct(ptr noundef nonnull %n.031.i, i32 noundef %sub.i, i1 noundef zeroext true) #14
  %call13.i = call ptr @rb_next(ptr noundef nonnull %n.031.i) #14
  %tobool.not.i206 = icmp eq ptr %call13.i, null
  br i1 %tobool.not.i206, label %for.end.i.if.end113_crit_edge, label %for.end.i.for.body.i204_crit_edge

for.end.i.for.body.i204_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i204

for.end.i.if.end113_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.end113:                                        ; preds = %for.end.i.if.end113_crit_edge, %if.else.if.end113_crit_edge, %while.body.i199.if.end113_crit_edge, %if.end104.if.end113_crit_edge, %list_is_singular.exit.if.end113_crit_edge, %if.then70.if.end113_crit_edge
  %60 = ptrtoint ptr %domain.0.le to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %domain.0.le, align 4
  call void @iommu_domain_free(ptr noundef %61) #14
  %call.i.i207 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn178) #14
  br i1 %call.i.i207, label %if.end.i.i210, label %if.end113.list_del.exit212_crit_edge

if.end113.list_del.exit212_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit212

if.end.i.i210:                                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i208 = getelementptr inbounds %struct.list_head, ptr %.pn178, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i208 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i208, align 4
  %64 = ptrtoint ptr %.pn178 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn178, align 4
  %prev1.i.i.i209 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i209 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i209, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit212

list_del.exit212:                                 ; preds = %if.end.i.i210, %if.end113.list_del.exit212_crit_edge
  %68 = ptrtoint ptr %.pn178 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn178, align 4
  %prev.i211 = getelementptr inbounds %struct.list_head, ptr %.pn178, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i211, align 4
  call void @kfree(ptr noundef %domain.0.le) #14
  %70 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %iova_copy, align 4
  %cmp.i.not.i213 = icmp eq ptr %71, %iova_copy
  br i1 %cmp.i.not.i213, label %list_del.exit212.vfio_iommu_aper_expand.exit_crit_edge, label %for.cond.preheader.i

list_del.exit212.vfio_iommu_aper_expand.exit_crit_edge: ; preds = %list_del.exit212
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_aper_expand.exit

for.cond.preheader.i:                             ; preds = %list_del.exit212
  %72 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn41.i = load ptr, ptr %iommu_data, align 4
  %cmp.not42.i = icmp eq ptr %.pn41.i, %iommu_data
  br i1 %cmp.not42.i, label %for.cond.preheader.i.for.end.i218_crit_edge, label %for.cond.preheader.i.for.body.i216_crit_edge

for.cond.preheader.i.for.body.i216_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i216

for.cond.preheader.i.for.end.i218_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i218

for.body.i216:                                    ; preds = %for.body.i216.for.body.i216_crit_edge, %for.cond.preheader.i.for.body.i216_crit_edge
  %.pn45.i = phi ptr [ %.pn.i214, %for.body.i216.for.body.i216_crit_edge ], [ %.pn41.i, %for.cond.preheader.i.for.body.i216_crit_edge ]
  %start.044.i = phi i32 [ %77, %for.body.i216.for.body.i216_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i216_crit_edge ]
  %end.043.i = phi i32 [ %80, %for.body.i216.for.body.i216_crit_edge ], [ -1, %for.cond.preheader.i.for.body.i216_crit_edge ]
  %domain.0.i = getelementptr i8, ptr %.pn45.i, i32 -4
  %73 = ptrtoint ptr %domain.0.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %domain.0.i, align 4
  %geometry.i = getelementptr inbounds %struct.iommu_domain, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %geometry.i, align 4
  %77 = call i32 @llvm.umax.i32(i32 %76, i32 %start.044.i) #14
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %74, i32 0, i32 5, i32 1
  %78 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %aperture_end.i, align 4
  %80 = call i32 @llvm.umin.i32(i32 %79, i32 %end.043.i) #14
  %81 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i214 = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i215 = icmp eq ptr %.pn.i214, %iommu_data
  br i1 %cmp.not.i215, label %for.body.i216.for.end.i218_crit_edge, label %for.body.i216.for.body.i216_crit_edge

for.body.i216.for.body.i216_crit_edge:            ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i216

for.body.i216.for.end.i218_crit_edge:             ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i218

for.end.i218:                                     ; preds = %for.body.i216.for.end.i218_crit_edge, %for.cond.preheader.i.for.end.i218_crit_edge
  %end.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.for.end.i218_crit_edge ], [ %80, %for.body.i216.for.end.i218_crit_edge ]
  %start.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i218_crit_edge ], [ %77, %for.body.i216.for.end.i218_crit_edge ]
  %start21.i = getelementptr inbounds %struct.vfio_iova, ptr %71, i32 0, i32 1
  %82 = ptrtoint ptr %start21.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %start.0.lcssa.i, ptr %start21.i, align 4
  %83 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %0, align 4
  %end25.i = getelementptr inbounds %struct.vfio_iova, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %end25.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %end.0.lcssa.i, ptr %end25.i, align 4
  br label %vfio_iommu_aper_expand.exit

vfio_iommu_aper_expand.exit:                      ; preds = %for.end.i218, %list_del.exit212.vfio_iommu_aper_expand.exit_crit_edge
  %pgsize_bitmap.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %86 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 4294967295, ptr %pgsize_bitmap.i, align 8
  %87 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn24.i = load ptr, ptr %iommu_data, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %iommu_data
  br i1 %cmp.not25.i, label %vfio_iommu_aper_expand.exit.if.then.i_crit_edge, label %vfio_iommu_aper_expand.exit.for.body.i223_crit_edge

vfio_iommu_aper_expand.exit.for.body.i223_crit_edge: ; preds = %vfio_iommu_aper_expand.exit
  br label %for.body.i223

vfio_iommu_aper_expand.exit.if.then.i_crit_edge:  ; preds = %vfio_iommu_aper_expand.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.body.i223:                                    ; preds = %for.body.i223.for.body.i223_crit_edge, %vfio_iommu_aper_expand.exit.for.body.i223_crit_edge
  %.pn27.i = phi ptr [ %.pn.i221, %for.body.i223.for.body.i223_crit_edge ], [ %.pn24.i, %vfio_iommu_aper_expand.exit.for.body.i223_crit_edge ]
  %storemerge26.i = phi i64 [ %and.i, %for.body.i223.for.body.i223_crit_edge ], [ 4294967295, %vfio_iommu_aper_expand.exit.for.body.i223_crit_edge ]
  %domain.0.i219 = getelementptr i8, ptr %.pn27.i, i32 -4
  %88 = ptrtoint ptr %domain.0.i219 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %domain.0.i219, align 4
  %pgsize_bitmap4.i = getelementptr inbounds %struct.iommu_domain, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %pgsize_bitmap4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pgsize_bitmap4.i, align 4
  %conv.i220 = zext i32 %91 to i64
  %and.i = and i64 %storemerge26.i, %conv.i220
  %92 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %and.i, ptr %pgsize_bitmap.i, align 8
  %93 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i221 = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i222 = icmp eq ptr %.pn.i221, %iommu_data
  br i1 %cmp.not.i222, label %for.end.i225, label %for.body.i223.for.body.i223_crit_edge

for.body.i223.for.body.i223_crit_edge:            ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i223

for.end.i225:                                     ; preds = %for.body.i223
  %and12.i = and i64 %and.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %tobool.not.i224 = icmp eq i64 %and12.i, 0
  br i1 %tobool.not.i224, label %for.end.i225.for.end123_crit_edge, label %for.end.i225.if.then.i_crit_edge

for.end.i225.if.then.i_crit_edge:                 ; preds = %for.end.i225
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.end.i225.for.end123_crit_edge:                ; preds = %for.end.i225
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end123

if.then.i:                                        ; preds = %for.end.i225.if.then.i_crit_edge, %vfio_iommu_aper_expand.exit.if.then.i_crit_edge
  %storemerge.lcssa31.i = phi i64 [ %and.i, %for.end.i225.if.then.i_crit_edge ], [ 4294967295, %vfio_iommu_aper_expand.exit.if.then.i_crit_edge ]
  %and14.i = and i64 %storemerge.lcssa31.i, -8192
  %or.i = or i64 %and14.i, 4096
  %94 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %or.i, ptr %pgsize_bitmap.i, align 8
  br label %for.end123

for.end123:                                       ; preds = %if.then.i, %for.end.i225.for.end123_crit_edge, %list_del.exit186.for.end123_crit_edge, %for.cond49.for.end123_crit_edge
  %update_dirty_scope.0.shrunk = phi i1 [ %tobool63.not, %list_del.exit186.for.end123_crit_edge ], [ %tobool63.not, %for.end.i225.for.end123_crit_edge ], [ %tobool63.not, %if.then.i ], [ false, %for.cond49.for.end123_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resv_regions.i) #14
  %95 = getelementptr inbounds %struct.list_head, ptr %resv_regions.i, i32 0, i32 1
  %96 = ptrtoint ptr %resv_regions.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resv_regions.i, ptr %resv_regions.i, align 4
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %resv_regions.i, ptr %95, align 4
  %98 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %iova_copy, align 4
  %cmp.i.not.i226 = icmp eq ptr %99, %iova_copy
  br i1 %cmp.i.not.i226, label %vfio_iommu_resv_refresh.exit.thread, label %for.cond.preheader.i227

vfio_iommu_resv_refresh.exit.thread:              ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resv_regions.i) #14
  br label %if.else127

for.cond.preheader.i227:                          ; preds = %for.end123
  %100 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn77.i = load ptr, ptr %iommu_data, align 4
  %cmp.not78.i = icmp eq ptr %.pn77.i, %iommu_data
  br i1 %cmp.not78.i, label %for.cond.preheader.i227.for.end29.i_crit_edge, label %for.cond.preheader.i227.for.body.i231_crit_edge

for.cond.preheader.i227.for.body.i231_crit_edge:  ; preds = %for.cond.preheader.i227
  br label %for.body.i231

for.cond.preheader.i227.for.end29.i_crit_edge:    ; preds = %for.cond.preheader.i227
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end29.i

for.cond.loopexit.i:                              ; preds = %for.cond8.i
  %101 = ptrtoint ptr %.pn79.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn.i228 = load ptr, ptr %.pn79.i, align 4
  %cmp.not.i229 = icmp eq ptr %.pn.i228, %iommu_data
  br i1 %cmp.not.i229, label %for.cond.loopexit.i.for.end29.i_crit_edge, label %for.cond.loopexit.i.for.body.i231_crit_edge

for.cond.loopexit.i.for.body.i231_crit_edge:      ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i231

for.cond.loopexit.i.for.end29.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end29.i

for.body.i231:                                    ; preds = %for.cond.loopexit.i.for.body.i231_crit_edge, %for.cond.preheader.i227.for.body.i231_crit_edge
  %.pn79.i = phi ptr [ %.pn.i228, %for.cond.loopexit.i.for.body.i231_crit_edge ], [ %.pn77.i, %for.cond.preheader.i227.for.body.i231_crit_edge ]
  %group_list.i230 = getelementptr i8, ptr %.pn79.i, i32 8
  br label %for.cond8.i

for.cond8.i:                                      ; preds = %for.body13.i.for.cond8.i_crit_edge, %for.body.i231
  %.pn65.in.i = phi ptr [ %group_list.i230, %for.body.i231 ], [ %.pn65.i, %for.body13.i.for.cond8.i_crit_edge ]
  %102 = ptrtoint ptr %.pn65.in.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn65.i = load ptr, ptr %.pn65.in.i, align 4
  %cmp11.not.i = icmp eq ptr %.pn65.i, %group_list.i230
  br i1 %cmp11.not.i, label %for.cond.loopexit.i, label %for.body13.i

for.body13.i:                                     ; preds = %for.cond8.i
  %g.0.i232 = getelementptr i8, ptr %.pn65.i, i32 -4
  %103 = ptrtoint ptr %g.0.i232 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %g.0.i232, align 4
  %call14.i = call i32 @iommu_get_group_resv_regions(ptr noundef %104, ptr noundef nonnull %resv_regions.i) #14
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.body13.i.for.cond8.i_crit_edge, label %for.body13.i.done.i_crit_edge

for.body13.i.done.i_crit_edge:                    ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

for.body13.i.for.cond8.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond8.i

for.end29.i:                                      ; preds = %for.cond.loopexit.i.for.end29.i_crit_edge, %for.cond.preheader.i227.for.end29.i_crit_edge
  %105 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %iova_copy, align 4
  %start34.i = getelementptr inbounds %struct.vfio_iova, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %start34.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %start34.i, align 4
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %0, align 4
  %end39.i = getelementptr inbounds %struct.vfio_iova, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %end39.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %end39.i, align 4
  %cmp.not18.i.i = icmp eq ptr %106, %iova_copy
  br i1 %cmp.not18.i.i, label %for.end29.i.vfio_iommu_iova_free.exit.i_crit_edge, label %for.end29.i.for.body.i.i_crit_edge

for.end29.i.for.body.i.i_crit_edge:               ; preds = %for.end29.i
  br label %for.body.i.i

for.end29.i.vfio_iommu_iova_free.exit.i_crit_edge: ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %for.end29.i.for.body.i.i_crit_edge
  %n.019.i.i = phi ptr [ %next.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %106, %for.end29.i.for.body.i.i_crit_edge ]
  %113 = ptrtoint ptr %n.019.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %next.0.i.i = load ptr, ptr %n.019.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.019.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i.i.i, align 4
  %116 = ptrtoint ptr %n.019.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %n.019.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %120 = ptrtoint ptr %n.019.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.019.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %n.019.i.i) #14
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %iova_copy
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.vfio_iommu_iova_free.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

list_del.exit.i.i.vfio_iommu_iova_free.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit.i

vfio_iommu_iova_free.exit.i:                      ; preds = %list_del.exit.i.i.vfio_iommu_iova_free.exit.i_crit_edge, %for.end29.i.vfio_iommu_iova_free.exit.i_crit_edge
  %call40.i = call fastcc i32 @vfio_iommu_aper_resize(ptr noundef nonnull %iova_copy, i32 noundef %108, i32 noundef %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %vfio_iommu_iova_free.exit.i.done.i_crit_edge

vfio_iommu_iova_free.exit.i.done.i_crit_edge:     ; preds = %vfio_iommu_iova_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

if.end43.i:                                       ; preds = %vfio_iommu_iova_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call44.i = call fastcc i32 @vfio_iommu_resv_exclude(ptr noundef nonnull %iova_copy, ptr noundef nonnull %resv_regions.i) #14
  br label %done.i

done.i:                                           ; preds = %if.end43.i, %vfio_iommu_iova_free.exit.i.done.i_crit_edge, %for.body13.i.done.i_crit_edge
  %ret.0.i = phi i32 [ %call40.i, %vfio_iommu_iova_free.exit.i.done.i_crit_edge ], [ %call44.i, %if.end43.i ], [ 1, %for.body13.i.done.i_crit_edge ]
  %122 = ptrtoint ptr %resv_regions.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %resv_regions.i, align 4
  %cmp.not18.i66.i = icmp eq ptr %123, %resv_regions.i
  br i1 %cmp.not18.i66.i, label %done.i.vfio_iommu_resv_refresh.exit_crit_edge, label %done.i.for.body.i70.i_crit_edge

done.i.for.body.i70.i_crit_edge:                  ; preds = %done.i
  br label %for.body.i70.i

done.i.vfio_iommu_resv_refresh.exit_crit_edge:    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_resv_refresh.exit

for.body.i70.i:                                   ; preds = %list_del.exit.i76.i.for.body.i70.i_crit_edge, %done.i.for.body.i70.i_crit_edge
  %n.019.i67.i = phi ptr [ %next.0.i68.i, %list_del.exit.i76.i.for.body.i70.i_crit_edge ], [ %123, %done.i.for.body.i70.i_crit_edge ]
  %124 = ptrtoint ptr %n.019.i67.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %next.0.i68.i = load ptr, ptr %n.019.i67.i, align 4
  %call.i.i.i69.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i67.i) #14
  br i1 %call.i.i.i69.i, label %if.end.i.i.i73.i, label %for.body.i70.i.list_del.exit.i76.i_crit_edge

for.body.i70.i.list_del.exit.i76.i_crit_edge:     ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i76.i

if.end.i.i.i73.i:                                 ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i71.i = getelementptr inbounds %struct.list_head, ptr %n.019.i67.i, i32 0, i32 1
  %125 = ptrtoint ptr %prev.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i.i71.i, align 4
  %127 = ptrtoint ptr %n.019.i67.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %n.019.i67.i, align 4
  %prev1.i.i.i.i72.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i.i.i72.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %128, ptr %126, align 4
  br label %list_del.exit.i76.i

list_del.exit.i76.i:                              ; preds = %if.end.i.i.i73.i, %for.body.i70.i.list_del.exit.i76.i_crit_edge
  %131 = ptrtoint ptr %n.019.i67.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i67.i, align 4
  %prev.i.i74.i = getelementptr inbounds %struct.list_head, ptr %n.019.i67.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i74.i, align 4
  call void @kfree(ptr noundef %n.019.i67.i) #14
  %cmp.not.i75.i = icmp eq ptr %next.0.i68.i, %resv_regions.i
  br i1 %cmp.not.i75.i, label %list_del.exit.i76.i.vfio_iommu_resv_refresh.exit_crit_edge, label %list_del.exit.i76.i.for.body.i70.i_crit_edge

list_del.exit.i76.i.for.body.i70.i_crit_edge:     ; preds = %list_del.exit.i76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i70.i

list_del.exit.i76.i.vfio_iommu_resv_refresh.exit_crit_edge: ; preds = %list_del.exit.i76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_resv_refresh.exit

vfio_iommu_resv_refresh.exit:                     ; preds = %list_del.exit.i76.i.vfio_iommu_resv_refresh.exit_crit_edge, %done.i.vfio_iommu_resv_refresh.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resv_regions.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool125.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool125.not, label %if.then126, label %vfio_iommu_resv_refresh.exit.if.else127_crit_edge

vfio_iommu_resv_refresh.exit.if.else127_crit_edge: ; preds = %vfio_iommu_resv_refresh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else127

if.then126:                                       ; preds = %vfio_iommu_resv_refresh.exit
  %iova_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 1
  %133 = ptrtoint ptr %iova_list.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iova_list.i, align 4
  %cmp.not18.i.i234 = icmp eq ptr %134, %iova_list.i
  br i1 %cmp.not18.i.i234, label %if.then126.vfio_iommu_iova_free.exit.i245_crit_edge, label %if.then126.for.body.i.i238_crit_edge

if.then126.for.body.i.i238_crit_edge:             ; preds = %if.then126
  br label %for.body.i.i238

if.then126.vfio_iommu_iova_free.exit.i245_crit_edge: ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit.i245

for.body.i.i238:                                  ; preds = %list_del.exit.i.i244.for.body.i.i238_crit_edge, %if.then126.for.body.i.i238_crit_edge
  %n.019.i.i235 = phi ptr [ %next.0.i.i236, %list_del.exit.i.i244.for.body.i.i238_crit_edge ], [ %134, %if.then126.for.body.i.i238_crit_edge ]
  %135 = ptrtoint ptr %n.019.i.i235 to i32
  call void @__asan_load4_noabort(i32 %135)
  %next.0.i.i236 = load ptr, ptr %n.019.i.i235, align 4
  %call.i.i.i.i237 = call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i.i235) #14
  br i1 %call.i.i.i.i237, label %if.end.i.i.i.i241, label %for.body.i.i238.list_del.exit.i.i244_crit_edge

for.body.i.i238.list_del.exit.i.i244_crit_edge:   ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i244

if.end.i.i.i.i241:                                ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i239 = getelementptr inbounds %struct.list_head, ptr %n.019.i.i235, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i.i.i239, align 4
  %138 = ptrtoint ptr %n.019.i.i235 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %n.019.i.i235, align 4
  %prev1.i.i.i.i.i240 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %prev1.i.i.i.i.i240 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev1.i.i.i.i.i240, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %139, ptr %137, align 4
  br label %list_del.exit.i.i244

list_del.exit.i.i244:                             ; preds = %if.end.i.i.i.i241, %for.body.i.i238.list_del.exit.i.i244_crit_edge
  %142 = ptrtoint ptr %n.019.i.i235 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i.i235, align 4
  %prev.i.i.i242 = getelementptr inbounds %struct.list_head, ptr %n.019.i.i235, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i.i242 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i242, align 4
  call void @kfree(ptr noundef %n.019.i.i235) #14
  %cmp.not.i.i243 = icmp eq ptr %next.0.i.i236, %iova_list.i
  br i1 %cmp.not.i.i243, label %list_del.exit.i.i244.vfio_iommu_iova_free.exit.i245_crit_edge, label %list_del.exit.i.i244.for.body.i.i238_crit_edge

list_del.exit.i.i244.for.body.i.i238_crit_edge:   ; preds = %list_del.exit.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i238

list_del.exit.i.i244.vfio_iommu_iova_free.exit.i245_crit_edge: ; preds = %list_del.exit.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit.i245

vfio_iommu_iova_free.exit.i245:                   ; preds = %list_del.exit.i.i244.vfio_iommu_iova_free.exit.i245_crit_edge, %if.then126.vfio_iommu_iova_free.exit.i245_crit_edge
  %144 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %iova_copy, align 4
  %cmp.i.not.i.i = icmp eq ptr %145, %iova_copy
  br i1 %cmp.i.not.i.i, label %vfio_iommu_iova_free.exit.i245.detach_group_done_crit_edge, label %if.then.i.i247

vfio_iommu_iova_free.exit.i245.detach_group_done_crit_edge: ; preds = %vfio_iommu_iova_free.exit.i245
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

if.then.i.i247:                                   ; preds = %vfio_iommu_iova_free.exit.i245
  %prev.i.i246 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 1, i32 1
  %146 = ptrtoint ptr %prev.i.i246 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prev.i.i246, align 4
  %148 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %150 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %prev3.i.i.i, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %145, ptr %147, align 4
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %iova_list.i, ptr %149, align 4
  store ptr %149, ptr %prev.i.i246, align 4
  br i1 %update_dirty_scope.0.shrunk, label %if.then.i.i247.if.then130_crit_edge, label %if.then.i.i247.if.end134_crit_edge

if.then.i.i247.if.end134_crit_edge:               ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then.i.i247.if.then130_crit_edge:              ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130

if.else127:                                       ; preds = %vfio_iommu_resv_refresh.exit.if.else127_crit_edge, %vfio_iommu_resv_refresh.exit.thread
  %153 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %iova_copy, align 4
  %cmp.not18.i = icmp eq ptr %154, %iova_copy
  br i1 %cmp.not18.i, label %if.else127.detach_group_done_crit_edge, label %if.else127.for.body.i248_crit_edge

if.else127.for.body.i248_crit_edge:               ; preds = %if.else127
  br label %for.body.i248

if.else127.detach_group_done_crit_edge:           ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

for.body.i248:                                    ; preds = %list_del.exit.i.for.body.i248_crit_edge, %if.else127.for.body.i248_crit_edge
  %n.019.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i248_crit_edge ], [ %154, %if.else127.for.body.i248_crit_edge ]
  %155 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %next.0.i = load ptr, ptr %n.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i248.list_del.exit.i_crit_edge

for.body.i248.list_del.exit.i_crit_edge:          ; preds = %for.body.i248
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i248
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i249 = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %156 = ptrtoint ptr %prev.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i.i249, align 4
  %158 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %n.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev1.i.i.i.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %159, ptr %157, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i248.list_del.exit.i_crit_edge
  %162 = ptrtoint ptr %n.019.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i, align 4
  %prev.i.i250 = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i.i250 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i250, align 4
  call void @kfree(ptr noundef %n.019.i) #14
  %cmp.not.i251 = icmp eq ptr %next.0.i, %iova_copy
  br i1 %cmp.not.i251, label %list_del.exit.i.detach_group_done_crit_edge, label %list_del.exit.i.for.body.i248_crit_edge

list_del.exit.i.for.body.i248_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i248

list_del.exit.i.detach_group_done_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %detach_group_done

detach_group_done:                                ; preds = %list_del.exit.i.detach_group_done_crit_edge, %if.else127.detach_group_done_crit_edge, %vfio_iommu_iova_free.exit.i245.detach_group_done_crit_edge, %while.body.i.detach_group_done_crit_edge, %if.end29.detach_group_done_crit_edge, %land.lhs.true.detach_group_done_crit_edge, %list_del.exit.detach_group_done_crit_edge
  %update_dirty_scope.1.in = phi i1 [ %tobool.not, %land.lhs.true.detach_group_done_crit_edge ], [ %tobool.not, %list_del.exit.detach_group_done_crit_edge ], [ %tobool.not, %if.end29.detach_group_done_crit_edge ], [ %update_dirty_scope.0.shrunk, %vfio_iommu_iova_free.exit.i245.detach_group_done_crit_edge ], [ %update_dirty_scope.0.shrunk, %if.else127.detach_group_done_crit_edge ], [ %update_dirty_scope.0.shrunk, %list_del.exit.i.detach_group_done_crit_edge ], [ %tobool.not, %while.body.i.detach_group_done_crit_edge ]
  br i1 %update_dirty_scope.1.in, label %detach_group_done.if.then130_crit_edge, label %detach_group_done.if.end134_crit_edge

detach_group_done.if.end134_crit_edge:            ; preds = %detach_group_done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

detach_group_done.if.then130_crit_edge:           ; preds = %detach_group_done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130

if.then130:                                       ; preds = %detach_group_done.if.then130_crit_edge, %if.then.i.i247.if.then130_crit_edge
  %num_non_pinned_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 8
  %164 = ptrtoint ptr %num_non_pinned_groups to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %num_non_pinned_groups, align 8
  %dec = add i64 %165, -1
  store i64 %dec, ptr %num_non_pinned_groups, align 8
  %dirty_page_tracking = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %166 = ptrtoint ptr %dirty_page_tracking to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dirty_page_tracking, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool131.not = icmp eq i8 %167, 0
  br i1 %tobool131.not, label %if.then130.if.end134_crit_edge, label %if.then132

if.then130.if.end134_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then132:                                       ; preds = %if.then130
  %pgsize_bitmap.i253 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  %168 = ptrtoint ptr %pgsize_bitmap.i253 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %pgsize_bitmap.i253, align 8
  %conv.i254 = trunc i64 %169 to i32
  %170 = call i32 @llvm.cttz.i32(i32 %conv.i254, i1 false) #14, !range !97
  %dma_list.i255 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %call1.i256 = call ptr @rb_first(ptr noundef %dma_list.i255) #14
  %tobool.not7.i = icmp eq ptr %call1.i256, null
  br i1 %tobool.not7.i, label %if.then132.if.end134_crit_edge, label %if.then132.for.body.i257_crit_edge

if.then132.for.body.i257_crit_edge:               ; preds = %if.then132
  br label %for.body.i257

if.then132.if.end134_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

for.body.i257:                                    ; preds = %for.body.i257.for.body.i257_crit_edge, %if.then132.for.body.i257_crit_edge
  %n.08.i = phi ptr [ %call2.i259, %for.body.i257.for.body.i257_crit_edge ], [ %call1.i256, %if.then132.for.body.i257_crit_edge ]
  %bitmap.i = getelementptr inbounds %struct.vfio_dma, ptr %n.08.i, i32 0, i32 10
  %171 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bitmap.i, align 4
  %size.i = getelementptr inbounds %struct.vfio_dma, ptr %n.08.i, i32 0, i32 3
  %173 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %size.i, align 4
  %shr.i = lshr i32 %174, %170
  call void @__bitmap_set(ptr noundef %172, i32 noundef 0, i32 noundef %shr.i) #14
  %call2.i259 = call ptr @rb_next(ptr noundef nonnull %n.08.i) #14
  %tobool.not.i260 = icmp eq ptr %call2.i259, null
  br i1 %tobool.not.i260, label %for.body.i257.if.end134_crit_edge, label %for.body.i257.for.body.i257_crit_edge

for.body.i257.for.body.i257_crit_edge:            ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i257

for.body.i257.if.end134_crit_edge:                ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.end134:                                        ; preds = %for.body.i257.if.end134_crit_edge, %if.then132.if.end134_crit_edge, %if.then130.if.end134_crit_edge, %detach_group_done.if.end134_crit_edge, %if.then.i.i247.if.end134_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova_copy) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_pin_pages(ptr noundef %iommu_data, ptr noundef readnone %iommu_group, ptr noundef readonly %user_pfn, i32 noundef %npage, i32 noundef %prot, ptr noundef %phys_pfn) #2 align 64 {
entry:
  %page.i = alloca ptr, align 4
  %page.i.i = alloca ptr, align 4
  %pages.i = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iommu_data, null
  %tobool1.not = icmp eq ptr %user_pfn, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %phys_pfn, null
  %or.cond151 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond151, label %entry.cleanup89_crit_edge, label %if.end

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup89

if.end:                                           ; preds = %entry
  %v2 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 10
  %0 = ptrtoint ptr %v2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v2, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %if.end.cleanup89_crit_edge, label %if.end6

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup89

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %vaddr_invalid_count = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 6
  %2 = ptrtoint ptr %vaddr_invalid_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vaddr_invalid_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not303 = icmp eq i32 %3, 0
  br i1 %tobool7.not303, label %if.end6.if.end15_crit_edge, label %for.cond.preheader.lr.ph

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.cond.preheader.lr.ph:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage)
  %cmp301 = icmp sgt i32 %npage, 0
  %dma_list.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  br i1 %cmp301, label %for.cond.preheader.lr.ph.for.body_crit_edge, label %for.cond.preheader.lr.ph.if.end15_crit_edge

for.cond.preheader.lr.ph.if.end15_crit_edge:      ; preds = %for.cond.preheader.lr.ph
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.cond.preheader.lr.ph.for.body_crit_edge:      ; preds = %for.cond.preheader.lr.ph
  br label %for.body

again.loopexit:                                   ; preds = %if.end11
  %4 = ptrtoint ptr %vaddr_invalid_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vaddr_invalid_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %again.loopexit.if.end15_crit_edge, label %again.loopexit.for.body.backedge_crit_edge

again.loopexit.for.body.backedge_crit_edge:       ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.backedge

again.loopexit.if.end15_crit_edge:                ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.cond:                                         ; preds = %if.end11
  %inc = add nuw nsw i32 %i.0302, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %npage)
  %exitcond.not = icmp eq i32 %inc, %npage
  br i1 %exitcond.not, label %for.cond.if.end15_crit_edge, label %for.cond.for.body.backedge_crit_edge

for.cond.for.body.backedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.backedge

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.body.backedge:                                ; preds = %for.cond.for.body.backedge_crit_edge, %again.loopexit.for.body.backedge_crit_edge
  %i.0302.be = phi i32 [ %inc, %for.cond.for.body.backedge_crit_edge ], [ 0, %again.loopexit.for.body.backedge_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.cond.preheader.lr.ph.for.body_crit_edge
  %i.0302 = phi i32 [ %i.0302.be, %for.body.backedge ], [ 0, %for.cond.preheader.lr.ph.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %user_pfn, i32 %i.0302
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %7, 12
  %add.i.i = add i32 %shl, 4096
  br label %do.body.i

do.body.i:                                        ; preds = %if.else3.i.do.body.i_crit_edge, %for.body
  %ret.0.i = phi i32 [ 0, %for.body ], [ 1, %if.else3.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %dma_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.019.i.i = load ptr, ptr %dma_list.i.i, align 4
  %tobool.not20.i.i = icmp eq ptr %node.019.i.i, null
  br i1 %tobool.not20.i.i, label %do.body.i.pin_done_crit_edge, label %do.body.i.while.body.i.i_crit_edge

do.body.i.while.body.i.i_crit_edge:               ; preds = %do.body.i
  br label %while.body.i.i

do.body.i.pin_done_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %do.body.i.while.body.i.i_crit_edge
  %node.021.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.019.i.i, %do.body.i.while.body.i.i_crit_edge ]
  %iova.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iova.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %10)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %10
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %size2.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size2.i.i, align 4
  %add3.i.i = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %shl)
  %cmp4.not.i.i = icmp ugt i32 %add3.i.i, %shl
  br i1 %cmp4.not.i.i, label %if.else.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %13 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.pin_done_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

cleanup.i.i.pin_done_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

if.else.i:                                        ; preds = %if.else.i.i
  %vaddr_invalid.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %vaddr_invalid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vaddr_invalid.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %if.else.i.if.end11_crit_edge, label %if.else3.i

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.else3.i:                                       ; preds = %if.else.i
  %call4.i = tail call fastcc i32 @vfio_wait(ptr noundef %iommu_data) #14
  %cmp.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.i, label %if.else3.i.do.body.i_crit_edge, label %vfio_find_dma_valid.exit

if.else3.i.do.body.i_crit_edge:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

vfio_find_dma_valid.exit:                         ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp9 = icmp slt i32 %call4.i, 0
  br i1 %cmp9, label %vfio_find_dma_valid.exit.pin_done_crit_edge, label %vfio_find_dma_valid.exit.if.end11_crit_edge

vfio_find_dma_valid.exit.if.end11_crit_edge:      ; preds = %vfio_find_dma_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

vfio_find_dma_valid.exit.pin_done_crit_edge:      ; preds = %vfio_find_dma_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

if.end11:                                         ; preds = %vfio_find_dma_valid.exit.if.end11_crit_edge, %if.else.i.if.end11_crit_edge
  %retval.0.i231 = phi i32 [ %call4.i, %vfio_find_dma_valid.exit.if.end11_crit_edge ], [ %ret.0.i, %if.else.i.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i231)
  %cmp12 = icmp eq i32 %retval.0.i231, 1
  br i1 %cmp12, label %again.loopexit, label %for.cond

if.end15:                                         ; preds = %for.cond.if.end15_crit_edge, %again.loopexit.if.end15_crit_edge, %for.cond.preheader.lr.ph.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %head = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end15.pin_done_crit_edge, label %if.end18

if.end15.pin_done_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

if.end18:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %iommu_data, align 4
  %cmp.i152 = icmp eq ptr %19, %iommu_data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage)
  %cmp22304 = icmp sgt i32 %npage, 0
  br i1 %cmp22304, label %for.body23.lr.ph, label %if.end18.for.cond.i.preheader_crit_edge

if.end18.for.cond.i.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader

for.body23.lr.ph:                                 ; preds = %if.end18
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %dirty_page_tracking = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %pgsize_bitmap = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  br label %for.body23

for.cond.i.preheader:                             ; preds = %for.inc65.for.cond.i.preheader_crit_edge, %if.end18.for.cond.i.preheader_crit_edge
  %i.1.lcssa = phi i32 [ 0, %if.end18.for.cond.i.preheader_crit_edge ], [ %npage, %for.inc65.for.cond.i.preheader_crit_edge ]
  br label %for.cond.i

for.body23:                                       ; preds = %for.inc65.for.body23_crit_edge, %for.body23.lr.ph
  %i.1305 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc66, %for.inc65.for.body23_crit_edge ]
  %arrayidx24 = getelementptr i32, ptr %user_pfn, i32 %i.1305
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  %shl25 = shl i32 %21, 12
  %22 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.019.i = load ptr, ptr %dma_list.i, align 4
  %tobool.not20.i = icmp eq ptr %node.019.i, null
  br i1 %tobool.not20.i, label %for.body23.pin_unwind_crit_edge, label %while.body.lr.ph.i

for.body23.pin_unwind_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

while.body.lr.ph.i:                               ; preds = %for.body23
  %add.i = add i32 %shl25, 4096
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.021.i = phi ptr [ %node.019.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %iova.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 1
  %23 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iova.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp.not.i = icmp ugt i32 %add.i, %24
  br i1 %cmp.not.i, label %if.else.i153, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 2
  br label %cleanup.i

if.else.i153:                                     ; preds = %while.body.i
  %size2.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 3
  %25 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size2.i, align 4
  %add3.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %shl25)
  %cmp4.not.i = icmp ugt i32 %add3.i, %shl25
  br i1 %cmp4.not.i, label %if.end29, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %27 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.pin_unwind_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.pin_unwind_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

if.end29:                                         ; preds = %if.else.i153
  %iova.i.le = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 1
  %prot30 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 4
  %28 = ptrtoint ptr %prot30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prot30, align 4
  %and = and i32 %29, %prot
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %prot)
  %cmp31.not = icmp eq i32 %and, %prot
  br i1 %cmp31.not, label %if.end33, label %if.end29.pin_unwind_crit_edge

if.end29.pin_unwind_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

if.end33:                                         ; preds = %if.end29
  %pfn_list.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 9
  %30 = ptrtoint ptr %pfn_list.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %node.014.i.i = load ptr, ptr %pfn_list.i.i, align 4
  %tobool.not15.i.i = icmp eq ptr %node.014.i.i, null
  br i1 %tobool.not15.i.i, label %if.end33.if.end38_crit_edge, label %if.end33.while.body.i.i154_crit_edge

if.end33.while.body.i.i154_crit_edge:             ; preds = %if.end33
  br label %while.body.i.i154

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

while.body.i.i154:                                ; preds = %if.end6.i.i.while.body.i.i154_crit_edge, %if.end33.while.body.i.i154_crit_edge
  %node.016.i.i = phi ptr [ %node.0.i.i160, %if.end6.i.i.while.body.i.i154_crit_edge ], [ %node.014.i.i, %if.end33.while.body.i.i154_crit_edge ]
  %iova1.i.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %iova1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iova1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %shl25)
  %cmp.i.i = icmp ugt i32 %32, %shl25
  br i1 %cmp.i.i, label %if.then.i.i156, label %if.else.i.i157

if.then.i.i156:                                   ; preds = %while.body.i.i154
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i155 = getelementptr inbounds %struct.rb_node, ptr %node.016.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i157:                                   ; preds = %while.body.i.i154
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %shl25)
  %cmp3.i.i = icmp ult i32 %32, %shl25
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.then36

if.then4.i.i:                                     ; preds = %if.else.i.i157
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i158 = getelementptr inbounds %struct.rb_node, ptr %node.016.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i156
  %node.1.in.i.i159 = phi ptr [ %rb_left.i.i155, %if.then.i.i156 ], [ %rb_right.i.i158, %if.then4.i.i ]
  %33 = ptrtoint ptr %node.1.in.i.i159 to i32
  call void @__asan_load4_noabort(i32 %33)
  %node.0.i.i160 = load ptr, ptr %node.1.in.i.i159, align 4
  %tobool.not.i.i161 = icmp eq ptr %node.0.i.i160, null
  br i1 %tobool.not.i.i161, label %if.end6.i.i.if.end38_crit_edge, label %if.end6.i.i.while.body.i.i154_crit_edge

if.end6.i.i.while.body.i.i154_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i154

if.end6.i.i.if.end38_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then36:                                        ; preds = %if.else.i.i157
  call void @__sanitizer_cov_trace_pc() #16
  %ref_count.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ref_count.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %ref_count.i, align 4
  %pfn = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pfn, align 4
  %arrayidx37 = getelementptr i32, ptr %phys_pfn, i32 %i.1305
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx37, align 4
  br label %for.inc65

if.end38:                                         ; preds = %if.end6.i.i.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %vaddr = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 2
  %39 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vaddr, align 4
  %41 = ptrtoint ptr %iova.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iova.i.le, align 4
  %arrayidx40 = getelementptr i32, ptr %phys_pfn, i32 %i.1305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages.i) #14
  %43 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages.i, align 4, !annotation !102
  %task.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 8
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 4
  %call.i = call ptr @get_task_mm(ptr noundef %45) #14
  %tobool.not.i163 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i163, label %vfio_pin_page_external.exit.thread, label %if.end.i

vfio_pin_page_external.exit.thread:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages.i) #14
  br label %pin_unwind

if.end.i:                                         ; preds = %if.end38
  %sub = add i32 %40, %shl25
  %add = sub i32 %sub, %42
  %46 = ptrtoint ptr %prot30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prot30, align 4
  %call1.i = call fastcc i32 @vaddr_get_pfns(ptr noundef nonnull %call.i, i32 noundef %add, i32 noundef 1, i32 noundef %47, ptr noundef %arrayidx40, ptr noundef nonnull %pages.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not.i164 = icmp eq i32 %call1.i, 1
  %48 = and i1 %cmp.i152, %cmp.not.i164
  br i1 %48, label %land.lhs.true.i, label %vfio_pin_page_external.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %49 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx40, align 4
  %call.i.i = call i32 @pfn_valid(i32 noundef %50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i165 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i165, label %land.lhs.true.i.vfio_pin_page_external.exit.thread241_crit_edge, label %if.then.i.i167

land.lhs.true.i.vfio_pin_page_external.exit.thread241_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_pin_page_external.exit.thread241

if.then.i.i167:                                   ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %52 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %50, %52
  %add.ptr.i.i166 = getelementptr %struct.page, ptr %51, i32 %sub.i.i
  %53 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %add.ptr.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i.i.i = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_invalid_reserved_pfn.exit.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then.i.i167
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i166, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i:                   ; preds = %if.then.i.i167
  %55 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %add.ptr.i.i166, align 4
  %57 = and i32 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool2.i.not.i, label %if.then6.i, label %is_invalid_reserved_pfn.exit.i.vfio_pin_page_external.exit.thread241_crit_edge

is_invalid_reserved_pfn.exit.i.vfio_pin_page_external.exit.thread241_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_pin_page_external.exit.thread241

if.then6.i:                                       ; preds = %is_invalid_reserved_pfn.exit.i
  %call7.i = call fastcc i32 @vfio_lock_acct(ptr noundef %node.021.i, i32 noundef 1, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.vfio_pin_page_external.exit.thread241_crit_edge, label %if.then9.i

if.then6.i.vfio_pin_page_external.exit.thread241_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_pin_page_external.exit.thread241

if.then9.i:                                       ; preds = %if.then6.i
  %task.i.le = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 8
  %58 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx40, align 4
  %60 = ptrtoint ptr %prot30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prot30, align 4
  %call.i.i.i = call i32 @pfn_valid(i32 noundef %59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then9.i.put_pfn.exit.i_crit_edge, label %if.then.i.i39.i

if.then9.i.put_pfn.exit.i_crit_edge:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit.i

if.then.i.i39.i:                                  ; preds = %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %62 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %63 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i = sub i32 %59, %63
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %62, i32 %sub.i.i.i
  %64 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i.not.i.i.i.i = icmp eq i32 %65, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_invalid_reserved_pfn.exit.i.i, !prof !101

if.then.i.i.i.i:                                  ; preds = %if.then.i.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i.i:                 ; preds = %if.then.i.i39.i
  %66 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  %68 = and i32 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool2.i.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool2.i.not.i.i, label %if.then.i42.i, label %is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge

is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit.i

if.then.i42.i:                                    ; preds = %is_invalid_reserved_pfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i.i) #14
  %69 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i.i.i, ptr %page.i.i, align 4
  %and.i.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i.i, i32 noundef 1, i1 noundef zeroext %tobool.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #14
  br label %put_pfn.exit.i

put_pfn.exit.i:                                   ; preds = %if.then.i42.i, %is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge, %if.then9.i.put_pfn.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call7.i)
  %cmp12.i = icmp eq i32 %call7.i, -12
  br i1 %cmp12.i, label %do.end.i, label %put_pfn.exit.i.vfio_pin_page_external.exit.thread247_crit_edge

put_pfn.exit.i.vfio_pin_page_external.exit.thread247_crit_edge: ; preds = %put_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_pin_page_external.exit.thread247

do.end.i:                                         ; preds = %put_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %task.i.le to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.le, align 4
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid.i.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 111
  %74 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %75, i32 0, i32 51, i32 8
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i.i, align 8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %comm.i, i32 noundef %73, i32 noundef %77) #20
  br label %vfio_pin_page_external.exit.thread247

vfio_pin_page_external.exit.thread241:            ; preds = %if.then6.i.vfio_pin_page_external.exit.thread241_crit_edge, %is_invalid_reserved_pfn.exit.i.vfio_pin_page_external.exit.thread241_crit_edge, %land.lhs.true.i.vfio_pin_page_external.exit.thread241_crit_edge
  call void @mmput(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages.i) #14
  br label %if.end45

vfio_pin_page_external.exit.thread247:            ; preds = %do.end.i, %put_pfn.exit.i.vfio_pin_page_external.exit.thread247_crit_edge
  call void @mmput(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages.i) #14
  br label %pin_unwind

vfio_pin_page_external.exit:                      ; preds = %if.end.i
  call void @mmput(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %78 = icmp ugt i32 %call1.i, 1
  br i1 %78, label %vfio_pin_page_external.exit.pin_unwind_crit_edge, label %vfio_pin_page_external.exit.if.end45_crit_edge

vfio_pin_page_external.exit.if.end45_crit_edge:   ; preds = %vfio_pin_page_external.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

vfio_pin_page_external.exit.pin_unwind_crit_edge: ; preds = %vfio_pin_page_external.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

if.end45:                                         ; preds = %vfio_pin_page_external.exit.if.end45_crit_edge, %vfio_pin_page_external.exit.thread241
  %79 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 24) #17
  %tobool.not.i171 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i171, label %if.then49, label %if.end.i174

if.end.i174:                                      ; preds = %if.end45
  %iova1.i = getelementptr inbounds %struct.vfio_pfn, ptr %call7.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %iova1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shl25, ptr %iova1.i, align 4
  %pfn2.i = getelementptr inbounds %struct.vfio_pfn, ptr %call7.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %pfn2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %pfn2.i, align 8
  %ref_count.i172 = getelementptr inbounds %struct.vfio_pfn, ptr %call7.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %ref_count.i172 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %ref_count.i172, align 4
  %85 = ptrtoint ptr %pfn_list.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pfn_list.i.i, align 4
  %tobool.not12.i.i = icmp eq ptr %86, null
  br i1 %tobool.not12.i.i, label %if.end.i174.if.end58_crit_edge, label %if.end.i174.while.body.i.i180_crit_edge

if.end.i174.while.body.i.i180_crit_edge:          ; preds = %if.end.i174
  br label %while.body.i.i180

if.end.i174.if.end58_crit_edge:                   ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

while.body.i.i180:                                ; preds = %while.body.i.i180.while.body.i.i180_crit_edge, %if.end.i174.while.body.i.i180_crit_edge
  %87 = phi ptr [ %91, %while.body.i.i180.while.body.i.i180_crit_edge ], [ %86, %if.end.i174.while.body.i.i180_crit_edge ]
  %iova1.i.i175 = getelementptr inbounds %struct.vfio_pfn, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %iova1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iova1.i.i175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %shl25)
  %cmp.i.i176 = icmp ugt i32 %89, %shl25
  %rb_left.i.i177 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 2
  %rb_right.i.i178 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 1
  %link.1.i.i = select i1 %cmp.i.i176, ptr %rb_left.i.i177, ptr %rb_right.i.i178
  %90 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i.i179 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i179, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i180.while.body.i.i180_crit_edge

while.body.i.i180.while.body.i.i180_crit_edge:    ; preds = %while.body.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i180

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %87 to i32
  br label %if.end58

if.then49:                                        ; preds = %if.end45
  %92 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx40, align 4
  %94 = ptrtoint ptr %prot30 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %prot30, align 4
  %call.i.i183 = call i32 @pfn_valid(i32 noundef %93) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %tobool.not.i.i184 = icmp eq i32 %call.i.i183, 0
  br i1 %tobool.not.i.i184, label %if.then49.pin_unwind_crit_edge, label %if.then.i.i188

if.then49.pin_unwind_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

if.then.i.i188:                                   ; preds = %if.then49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %96 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %97 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i185 = sub i32 %93, %97
  %add.ptr.i.i186 = getelementptr %struct.page, ptr %96, i32 %sub.i.i185
  %98 = ptrtoint ptr %add.ptr.i.i186 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %add.ptr.i.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.i.not.i.i.i187 = icmp eq i32 %99, -1
  br i1 %cmp.i.not.i.i.i187, label %if.then.i.i.i189, label %is_invalid_reserved_pfn.exit.i191, !prof !101

if.then.i.i.i189:                                 ; preds = %if.then.i.i188
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i186, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i191:                ; preds = %if.then.i.i188
  %100 = ptrtoint ptr %add.ptr.i.i186 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %add.ptr.i.i186, align 4
  %102 = and i32 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool2.i.not.i190 = icmp eq i32 %102, 0
  br i1 %tobool2.i.not.i190, label %put_pfn.exit, label %is_invalid_reserved_pfn.exit.i191.pin_unwind_crit_edge

is_invalid_reserved_pfn.exit.i191.pin_unwind_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i191
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

put_pfn.exit:                                     ; preds = %is_invalid_reserved_pfn.exit.i191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %103 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr.i.i186, ptr %page.i, align 4
  %and.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i, i32 noundef 1, i1 noundef zeroext %tobool.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #14
  br i1 %cmp.i152, label %if.then55, label %put_pfn.exit.pin_unwind_crit_edge

put_pfn.exit.pin_unwind_crit_edge:                ; preds = %put_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_unwind

if.then55:                                        ; preds = %put_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call56 = call fastcc i32 @vfio_lock_acct(ptr noundef %node.021.i, i32 noundef -1, i1 noundef zeroext true)
  br label %pin_unwind

if.end58:                                         ; preds = %while.cond.while.end_crit_edge.i.i, %if.end.i174.if.end58_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end.i174.if.end58_crit_edge ]
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %pfn_list.i.i, %if.end.i174.if.end58_crit_edge ]
  %104 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %parent.0.lcssa.i.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %107 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i, ptr %link.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %pfn_list.i.i) #14
  %108 = ptrtoint ptr %dirty_page_tracking to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %dirty_page_tracking, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool59.not = icmp eq i8 %109, 0
  br i1 %tobool59.not, label %if.end58.for.inc65_crit_edge, label %if.then60

if.end58.for.inc65_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc65

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %pgsize_bitmap, align 8
  %conv = trunc i64 %111 to i32
  %112 = call i32 @llvm.cttz.i32(i32 %conv, i1 false) #14, !range !97
  %bitmap = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 10
  %113 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bitmap, align 4
  %115 = ptrtoint ptr %iova.i.le to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %iova.i.le, align 4
  %sub63 = sub i32 %shl25, %116
  %shr = lshr i32 %sub63, %112
  %rem.i.i = and i32 %shr, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %shr, 5
  %add.ptr.i.i = getelementptr i32, ptr %114, i32 %div2.i.i
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %118
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %for.inc65

for.inc65:                                        ; preds = %if.then60, %if.end58.for.inc65_crit_edge, %if.then36
  %inc66 = add nuw nsw i32 %i.1305, 1
  %exitcond351.not = icmp eq i32 %inc66, %npage
  br i1 %exitcond351.not, label %for.inc65.for.cond.i.preheader_crit_edge, label %for.inc65.for.body23_crit_edge

for.inc65.for.body23_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23

for.inc65.for.cond.i.preheader_crit_edge:         ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader

for.cond.i:                                       ; preds = %find_iommu_group.exit.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %find_iommu_group.exit.i.for.cond.i_crit_edge ], [ %iommu_data, %for.cond.i.preheader ]
  %119 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i194 = icmp eq ptr %.pn.i, %iommu_data
  br i1 %cmp.not.i194, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %group_list.i.i = getelementptr i8, ptr %.pn.i, i32 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %.pn.in.i.i = phi ptr [ %group_list.i.i, %for.body.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %120 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i195 = icmp eq ptr %.pn.i.i, %group_list.i.i
  br i1 %cmp.not.i.i195, label %for.cond.i.i.find_iommu_group.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.find_iommu_group.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_iommu_group.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %g.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %121 = ptrtoint ptr %g.0.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %g.0.i.i, align 4
  %cmp4.i.i = icmp eq ptr %122, %iommu_group
  br i1 %cmp4.i.i, label %find_iommu_group.exit.i.split.loop.exit392, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

find_iommu_group.exit.i.split.loop.exit392:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %g.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  br label %find_iommu_group.exit.i

find_iommu_group.exit.i:                          ; preds = %find_iommu_group.exit.i.split.loop.exit392, %for.cond.i.i.find_iommu_group.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %g.0.i.i.le, %find_iommu_group.exit.i.split.loop.exit392 ], [ null, %for.cond.i.i.find_iommu_group.exit.i_crit_edge ]
  %tobool.not.i196 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i196, label %find_iommu_group.exit.i.for.cond.i_crit_edge, label %find_iommu_group.exit.i.vfio_iommu_find_iommu_group.exit_crit_edge

find_iommu_group.exit.i.vfio_iommu_find_iommu_group.exit_crit_edge: ; preds = %find_iommu_group.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_find_iommu_group.exit

find_iommu_group.exit.i.for.cond.i_crit_edge:     ; preds = %find_iommu_group.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %emulated_iommu_groups.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 14
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body17.i.for.cond12.i_crit_edge, %for.end.i
  %.pn41.in.i = phi ptr [ %emulated_iommu_groups.i, %for.end.i ], [ %.pn41.i, %for.body17.i.for.cond12.i_crit_edge ]
  %123 = ptrtoint ptr %.pn41.in.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pn41.i = load ptr, ptr %.pn41.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn41.i, %emulated_iommu_groups.i
  br i1 %cmp15.not.i, label %for.cond12.i.vfio_iommu_find_iommu_group.exit_crit_edge, label %for.body17.i

for.cond12.i.vfio_iommu_find_iommu_group.exit_crit_edge: ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_find_iommu_group.exit

for.body17.i:                                     ; preds = %for.cond12.i
  %group.0.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %124 = ptrtoint ptr %group.0.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %group.0.i, align 4
  %cmp19.i = icmp eq ptr %125, %iommu_group
  br i1 %cmp19.i, label %vfio_iommu_find_iommu_group.exit.loopexit.split.loop.exit, label %for.body17.i.for.cond12.i_crit_edge

for.body17.i.for.cond12.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.i

vfio_iommu_find_iommu_group.exit.loopexit.split.loop.exit: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  %group.0.i.le = getelementptr i8, ptr %.pn41.i, i32 -4
  br label %vfio_iommu_find_iommu_group.exit

vfio_iommu_find_iommu_group.exit:                 ; preds = %vfio_iommu_find_iommu_group.exit.loopexit.split.loop.exit, %for.cond12.i.vfio_iommu_find_iommu_group.exit_crit_edge, %find_iommu_group.exit.i.vfio_iommu_find_iommu_group.exit_crit_edge
  %retval.0.i197 = phi ptr [ %group.0.i.le, %vfio_iommu_find_iommu_group.exit.loopexit.split.loop.exit ], [ null, %for.cond12.i.vfio_iommu_find_iommu_group.exit_crit_edge ], [ %retval.0.i.i, %find_iommu_group.exit.i.vfio_iommu_find_iommu_group.exit_crit_edge ]
  %pinned_page_dirty_scope = getelementptr inbounds %struct.vfio_iommu_group, ptr %retval.0.i197, i32 0, i32 2
  %126 = ptrtoint ptr %pinned_page_dirty_scope to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pinned_page_dirty_scope, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool69.not = icmp eq i8 %127, 0
  br i1 %tobool69.not, label %if.then70, label %vfio_iommu_find_iommu_group.exit.pin_done_crit_edge

vfio_iommu_find_iommu_group.exit.pin_done_crit_edge: ; preds = %vfio_iommu_find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

if.then70:                                        ; preds = %vfio_iommu_find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %pinned_page_dirty_scope to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %pinned_page_dirty_scope, align 4
  %num_non_pinned_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 8
  %129 = ptrtoint ptr %num_non_pinned_groups to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %num_non_pinned_groups, align 8
  %dec = add i64 %130, -1
  store i64 %dec, ptr %num_non_pinned_groups, align 8
  br label %pin_done

pin_unwind:                                       ; preds = %if.then55, %put_pfn.exit.pin_unwind_crit_edge, %is_invalid_reserved_pfn.exit.i191.pin_unwind_crit_edge, %if.then49.pin_unwind_crit_edge, %vfio_pin_page_external.exit.pin_unwind_crit_edge, %vfio_pin_page_external.exit.thread247, %vfio_pin_page_external.exit.thread, %if.end29.pin_unwind_crit_edge, %cleanup.i.pin_unwind_crit_edge, %for.body23.pin_unwind_crit_edge
  %ret.4.ph = phi i32 [ %call7.i, %vfio_pin_page_external.exit.thread247 ], [ -19, %vfio_pin_page_external.exit.thread ], [ -12, %if.then55 ], [ -12, %put_pfn.exit.pin_unwind_crit_edge ], [ -12, %is_invalid_reserved_pfn.exit.i191.pin_unwind_crit_edge ], [ -12, %if.then49.pin_unwind_crit_edge ], [ -22, %cleanup.i.pin_unwind_crit_edge ], [ %call1.i, %vfio_pin_page_external.exit.pin_unwind_crit_edge ], [ -1, %if.end29.pin_unwind_crit_edge ], [ -22, %for.body23.pin_unwind_crit_edge ]
  %arrayidx73 = getelementptr i32, ptr %phys_pfn, i32 %i.1305
  %131 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1305)
  %cmp75311.not = icmp eq i32 %i.1305, 0
  br i1 %cmp75311.not, label %pin_unwind.pin_done_crit_edge, label %pin_unwind.for.body77_crit_edge

pin_unwind.for.body77_crit_edge:                  ; preds = %pin_unwind
  br label %for.body77

pin_unwind.pin_done_crit_edge:                    ; preds = %pin_unwind
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

for.body77:                                       ; preds = %vfio_find_dma.exit221.for.body77_crit_edge, %pin_unwind.for.body77_crit_edge
  %j.0312 = phi i32 [ %inc86, %vfio_find_dma.exit221.for.body77_crit_edge ], [ 0, %pin_unwind.for.body77_crit_edge ]
  %arrayidx79 = getelementptr i32, ptr %user_pfn, i32 %j.0312
  %132 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx79, align 4
  %shl80 = shl i32 %133, 12
  %134 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %node.019.i200 = load ptr, ptr %dma_list.i, align 4
  %tobool.not20.i201 = icmp eq ptr %node.019.i200, null
  br i1 %tobool.not20.i201, label %for.body77.vfio_find_dma.exit221_crit_edge, label %while.body.lr.ph.i203

for.body77.vfio_find_dma.exit221_crit_edge:       ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit221

while.body.lr.ph.i203:                            ; preds = %for.body77
  %add.i202 = add i32 %shl80, 4096
  br label %while.body.i207

while.body.i207:                                  ; preds = %cleanup.i219.while.body.i207_crit_edge, %while.body.lr.ph.i203
  %node.021.i204 = phi ptr [ %node.019.i200, %while.body.lr.ph.i203 ], [ %node.0.i217, %cleanup.i219.while.body.i207_crit_edge ]
  %iova.i205 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i204, i32 0, i32 1
  %135 = ptrtoint ptr %iova.i205 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %iova.i205, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i202, i32 %136)
  %cmp.not.i206 = icmp ugt i32 %add.i202, %136
  br i1 %cmp.not.i206, label %if.else.i213, label %if.then.i209

if.then.i209:                                     ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i208 = getelementptr inbounds %struct.rb_node, ptr %node.021.i204, i32 0, i32 2
  br label %cleanup.i219

if.else.i213:                                     ; preds = %while.body.i207
  %size2.i210 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i204, i32 0, i32 3
  %137 = ptrtoint ptr %size2.i210 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size2.i210, align 4
  %add3.i211 = add i32 %138, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i211, i32 %shl80)
  %cmp4.not.i212 = icmp ugt i32 %add3.i211, %shl80
  br i1 %cmp4.not.i212, label %if.else.i213.vfio_find_dma.exit221_crit_edge, label %if.then5.i215

if.else.i213.vfio_find_dma.exit221_crit_edge:     ; preds = %if.else.i213
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit221

if.then5.i215:                                    ; preds = %if.else.i213
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i214 = getelementptr inbounds %struct.rb_node, ptr %node.021.i204, i32 0, i32 1
  br label %cleanup.i219

cleanup.i219:                                     ; preds = %if.then5.i215, %if.then.i209
  %node.1.in.i216 = phi ptr [ %rb_left.i208, %if.then.i209 ], [ %rb_right.i214, %if.then5.i215 ]
  %139 = ptrtoint ptr %node.1.in.i216 to i32
  call void @__asan_load4_noabort(i32 %139)
  %node.0.i217 = load ptr, ptr %node.1.in.i216, align 4
  %tobool.not.i218 = icmp eq ptr %node.0.i217, null
  br i1 %tobool.not.i218, label %cleanup.i219.vfio_find_dma.exit221_crit_edge, label %cleanup.i219.while.body.i207_crit_edge

cleanup.i219.while.body.i207_crit_edge:           ; preds = %cleanup.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i207

cleanup.i219.vfio_find_dma.exit221_crit_edge:     ; preds = %cleanup.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_dma.exit221

vfio_find_dma.exit221:                            ; preds = %cleanup.i219.vfio_find_dma.exit221_crit_edge, %if.else.i213.vfio_find_dma.exit221_crit_edge, %for.body77.vfio_find_dma.exit221_crit_edge
  %node.0.lcssa.i220 = phi ptr [ null, %for.body77.vfio_find_dma.exit221_crit_edge ], [ null, %cleanup.i219.vfio_find_dma.exit221_crit_edge ], [ %node.021.i204, %if.else.i213.vfio_find_dma.exit221_crit_edge ]
  call fastcc void @vfio_unpin_page_external(ptr noundef %node.0.lcssa.i220, i32 noundef %shl80, i1 noundef zeroext %cmp.i152)
  %arrayidx84 = getelementptr i32, ptr %phys_pfn, i32 %j.0312
  %140 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx84, align 4
  %inc86 = add nuw nsw i32 %j.0312, 1
  %exitcond352.not = icmp eq i32 %inc86, %i.1305
  br i1 %exitcond352.not, label %vfio_find_dma.exit221.pin_done_crit_edge, label %vfio_find_dma.exit221.for.body77_crit_edge

vfio_find_dma.exit221.for.body77_crit_edge:       ; preds = %vfio_find_dma.exit221
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body77

vfio_find_dma.exit221.pin_done_crit_edge:         ; preds = %vfio_find_dma.exit221
  call void @__sanitizer_cov_trace_pc() #16
  br label %pin_done

pin_done:                                         ; preds = %vfio_find_dma.exit221.pin_done_crit_edge, %pin_unwind.pin_done_crit_edge, %if.then70, %vfio_iommu_find_iommu_group.exit.pin_done_crit_edge, %if.end15.pin_done_crit_edge, %vfio_find_dma_valid.exit.pin_done_crit_edge, %cleanup.i.i.pin_done_crit_edge, %do.body.i.pin_done_crit_edge
  %ret.5 = phi i32 [ %i.1.lcssa, %vfio_iommu_find_iommu_group.exit.pin_done_crit_edge ], [ %i.1.lcssa, %if.then70 ], [ -22, %if.end15.pin_done_crit_edge ], [ %ret.4.ph, %pin_unwind.pin_done_crit_edge ], [ %ret.4.ph, %vfio_find_dma.exit221.pin_done_crit_edge ], [ -22, %cleanup.i.i.pin_done_crit_edge ], [ -22, %do.body.i.pin_done_crit_edge ], [ %call4.i, %vfio_find_dma_valid.exit.pin_done_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup89

cleanup89:                                        ; preds = %pin_done, %if.end.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ %ret.5, %pin_done ], [ -22, %entry.cleanup89_crit_edge ], [ -13, %if.end.cleanup89_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_unpin_pages(ptr noundef %iommu_data, ptr noundef readonly %user_pfn, i32 noundef %npage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iommu_data, null
  %tobool1.not = icmp eq ptr %user_pfn, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %npage)
  %cmp = icmp slt i32 %npage, 1
  %or.cond33 = or i1 %or.cond, %cmp
  br i1 %or.cond33, label %entry.cleanup17_crit_edge, label %if.end

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

if.end:                                           ; preds = %entry
  %v2 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 10
  %0 = ptrtoint ptr %v2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %v2, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end.cleanup17_crit_edge, label %for.body.lr.ph

if.end.cleanup17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %if.end
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %2 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %iommu_data, align 4
  %cmp.i = icmp eq ptr %3, %iommu_data
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %user_pfn, i32 %i.043
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %5, 12
  %6 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.019.i = load ptr, ptr %dma_list.i, align 4
  %tobool.not20.i = icmp eq ptr %node.019.i, null
  br i1 %tobool.not20.i, label %for.body.for.end_crit_edge, label %while.body.lr.ph.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

while.body.lr.ph.i:                               ; preds = %for.body
  %add.i = add i32 %shl, 4096
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.021.i = phi ptr [ %node.019.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %iova.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 1
  %7 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iova.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %8)
  %cmp.not.i = icmp ugt i32 %add.i, %8
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size2.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 3
  %9 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size2.i, align 4
  %add3.i = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %shl)
  %cmp4.not.i = icmp ugt i32 %add3.i, %shl
  br i1 %cmp4.not.i, label %for.inc, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %11 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.for.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.for.end_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %if.else.i
  tail call fastcc void @vfio_unpin_page_external(ptr noundef nonnull %node.021.i, i32 noundef %shl, i1 noundef zeroext %cmp.i)
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %npage
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.i.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.041 = phi i32 [ %i.043, %cleanup.i.for.end_crit_edge ], [ %npage, %for.inc.for.end_crit_edge ], [ %i.043, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041)
  %cmp16 = icmp sgt i32 %i.041, 0
  %spec.select = select i1 %cmp16, i32 %i.041, i32 -22
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %if.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ -22, %entry.cleanup17_crit_edge ], [ -13, %if.end.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_register_notifier(ptr noundef %iommu_data, ptr nocapture noundef %events, ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %events, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %notifier = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef %notifier, ptr noundef %nb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_unregister_notifier(ptr noundef %iommu_data, ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 4
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %notifier, ptr noundef %nb) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_iommu_type1_dma_rw(ptr noundef %iommu_data, i32 noundef %user_iova, ptr noundef %data, i32 noundef %count, i1 noundef zeroext %write) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not36 = icmp eq i32 %count, 0
  br i1 %cmp.not36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dma_list.i.i.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 3
  %dirty_page_tracking.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 12
  %pgsize_bitmap.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %user_iova.addr.042 = phi i32 [ %user_iova, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %count.addr.041 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %data.addr.037 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end.while.body_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1.i, align 8
  %cmp.i = icmp eq ptr %5, null
  %add.i.i.i = add i32 %user_iova.addr.042, 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else3.i.i.do.body.i.i_crit_edge, %while.body
  %6 = ptrtoint ptr %dma_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.019.i.i.i = load ptr, ptr %dma_list.i.i.i, align 4
  %tobool.not20.i.i.i = icmp eq ptr %node.019.i.i.i, null
  br i1 %tobool.not20.i.i.i, label %do.body.i.i.while.end_crit_edge, label %do.body.i.i.while.body.i.i.i_crit_edge

do.body.i.i.while.body.i.i.i_crit_edge:           ; preds = %do.body.i.i
  br label %while.body.i.i.i

do.body.i.i.while.end_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %do.body.i.i.while.body.i.i.i_crit_edge
  %node.021.i.i.i = phi ptr [ %node.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %node.019.i.i.i, %do.body.i.i.while.body.i.i.i_crit_edge ]
  %iova.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %iova.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iova.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %8)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i.i, %8
  br i1 %cmp.not.i.i.i, label %if.else.i.i119.i, label %if.then.i.i118.i

if.then.i.i118.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i119.i:                                 ; preds = %while.body.i.i.i
  %size2.i.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size2.i.i.i, align 4
  %add3.i.i.i = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.i, i32 %user_iova.addr.042)
  %cmp4.not.i.i.i = icmp ugt i32 %add3.i.i.i, %user_iova.addr.042
  br i1 %cmp4.not.i.i.i, label %if.else.i120.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i119.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.then.i.i118.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i118.i ], [ %rb_right.i.i.i, %if.then5.i.i.i ]
  %11 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.while.end_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

cleanup.i.i.i.while.end_crit_edge:                ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.else.i120.i:                                   ; preds = %if.else.i.i119.i
  %vaddr_invalid.i.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %vaddr_invalid.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vaddr_invalid.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i.i, label %if.else.i120.i.if.end.i_crit_edge, label %if.else3.i.i

if.else.i120.i.if.end.i_crit_edge:                ; preds = %if.else.i120.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.else3.i.i:                                     ; preds = %if.else.i120.i
  %call4.i.i = tail call fastcc i32 @vfio_wait(ptr noundef %iommu_data) #14
  %cmp.i121.i = icmp eq i32 %call4.i.i, 1
  br i1 %cmp.i121.i, label %if.else3.i.i.do.body.i.i_crit_edge, label %vfio_find_dma_valid.exit.i

if.else3.i.i.do.body.i.i_crit_edge:               ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

vfio_find_dma_valid.exit.i:                       ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp4.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp4.i, label %vfio_find_dma_valid.exit.i.while.end_crit_edge, label %vfio_find_dma_valid.exit.i.if.end.i_crit_edge

vfio_find_dma_valid.exit.i.if.end.i_crit_edge:    ; preds = %vfio_find_dma_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

vfio_find_dma_valid.exit.i.while.end_crit_edge:   ; preds = %vfio_find_dma_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i:                                         ; preds = %vfio_find_dma_valid.exit.i.if.end.i_crit_edge, %if.else.i120.i.if.end.i_crit_edge
  %size2.i.i.i.lcssa56 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 3
  %iova.i.i.i.lcssa59 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 1
  br i1 %write, label %land.lhs.true.i, label %if.end.i.lor.lhs.false.i_crit_edge

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %prot.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prot.i, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.while.end_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %prot6.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %prot6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prot6.i, align 4
  %and7.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.while.end_crit_edge, label %if.end10.i

lor.lhs.false.i.while.end_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %task11.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %task11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task11.i, align 4
  %call12.i = tail call ptr @get_task_mm(ptr noundef %19) #14
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end10.i.while.end_crit_edge, label %if.end15.i

if.end10.i.while.end_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end15.i:                                       ; preds = %if.end10.i
  br i1 %cmp.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kthread_use_mm(ptr noundef nonnull %call12.i) #14
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end15.i
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %mm20.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %mm20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm20.i, align 8
  %cmp21.not.i = icmp eq ptr %23, %call12.i
  br i1 %cmp21.not.i, label %if.else.i.if.end24.i_crit_edge, label %out.i.thread

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

out.i.thread:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mmput(ptr noundef nonnull %call12.i) #14
  br label %while.end

if.end24.i:                                       ; preds = %if.else.i.if.end24.i_crit_edge, %if.then17.i
  %24 = ptrtoint ptr %iova.i.i.i.lcssa59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iova.i.i.i.lcssa59, align 4
  %sub.i = sub i32 %user_iova.addr.042, %25
  %26 = ptrtoint ptr %size2.i.i.i.lcssa56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size2.i.i.i.lcssa56, align 4
  %sub25.i = sub i32 %27, %sub.i
  %28 = tail call i32 @llvm.umin.i32(i32 %sub25.i, i32 %count.addr.041) #14
  %vaddr31.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %vaddr31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vaddr31.i, align 4
  %add.i = add i32 %30, %sub.i
  %31 = inttoptr i32 %add.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.i.i.i = icmp slt i32 %28, 0
  br i1 %write, label %if.end8.i.i.i, label %if.end8.i.i104.i

if.end8.i.i.i:                                    ; preds = %if.end24.i
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.end55.i_crit_edge, label %if.then27.i.i.i, !prof !93

land.rhs16.i.i.i.if.end55.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.end55.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %data.addr.037, i32 noundef %28, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 %28, i32 -1226833920) #18, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data.addr.037, i32 noundef %28) #14
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef %data.addr.037, i32 noundef %28) #14
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %28, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %28, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool35.not.i = icmp ne i32 %n.addr.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not.i18 = icmp eq i32 %28, 0
  %tobool36.not.i = select i1 %tobool35.not.i, i1 true, i1 %tobool36.not.i18
  br i1 %tobool36.not.i, label %copy_to_user.exit.i.if.end55.i_crit_edge, label %land.lhs.true37.i

copy_to_user.exit.i.if.end55.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

land.lhs.true37.i:                                ; preds = %copy_to_user.exit.i
  %33 = ptrtoint ptr %dirty_page_tracking.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dirty_page_tracking.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool38.not.i = icmp eq i8 %34, 0
  br i1 %tobool38.not.i, label %land.lhs.true37.i.if.end55.i_crit_edge, label %if.then39.i

land.lhs.true37.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pgsize_bitmap.i, align 8
  %conv.i = trunc i64 %36 to i32
  %37 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #14, !range !97
  %bitmap.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmap.i, align 4
  %shr.i = lshr i32 %sub.i, %37
  %add41.i = add i32 %sub.i, -1
  %sub42.i = add i32 %add41.i, %28
  %shr43.i = lshr i32 %sub42.i, %37
  %sub45.i = sub i32 %shr43.i, %shr.i
  %add46.i = add i32 %sub45.i, 1
  tail call void @__bitmap_set(ptr noundef %39, i32 noundef %shr.i, i32 noundef %add46.i) #14
  br label %if.end55.i

if.end8.i.i104.i:                                 ; preds = %if.end24.i
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i106.i, label %if.then.i.i.i109.i

land.rhs16.i.i106.i:                              ; preds = %if.end8.i.i104.i
  %.b71.i.i105.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i105.i, label %land.rhs16.i.i106.i.if.end55.i_crit_edge, label %if.then27.i.i107.i, !prof !93

land.rhs16.i.i106.i.if.end55.i_crit_edge:         ; preds = %land.rhs16.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then27.i.i107.i:                               ; preds = %land.rhs16.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.end55.i

if.then.i.i.i109.i:                               ; preds = %if.end8.i.i104.i
  tail call void @__check_object_size(ptr noundef %data.addr.037, i32 noundef %28, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i110.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i110.i, label %if.then.i.i.i109.i.if.end.i.i115.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i109.i.if.end.i.i115.i_crit_edge:     ; preds = %if.then.i.i.i109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i115.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i109.i
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 %28, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i112.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112.i)
  %cmp.i6.i113.i = icmp eq i32 %asmresult.i.i112.i, 0
  br i1 %cmp.i6.i113.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i115.i_crit_edge, !prof !93

land.lhs.true.i.i.i.if.end.i.i115.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i115.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i114.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data.addr.037, i32 noundef %28) #14
  %41 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !94
  %and.i.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data.addr.037, ptr noundef %31, i32 noundef %28) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #14, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  br label %if.end.i.i115.i

if.end.i.i115.i:                                  ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i115.i_crit_edge, %if.then.i.i.i109.i.if.end.i.i115.i_crit_edge
  %res.0.i.i.i = phi i32 [ %28, %if.then.i.i.i109.i.if.end.i.i115.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %28, %land.lhs.true.i.i.i.if.end.i.i115.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i115.i.if.end55.i_crit_edge, label %if.then11.i.i.i, !prof !93

if.end.i.i115.i.if.end55.i_crit_edge:             ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = sub i32 %28, %res.0.i.i.i
  %add.ptr.i.i116.i = getelementptr i8, ptr %data.addr.037, i32 %sub.i.i.i
  %44 = call ptr @memset(ptr %add.ptr.i.i116.i, i32 0, i32 %res.0.i.i.i)
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then11.i.i.i, %if.end.i.i115.i.if.end55.i_crit_edge, %if.then27.i.i107.i, %land.rhs16.i.i106.i.if.end55.i_crit_edge, %if.then39.i, %land.lhs.true37.i.if.end55.i_crit_edge, %copy_to_user.exit.i.if.end55.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.end55.i_crit_edge
  %done.0 = phi i32 [ 0, %copy_to_user.exit.i.if.end55.i_crit_edge ], [ %28, %land.lhs.true37.i.if.end55.i_crit_edge ], [ %28, %if.then39.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.if.end55.i_crit_edge ], [ %28, %if.end.i.i115.i.if.end55.i_crit_edge ], [ 0, %if.then11.i.i.i ], [ 0, %if.then27.i.i107.i ], [ 0, %land.rhs16.i.i106.i.if.end55.i_crit_edge ]
  br i1 %cmp.i, label %if.then57.i, label %if.end55.i.out.i_crit_edge

if.end55.i.out.i_crit_edge:                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kthread_unuse_mm(ptr noundef nonnull %call12.i) #14
  br label %out.i

out.i:                                            ; preds = %if.then57.i, %if.end55.i.out.i_crit_edge
  tail call void @mmput(ptr noundef nonnull %call12.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0)
  %tobool59.not.i = icmp eq i32 %done.0, 0
  br i1 %tobool59.not.i, label %out.i.while.end_crit_edge, label %if.end

out.i.while.end_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %out.i
  %sub = sub i32 %count.addr.041, %done.0
  %add.ptr = getelementptr i8, ptr %data.addr.037, i32 %done.0
  %add = add i32 %done.0, %user_iova.addr.042
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %out.i.while.end_crit_edge, %out.i.thread, %if.end10.i.while.end_crit_edge, %lor.lhs.false.i.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %vfio_find_dma_valid.exit.i.while.end_crit_edge, %cleanup.i.i.i.while.end_crit_edge, %do.body.i.i.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ -14, %out.i.thread ], [ 0, %entry.while.end_crit_edge ], [ -22, %cleanup.i.i.i.while.end_crit_edge ], [ -22, %do.body.i.i.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ %call4.i.i, %vfio_find_dma_valid.exit.i.while.end_crit_edge ], [ -1, %lor.lhs.false.i.while.end_crit_edge ], [ -1, %land.lhs.true.i.while.end_crit_edge ], [ -1, %if.end10.i.while.end_crit_edge ], [ -14, %out.i.while.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vfio_iommu_type1_group_iommu_domain(ptr noundef %iommu_data, ptr noundef readnone %iommu_group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iommu_data, null
  %tobool1.not = icmp eq ptr %iommu_group, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %find_iommu_group.exit.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %iommu_data, %if.end ], [ %.pn, %find_iommu_group.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %iommu_data
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %group_list.i = getelementptr i8, ptr %.pn, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %group_list.i, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %group_list.i
  br i1 %cmp.not.i, label %for.cond.i.find_iommu_group.exit_crit_edge, label %for.body.i

for.cond.i.find_iommu_group.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_iommu_group.exit

for.body.i:                                       ; preds = %for.cond.i
  %g.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %2 = ptrtoint ptr %g.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %g.0.i, align 4
  %cmp4.i = icmp eq ptr %3, %iommu_group
  br i1 %cmp4.i, label %find_iommu_group.exit.split.loop.exit32, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_iommu_group.exit.split.loop.exit32:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %g.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  br label %find_iommu_group.exit

find_iommu_group.exit:                            ; preds = %find_iommu_group.exit.split.loop.exit32, %for.cond.i.find_iommu_group.exit_crit_edge
  %retval.0.i = phi ptr [ %g.0.i.le, %find_iommu_group.exit.split.loop.exit32 ], [ null, %for.cond.i.find_iommu_group.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %find_iommu_group.exit.for.cond_crit_edge, label %if.then7

find_iommu_group.exit.for.cond_crit_edge:         ; preds = %find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then7:                                         ; preds = %find_iommu_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  %d.0.le = getelementptr i8, ptr %.pn, i32 -4
  %4 = ptrtoint ptr %d.0.le to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d.0.le, align 4
  br label %for.end

for.end:                                          ; preds = %if.then7, %for.cond.for.end_crit_edge
  %domain.0 = phi ptr [ %5, %if.then7 ], [ inttoptr (i32 -19 to ptr), %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain.0, %for.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_iommu_type1_notify(ptr noundef %iommu_data, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp.not = icmp eq i32 %event, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %container_open = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 13
  %0 = ptrtoint ptr %container_open to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %container_open, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %vaddr_wait = getelementptr inbounds %struct.vfio_iommu, ptr %iommu_data, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %vaddr_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_iommu_iova_free(ptr noundef readonly %iova) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iova, align 4
  %cmp.not18 = icmp eq ptr %1, %iova
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %n.019 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %n.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %n.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %n.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %n.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %n.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %n.019) #14
  %cmp.not = icmp eq ptr %next.0, %iova
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_remove_dma(ptr noundef %iommu, ptr noundef %dma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pfn_list = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 9
  %0 = ptrtoint ptr %pfn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfn_list, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end11, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1162, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @vfio_unmap_unpin(ptr noundef %iommu, ptr noundef %dma, i1 noundef zeroext true)
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 3
  tail call void @rb_erase(ptr noundef %dma, ptr noundef %dma_list.i) #14
  %task = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 8
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #14, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !93

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #14
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  tail call void @__put_task_struct(ptr noundef %3) #14
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %bitmap.i = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 10
  %5 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap.i, align 4
  tail call void @kvfree(ptr noundef %6) #14
  %7 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bitmap.i, align 4
  %vaddr_invalid = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 7
  %8 = ptrtoint ptr %vaddr_invalid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vaddr_invalid, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  br i1 %tobool24.not, label %put_task_struct.exit.if.end26_crit_edge, label %if.then25

put_task_struct.exit.if.end26_crit_edge:          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vaddr_invalid_count = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 6
  %10 = ptrtoint ptr %vaddr_invalid_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vaddr_invalid_count, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %vaddr_invalid_count, align 8
  %vaddr_wait = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %vaddr_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %put_task_struct.exit.if.end26_crit_edge
  tail call void @kfree(ptr noundef %dma) #14
  %dma_avail = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 5
  %12 = ptrtoint ptr %dma_avail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_avail, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %dma_avail, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_unmap_unpin(ptr noundef %iommu, ptr nocapture noundef %dma, i1 noundef zeroext %do_accounting) unnamed_addr #2 align 64 {
entry:
  %unmapped_region_list = alloca %struct.list_head, align 4
  %iotlb_gather = alloca %struct.iommu_iotlb_gather, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iova1 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 1
  %0 = ptrtoint ptr %iova1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iova1, align 4
  %size = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add = add i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unmapped_region_list) #14
  %4 = getelementptr inbounds %struct.list_head, ptr %unmapped_region_list, i32 0, i32 1
  %5 = ptrtoint ptr %unmapped_region_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %unmapped_region_list, ptr %unmapped_region_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %unmapped_region_list, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iotlb_gather) #14
  %7 = getelementptr inbounds i8, ptr %iotlb_gather, i32 20
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup128_crit_edge, label %if.end

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup128

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %iommu, align 4
  %cmp.i.not = icmp eq ptr %10, %iommu
  br i1 %cmp.i.not, label %if.end.cleanup128_crit_edge, label %if.end6

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup128

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn216 = load ptr, ptr %10, align 4
  %cmp.not217 = icmp eq ptr %.pn216, %iommu
  br i1 %cmp.not217, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn218 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn216, %if.end6.for.body_crit_edge ]
  %d.0 = getelementptr i8, ptr %.pn218, i32 -4
  %12 = ptrtoint ptr %d.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d.0, align 4
  %14 = ptrtoint ptr %iova1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iova1, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %call19 = call i32 @iommu_unmap(ptr noundef %13, i32 noundef %15, i32 noundef %17) #14
  call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1104, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  %18 = ptrtoint ptr %.pn218 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn218, align 4
  %cmp.not = icmp eq ptr %.pn, %iommu
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %freelist1.i = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %iotlb_gather, i32 0, i32 3
  %19 = ptrtoint ptr %iotlb_gather to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %iotlb_gather, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %22 = ptrtoint ptr %freelist1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %freelist1.i, ptr %freelist1.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 16
  %23 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %freelist1.i, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 20
  %24 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp27223 = icmp ult i32 %1, %add
  br i1 %cmp27223, label %while.body.lr.ph, label %while.end.thread230

while.end.thread230:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %iommu_mapped233 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 5
  %25 = ptrtoint ptr %iommu_mapped233 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %iommu_mapped233, align 4
  br label %if.end123

while.body.lr.ph:                                 ; preds = %for.end
  %fgsp = getelementptr i8, ptr %10, i32 20
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %unlocked.0226 = phi i32 [ 0, %while.body.lr.ph ], [ %unlocked.3, %cleanup.while.body_crit_edge ]
  %unmapped_region_cnt.0225 = phi i32 [ 0, %while.body.lr.ph ], [ %unmapped_region_cnt.2, %cleanup.while.body_crit_edge ]
  %iova.0224 = phi i32 [ %1, %while.body.lr.ph ], [ %iova.4, %cleanup.while.body_crit_edge ]
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %call30 = call i32 @iommu_iova_to_phys(ptr noundef %27, i32 noundef %iova.0224) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end, label %for.cond60.preheader, !prof !101

for.cond60.preheader:                             ; preds = %while.body
  %28 = ptrtoint ptr %fgsp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fgsp, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not219 = icmp eq i8 %29, 0
  br i1 %tobool61.not219, label %for.cond60.preheader.land.rhs_crit_edge, label %for.cond60.preheader.for.end74_crit_edge

for.cond60.preheader.for.end74_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74

for.cond60.preheader.land.rhs_crit_edge:          ; preds = %for.cond60.preheader
  br label %land.rhs

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1113, i32 noundef 9, ptr noundef null) #14
  %add58 = add i32 %iova.0224, 4096
  br label %cleanup

land.rhs:                                         ; preds = %for.inc72.land.rhs_crit_edge, %for.cond60.preheader.land.rhs_crit_edge
  %len.0220 = phi i32 [ %add73, %for.inc72.land.rhs_crit_edge ], [ 4096, %for.cond60.preheader.land.rhs_crit_edge ]
  %add62 = add i32 %len.0220, %iova.0224
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %add)
  %cmp63 = icmp ult i32 %add62, %add
  br i1 %cmp63, label %for.body64, label %land.rhs.for.end74_crit_edge

land.rhs.for.end74_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74

for.body64:                                       ; preds = %land.rhs
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %call67 = call i32 @iommu_iova_to_phys(ptr noundef %31, i32 noundef %add62) #14
  %add68 = add i32 %len.0220, %call30
  call void @__sanitizer_cov_trace_cmp4(i32 %call67, i32 %add68)
  %cmp69.not = icmp eq i32 %call67, %add68
  br i1 %cmp69.not, label %for.inc72, label %for.body64.for.end74_crit_edge

for.body64.for.end74_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74

for.inc72:                                        ; preds = %for.body64
  %add73 = add i32 %len.0220, 4096
  %32 = ptrtoint ptr %fgsp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fgsp, align 4, !range !99
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %for.inc72.land.rhs_crit_edge, label %for.inc72.for.end74_crit_edge

for.inc72.for.end74_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74

for.inc72.land.rhs_crit_edge:                     ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.end74:                                        ; preds = %for.inc72.for.end74_crit_edge, %for.body64.for.end74_crit_edge, %land.rhs.for.end74_crit_edge, %for.cond60.preheader.for.end74_crit_edge
  %len.0.lcssa = phi i32 [ 4096, %for.cond60.preheader.for.end74_crit_edge ], [ %add73, %for.inc72.for.end74_crit_edge ], [ %len.0220, %for.body64.for.end74_crit_edge ], [ %len.0220, %land.rhs.for.end74_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 20) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end74.if.then77_crit_edge, label %if.then.i

for.end74.if.then77_crit_edge:                    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77

if.then.i:                                        ; preds = %for.end74
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %call3.i = call i32 @iommu_unmap_fast(ptr noundef %36, i32 noundef %iova.0224, i32 noundef %len.0.lcssa, ptr noundef nonnull %iotlb_gather) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.then77

if.else.i:                                        ; preds = %if.then.i
  %iova6.i = getelementptr inbounds %struct.vfio_regions, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %iova6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %iova.0224, ptr %iova6.i, align 8
  %phys7.i = getelementptr inbounds %struct.vfio_regions, ptr %call7.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %phys7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call30, ptr %phys7.i, align 4
  %len8.i = getelementptr inbounds %struct.vfio_regions, ptr %call7.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %len8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call3.i, ptr %len8.i, align 8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %41, ptr noundef nonnull %unmapped_region_list) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i.i, ptr %4, align 4
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %unmapped_region_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i.i.i, ptr %41, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.i.i, %if.else.i.if.end9.i_crit_edge
  %add.i = add i32 %call3.i, %iova.0224
  %inc.i = add i32 %unmapped_region_cnt.0225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %inc.i)
  %cmp.i168 = icmp sgt i32 %inc.i, 511
  br i1 %cmp.i168, label %unmap_unpin_fast.exit, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

unmap_unpin_fast.exit:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %call12.i = call fastcc i32 @vfio_sync_unpin(ptr noundef %dma, ptr noundef %add.ptr, ptr noundef nonnull %unmapped_region_list, ptr noundef nonnull %iotlb_gather) #14
  %add13.i = add i32 %call12.i, %unlocked.0226
  br label %cleanup

if.then77:                                        ; preds = %if.then5.i, %for.end74.if.then77_crit_edge
  %call12.i195 = call fastcc i32 @vfio_sync_unpin(ptr noundef %dma, ptr noundef %add.ptr, ptr noundef nonnull %unmapped_region_list, ptr noundef nonnull %iotlb_gather) #14
  %add13.i196 = add i32 %call12.i195, %unlocked.0226
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %call.i169 = call i32 @iommu_unmap(ptr noundef %47, i32 noundef %iova.0224, i32 noundef %len.0.lcssa) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %while.end.thread, label %unmap_unpin_slow.exit

unmap_unpin_slow.exit:                            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = lshr i32 %call30, 12
  %shr2.i = lshr i32 %call.i169, 12
  %call3.i171 = call fastcc i32 @vfio_unpin_pages_remote(ptr noundef %dma, i32 noundef %iova.0224, i32 noundef %shr.i, i32 noundef %shr2.i, i1 noundef zeroext false) #14
  %add.i172 = add i32 %call3.i171, %add13.i196
  %add4.i = add i32 %call.i169, %iova.0224
  call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1071, i32 noundef 0) #14
  %call.i.i = call i32 @__cond_resched() #14
  br label %cleanup

while.end.thread:                                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1141, i32 noundef 9, ptr noundef null) #14
  %iommu_mapped212 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 5
  %48 = ptrtoint ptr %iommu_mapped212 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %iommu_mapped212, align 4
  br label %if.end123

cleanup:                                          ; preds = %unmap_unpin_slow.exit, %unmap_unpin_fast.exit, %if.end9.i.cleanup_crit_edge, %do.end
  %iova.4 = phi i32 [ %add58, %do.end ], [ %add4.i, %unmap_unpin_slow.exit ], [ %add.i, %unmap_unpin_fast.exit ], [ %add.i, %if.end9.i.cleanup_crit_edge ]
  %unmapped_region_cnt.2 = phi i32 [ %unmapped_region_cnt.0225, %do.end ], [ 0, %unmap_unpin_slow.exit ], [ 0, %unmap_unpin_fast.exit ], [ %inc.i, %if.end9.i.cleanup_crit_edge ]
  %unlocked.3 = phi i32 [ %unlocked.0226, %do.end ], [ %add.i172, %unmap_unpin_slow.exit ], [ %add13.i, %unmap_unpin_fast.exit ], [ %unlocked.0226, %if.end9.i.cleanup_crit_edge ]
  %cmp27 = icmp ult i32 %iova.4, %add
  br i1 %cmp27, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup
  %iommu_mapped = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 5
  %49 = ptrtoint ptr %iommu_mapped to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %iommu_mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unmapped_region_cnt.2)
  %tobool119.not = icmp eq i32 %unmapped_region_cnt.2, 0
  br i1 %tobool119.not, label %while.end.if.end123_crit_edge, label %if.then120

while.end.if.end123_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then120:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %call121 = call fastcc i32 @vfio_sync_unpin(ptr noundef %dma, ptr noundef %add.ptr, ptr noundef nonnull %unmapped_region_list, ptr noundef nonnull %iotlb_gather)
  %add122 = add i32 %call121, %unlocked.3
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %while.end.if.end123_crit_edge, %while.end.thread, %while.end.thread230
  %unlocked.5 = phi i32 [ %unlocked.3, %while.end.if.end123_crit_edge ], [ %add122, %if.then120 ], [ %add13.i196, %while.end.thread ], [ 0, %while.end.thread230 ]
  br i1 %do_accounting, label %if.then125, label %if.end123.cleanup128_crit_edge

if.end123.cleanup128_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup128

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 0, %unlocked.5
  %call126 = call fastcc i32 @vfio_lock_acct(ptr noundef %dma, i32 noundef %sub, i1 noundef zeroext true)
  br label %cleanup128

cleanup128:                                       ; preds = %if.then125, %if.end123.cleanup128_crit_edge, %if.end.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  %retval.0 = phi i32 [ 0, %if.then125 ], [ 0, %entry.cleanup128_crit_edge ], [ 0, %if.end.cleanup128_crit_edge ], [ %unlocked.5, %if.end123.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iotlb_gather) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unmapped_region_list) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_iova_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_sync_unpin(ptr nocapture noundef readonly %dma, ptr nocapture noundef readonly %domain, ptr noundef readonly %regions, ptr noundef %iotlb_gather) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %ops.i = getelementptr inbounds %struct.iommu_domain, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %iotlb_sync.i = getelementptr inbounds %struct.iommu_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %iotlb_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iotlb_sync.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.iommu_iotlb_sync.exit_crit_edge, label %if.then.i

entry.iommu_iotlb_sync.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %iommu_iotlb_sync.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %5(ptr noundef %1, ptr noundef %iotlb_gather) #14
  br label %iommu_iotlb_sync.exit

iommu_iotlb_sync.exit:                            ; preds = %if.then.i, %entry.iommu_iotlb_sync.exit_crit_edge
  %freelist1.i.i = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %iotlb_gather, i32 0, i32 3
  %6 = ptrtoint ptr %iotlb_gather to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %iotlb_gather, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 8
  %8 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %9 = ptrtoint ptr %freelist1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %freelist1.i.i, ptr %freelist1.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 16
  %10 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %freelist1.i.i, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %iotlb_gather, i32 20
  %11 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %12 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regions, align 4
  %cmp.not27 = icmp eq ptr %13, %regions
  br i1 %cmp.not27, label %iommu_iotlb_sync.exit.for.end_crit_edge, label %iommu_iotlb_sync.exit.for.body_crit_edge

iommu_iotlb_sync.exit.for.body_crit_edge:         ; preds = %iommu_iotlb_sync.exit
  br label %for.body

iommu_iotlb_sync.exit.for.end_crit_edge:          ; preds = %iommu_iotlb_sync.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %iommu_iotlb_sync.exit.for.body_crit_edge
  %unlocked.030 = phi i32 [ %add, %list_del.exit.for.body_crit_edge ], [ 0, %iommu_iotlb_sync.exit.for.body_crit_edge ]
  %entry1.028 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %13, %iommu_iotlb_sync.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %entry1.028 to i32
  call void @__asan_load4_noabort(i32 %14)
  %next.0 = load ptr, ptr %entry1.028, align 4
  %iova = getelementptr inbounds %struct.vfio_regions, ptr %entry1.028, i32 0, i32 1
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iova, align 4
  %phys = getelementptr inbounds %struct.vfio_regions, ptr %entry1.028, i32 0, i32 2
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys, align 4
  %shr = lshr i32 %18, 12
  %len = getelementptr inbounds %struct.vfio_regions, ptr %entry1.028, i32 0, i32 3
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %shr9 = lshr i32 %20, 12
  %call = tail call fastcc i32 @vfio_unpin_pages_remote(ptr noundef %dma, i32 noundef %16, i32 noundef %shr, i32 noundef %shr9, i1 noundef zeroext false)
  %add = add i32 %call, %unlocked.030
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.028) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.028, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %entry1.028 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %27 = ptrtoint ptr %entry1.028 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.028, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.028) #14
  %cmp.not = icmp eq ptr %next.0, %regions
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %iommu_iotlb_sync.exit.for.end_crit_edge
  %unlocked.0.lcssa = phi i32 [ 0, %iommu_iotlb_sync.exit.for.end_crit_edge ], [ %add, %list_del.exit.for.end_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1004, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  ret i32 %unlocked.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_lock_acct(ptr nocapture noundef readonly %dma, i32 noundef %npage, i1 noundef zeroext %async) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage)
  %tobool.not = icmp eq i32 %npage, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %task = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 8
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  br i1 %async, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @get_task_mm(ptr noundef %1) #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mm3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %mm3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %3, %cond.false ]
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end6

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vfio_lock_acct, %if.then.i.i)) #14
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !110

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %cond, i1 noundef zeroext true) #14
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end6
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %cond, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vfio_lock_acct, %if.then.i4.i)) #14
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !110

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %cond, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #14
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then9, label %mmap_write_lock_killable.exit.if.end18_crit_edge

mmap_write_lock_killable.exit.if.end18_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then9:                                         ; preds = %mmap_write_lock_killable.exit
  %4 = tail call i32 @llvm.abs.i32(i32 %npage, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage)
  %cmp14 = icmp sgt i32 %npage, 0
  %task15 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 8
  %5 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task15, align 4
  %lock_cap = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 6
  %7 = ptrtoint ptr %lock_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lock_cap, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16 = icmp ne i8 %8, 0
  %call17 = tail call i32 @__account_locked_vm(ptr noundef nonnull %cond, i32 noundef %4, i1 noundef zeroext %cmp14, ptr noundef %6, i1 noundef zeroext %tobool16) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vfio_lock_acct, %if.then.i.i36)) #14
          to label %mmap_write_unlock.exit [label %if.then.i.i36], !srcloc !110

if.then.i.i36:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %cond, i1 noundef zeroext true) #14
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i36, %if.then9
  tail call void @up_write(ptr noundef %mmap_lock.i) #14
  br label %if.end18

if.end18:                                         ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.if.end18_crit_edge
  %ret.0 = phi i32 [ %call.i, %mmap_write_lock_killable.exit.if.end18_crit_edge ], [ %call17, %mmap_write_unlock.exit ]
  br i1 %async, label %if.then20, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mmput(ptr noundef nonnull %cond) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -3, %cond.end.cleanup_crit_edge ], [ %ret.0, %if.then20 ], [ %ret.0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap_fast(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_unpin_pages_remote(ptr nocapture noundef readonly %dma, i32 noundef %iova, i32 noundef %pfn, i32 noundef %npage, i1 noundef zeroext %do_accounting) unnamed_addr #2 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage)
  %cmp24 = icmp sgt i32 %npage, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %prot = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 4
  %pfn_list.i = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.inc.for.body_crit_edge ]
  %locked.031 = phi i32 [ 0, %for.body.lr.ph ], [ %locked.1, %for.inc.for.body_crit_edge ]
  %unlocked.030 = phi i32 [ 0, %for.body.lr.ph ], [ %unlocked.1, %for.inc.for.body_crit_edge ]
  %iova.addr.026 = phi i32 [ %iova, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pfn.addr.025 = phi i32 [ %pfn, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %pfn.addr.025, 1
  %0 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prot, align 4
  %call.i.i = call i32 @pfn_valid(i32 noundef %pfn.addr.025) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.for.inc_crit_edge, label %if.then.i.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i.i:                                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %pfn.addr.025, %3
  %add.ptr.i.i = getelementptr %struct.page, ptr %2, i32 %sub.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_invalid_reserved_pfn.exit.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i:                   ; preds = %if.then.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i.i, align 4
  %8 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.i.not.i, label %if.then, label %is_invalid_reserved_pfn.exit.i.for.inc_crit_edge

is_invalid_reserved_pfn.exit.i.for.inc_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %is_invalid_reserved_pfn.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %9 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i.i, ptr %page.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i, i32 noundef 1, i1 noundef zeroext %tobool.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #14
  %inc1 = add i32 %unlocked.030, 1
  %10 = ptrtoint ptr %pfn_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.014.i = load ptr, ptr %pfn_list.i, align 4
  %tobool.not15.i = icmp eq ptr %node.014.i, null
  br i1 %tobool.not15.i, label %if.then.vfio_find_vpfn.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.vfio_find_vpfn.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_vpfn.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %node.016.i = phi ptr [ %node.0.i, %if.end6.i.while.body.i_crit_edge ], [ %node.014.i, %if.then.while.body.i_crit_edge ]
  %iova1.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i, i32 0, i32 1
  %11 = ptrtoint ptr %iova1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iova1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %iova.addr.026)
  %cmp.i = icmp ugt i32 %12, %iova.addr.026
  br i1 %cmp.i, label %if.then.i19, label %if.else.i

if.then.i19:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %iova.addr.026)
  %cmp3.i = icmp ult i32 %12, %iova.addr.026
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.vfio_find_vpfn.exit_crit_edge

if.else.i.vfio_find_vpfn.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_vpfn.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i19
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i19 ], [ %rb_right.i, %if.then4.i ]
  %13 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.vfio_find_vpfn.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end6.i.vfio_find_vpfn.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_find_vpfn.exit

vfio_find_vpfn.exit:                              ; preds = %if.end6.i.vfio_find_vpfn.exit_crit_edge, %if.else.i.vfio_find_vpfn.exit_crit_edge, %if.then.vfio_find_vpfn.exit_crit_edge
  %node.0.lcssa.i = phi ptr [ null, %if.then.vfio_find_vpfn.exit_crit_edge ], [ %node.016.i, %if.else.i.vfio_find_vpfn.exit_crit_edge ], [ null, %if.end6.i.vfio_find_vpfn.exit_crit_edge ]
  %tobool3.not = icmp ne ptr %node.0.lcssa.i, null
  %inc5 = zext i1 %tobool3.not to i32
  %spec.select = add i32 %locked.031, %inc5
  br label %for.inc

for.inc:                                          ; preds = %vfio_find_vpfn.exit, %is_invalid_reserved_pfn.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %unlocked.1 = phi i32 [ %inc1, %vfio_find_vpfn.exit ], [ %unlocked.030, %is_invalid_reserved_pfn.exit.i.for.inc_crit_edge ], [ %unlocked.030, %for.body.for.inc_crit_edge ]
  %locked.1 = phi i32 [ %spec.select, %vfio_find_vpfn.exit ], [ %locked.031, %is_invalid_reserved_pfn.exit.i.for.inc_crit_edge ], [ %locked.031, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw nsw i32 %i.032, 1
  %add = add i32 %iova.addr.026, 4096
  %exitcond.not = icmp eq i32 %inc7, %npage
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %unlocked.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %unlocked.1, %for.inc.for.end_crit_edge ]
  %locked.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %locked.1, %for.inc.for.end_crit_edge ]
  br i1 %do_accounting, label %if.then9, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %locked.0.lcssa, %unlocked.0.lcssa
  %call10 = call fastcc i32 @vfio_lock_acct(ptr noundef %dma, i32 noundef %sub, i1 noundef zeroext true)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end.if.end11_crit_edge
  ret i32 %unlocked.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__account_locked_vm(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_info_cap_shift(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_info_add_capability(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfio_info_cap_add(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_pin_pages_remote(ptr nocapture noundef readonly %dma, i32 noundef %vaddr, i32 noundef %npage, ptr nocapture noundef %pfn_base, i32 noundef %limit, ptr nocapture noundef %batch) unnamed_addr #2 align 64 {
entry:
  %page.i212 = alloca ptr, align 4
  %page.i = alloca ptr, align 4
  %pfn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfn) #14
  %0 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pfn, align 4, !annotation !102
  %1 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm1, align 8
  %vaddr2 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 2
  %7 = ptrtoint ptr %vaddr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vaddr2, align 4
  %sub = sub i32 %vaddr, %8
  %iova3 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 1
  %9 = ptrtoint ptr %iova3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iova3, align 4
  %add = add i32 %sub, %10
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %13 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %batch, align 4
  %offset = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6 = add i32 %sub.ptr.div, %20
  %21 = ptrtoint ptr %pfn_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add6, ptr %pfn_base, align 4
  %22 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add6, ptr %pfn, align 4
  %call.i = tail call i32 @pfn_valid(i32 noundef %add6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then5.if.end8_crit_edge, label %if.then.i

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i:                                        ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %add6, %24
  %add.ptr.i = getelementptr %struct.page, ptr %23, i32 %sub.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageReserved.exit.i, !prof !101

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

PageReserved.exit.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %add.ptr.i, align 4
  %29 = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.i = icmp ne i32 %29, 0
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %pfn_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pfn_base, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %PageReserved.exit.i, %if.then5.if.end8_crit_edge
  %rsvd.0.off0 = phi i1 [ true, %if.else ], [ %tobool2.i, %PageReserved.exit.i ], [ true, %if.then5.if.end8_crit_edge ]
  %capacity = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 2
  %prot = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 4
  %offset19 = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 4
  %pfn_list.i = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 9
  %lock_cap = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 6
  %locked_vm = getelementptr inbounds %struct.anon.10, ptr %6, i32 0, i32 20
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %if.end8
  %npage.addr.0 = phi i32 [ %npage, %if.end8 ], [ %dec, %while.end.while.cond_crit_edge ]
  %pinned.0 = phi i32 [ 0, %if.end8 ], [ %inc52, %while.end.while.cond_crit_edge ]
  %lock_acct.0 = phi i32 [ 0, %if.end8 ], [ %lock_acct.2, %while.end.while.cond_crit_edge ]
  %rsvd.1.off0 = phi i1 [ %rsvd.0.off0, %if.end8 ], [ %rsvd.4.off0, %while.end.while.cond_crit_edge ]
  %iova.0 = phi i32 [ %add, %if.end8 ], [ %add54, %while.end.while.cond_crit_edge ]
  %vaddr.addr.0 = phi i32 [ %vaddr, %if.end8 ], [ %add53, %while.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npage.addr.0)
  %tobool9.not = icmp eq i32 %npage.addr.0, 0
  br i1 %tobool9.not, label %while.cond.out_crit_edge, label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body:                                       ; preds = %while.cond
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.then12, label %while.body.if.end25_crit_edge

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then12:                                        ; preds = %while.body
  %33 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %capacity, align 4
  %35 = tail call i32 @llvm.smin.i32(i32 %npage.addr.0, i32 %34)
  %36 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prot, align 4
  %38 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %batch, align 4
  %call14 = call fastcc i32 @vaddr_get_pfns(ptr noundef nonnull %6, i32 noundef %vaddr.addr.0, i32 noundef %35, i32 noundef %37, ptr noundef nonnull %pfn, ptr noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then12.unpin_out_crit_edge, label %if.end17

if.then12.unpin_out_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %unpin_out

if.end17:                                         ; preds = %if.then12
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call14, ptr %size, align 4
  %41 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offset19, align 4
  %42 = ptrtoint ptr %pfn_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pfn_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not = icmp eq i32 %43, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.end17
  %44 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pfn, align 4
  %46 = ptrtoint ptr %pfn_base to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pfn_base, align 4
  %call.i182 = tail call i32 @pfn_valid(i32 noundef %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183, label %if.then21.if.end25_crit_edge, label %if.then.i187

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then.i187:                                     ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %48 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i184 = sub i32 %45, %48
  %add.ptr.i185 = getelementptr %struct.page, ptr %47, i32 %sub.i184
  %49 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %add.ptr.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i.not.i.i186 = icmp eq i32 %50, -1
  br i1 %cmp.i.not.i.i186, label %if.then.i.i188, label %PageReserved.exit.i190, !prof !101

if.then.i.i188:                                   ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr.i185, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

PageReserved.exit.i190:                           ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %add.ptr.i185, align 4
  %53 = and i32 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool2.i189 = icmp ne i32 %53, 0
  br label %if.end25

if.end25:                                         ; preds = %PageReserved.exit.i190, %if.then21.if.end25_crit_edge, %if.end17.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %rsvd.4.off0 = phi i1 [ %rsvd.1.off0, %while.body.if.end25_crit_edge ], [ true, %if.then21.if.end25_crit_edge ], [ %tobool2.i189, %PageReserved.exit.i190 ], [ %rsvd.1.off0, %if.end17.if.end25_crit_edge ]
  %54 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %54)
  %pfn.promoted = load i32, ptr %pfn, align 4
  %55 = ptrtoint ptr %pfn_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pfn_base, align 4
  %add28260 = add i32 %56, %pinned.0
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.promoted, i32 %add28260)
  %cmp29.not261 = icmp eq i32 %pfn.promoted, %add28260
  br i1 %cmp29.not261, label %if.end25.lor.lhs.false_crit_edge, label %if.end25.out.loopexit_crit_edge

if.end25.out.loopexit_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.loopexit

if.end25.lor.lhs.false_crit_edge:                 ; preds = %if.end25
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62.lor.lhs.false_crit_edge, %if.end25.lor.lhs.false_crit_edge
  %vaddr.addr.1274 = phi i32 [ %add53, %if.end62.lor.lhs.false_crit_edge ], [ %vaddr.addr.0, %if.end25.lor.lhs.false_crit_edge ]
  %iova.1271 = phi i32 [ %add54, %if.end62.lor.lhs.false_crit_edge ], [ %iova.0, %if.end25.lor.lhs.false_crit_edge ]
  %lock_acct.1268 = phi i32 [ %lock_acct.2, %if.end62.lor.lhs.false_crit_edge ], [ %lock_acct.0, %if.end25.lor.lhs.false_crit_edge ]
  %pinned.1265 = phi i32 [ %inc52, %if.end62.lor.lhs.false_crit_edge ], [ %pinned.0, %if.end25.lor.lhs.false_crit_edge ]
  %npage.addr.1264 = phi i32 [ %dec, %if.end62.lor.lhs.false_crit_edge ], [ %npage.addr.0, %if.end25.lor.lhs.false_crit_edge ]
  %add70255262 = phi i32 [ %add70, %if.end62.lor.lhs.false_crit_edge ], [ %pfn.promoted, %if.end25.lor.lhs.false_crit_edge ]
  %call.i193 = tail call i32 @pfn_valid(i32 noundef %add70255262) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i194 = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i194, label %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge, label %if.then.i198

lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge: ; preds = %lor.lhs.false
  br i1 %rsvd.4.off0, label %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.if.end51_crit_edge, label %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge

lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge: ; preds = %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.loopexit

lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.if.end51_crit_edge: ; preds = %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then.i198:                                     ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %57 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %58 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i195 = sub i32 %add70255262, %58
  %add.ptr.i196 = getelementptr %struct.page, ptr %57, i32 %sub.i195
  %59 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %add.ptr.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.i.not.i.i197 = icmp eq i32 %60, -1
  br i1 %cmp.i.not.i.i197, label %if.then.i.i199, label %is_invalid_reserved_pfn.exit203, !prof !101

if.then.i.i199:                                   ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr.i196, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit203:                  ; preds = %if.then.i198
  %61 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %add.ptr.i196, align 4
  %63 = and i32 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool2.i200 = icmp ne i32 %63, 0
  %64 = xor i1 %rsvd.4.off0, %tobool2.i200
  br i1 %64, label %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge, label %if.end36

is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge: ; preds = %is_invalid_reserved_pfn.exit203
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.loopexit

if.end36:                                         ; preds = %is_invalid_reserved_pfn.exit203
  br i1 %rsvd.4.off0, label %if.end36.if.end51_crit_edge, label %land.lhs.true

if.end36.if.end51_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end36
  %65 = ptrtoint ptr %pfn_list.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %node.014.i = load ptr, ptr %pfn_list.i, align 4
  %tobool.not15.i = icmp eq ptr %node.014.i, null
  br i1 %tobool.not15.i, label %land.lhs.true.if.then40_crit_edge, label %land.lhs.true.while.body.i_crit_edge

land.lhs.true.while.body.i_crit_edge:             ; preds = %land.lhs.true
  br label %while.body.i

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %land.lhs.true.while.body.i_crit_edge
  %node.016.i = phi ptr [ %node.0.i, %if.end6.i.while.body.i_crit_edge ], [ %node.014.i, %land.lhs.true.while.body.i_crit_edge ]
  %iova1.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i, i32 0, i32 1
  %66 = ptrtoint ptr %iova1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iova1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %iova.1271)
  %cmp.i = icmp ugt i32 %67, %iova.1271
  br i1 %cmp.i, label %if.then.i204, label %if.else.i

if.then.i204:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %iova.1271)
  %cmp3.i = icmp ult i32 %67, %iova.1271
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.if.end51_crit_edge

if.else.i.if.end51_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i204
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i204 ], [ %rb_right.i, %if.then4.i ]
  %68 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i205 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i205, label %if.end6.i.if.then40_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end6.i.if.then40_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

if.then40:                                        ; preds = %if.end6.i.if.then40_crit_edge, %land.lhs.true.if.then40_crit_edge
  %69 = ptrtoint ptr %lock_cap to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %lock_cap, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool41.not = icmp eq i8 %70, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = add i32 %lock_acct.1268, 1
  br label %if.end51

land.lhs.true42:                                  ; preds = %if.then40
  %71 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %locked_vm, align 4
  %add43 = add i32 %lock_acct.1268, 1
  %add44 = add i32 %add43, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %limit)
  %cmp45 = icmp ugt i32 %add44, %limit
  br i1 %cmp45, label %do.end, label %land.lhs.true42.if.end51_crit_edge

land.lhs.true42.if.end51_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end:                                           ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add70255262, ptr %pfn, align 4
  %shl = shl i32 %limit, 12
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %shl) #20
  br label %unpin_out

if.end51:                                         ; preds = %land.lhs.true42.if.end51_crit_edge, %if.then40.if.end50_crit_edge, %if.else.i.if.end51_crit_edge, %if.end36.if.end51_crit_edge, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.if.end51_crit_edge
  %lock_acct.2 = phi i32 [ %lock_acct.1268, %if.end36.if.end51_crit_edge ], [ %lock_acct.1268, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.if.end51_crit_edge ], [ %.pre, %if.then40.if.end50_crit_edge ], [ %add43, %land.lhs.true42.if.end51_crit_edge ], [ %lock_acct.1268, %if.else.i.if.end51_crit_edge ]
  %inc52 = add i32 %pinned.1265, 1
  %dec = add i32 %npage.addr.1264, -1
  %add53 = add i32 %vaddr.addr.1274, 4096
  %add54 = add i32 %iova.1271, 4096
  %74 = ptrtoint ptr %offset19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset19, align 4
  %inc56 = add i32 %75, 1
  store i32 %inc56, ptr %offset19, align 4
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size, align 4
  %dec58 = add i32 %77, -1
  store i32 %dec58, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec58)
  %tobool60.not = icmp eq i32 %dec58, 0
  br i1 %tobool60.not, label %while.end, label %if.end62

if.end62:                                         ; preds = %if.end51
  %78 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %batch, align 4
  %arrayidx65 = getelementptr ptr, ptr %79, i32 %inc56
  %80 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx65, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %82 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast66 = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast67 = ptrtoint ptr %82 to i32
  %sub.ptr.sub68 = sub i32 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %sub.ptr.div69 = sdiv exact i32 %sub.ptr.sub68, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %83 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add70 = add i32 %sub.ptr.div69, %83
  %84 = ptrtoint ptr %pfn_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pfn_base, align 4
  %add28 = add i32 %85, %inc52
  %cmp29.not = icmp eq i32 %add70, %add28
  br i1 %cmp29.not, label %if.end62.lor.lhs.false_crit_edge, label %if.end62.out.loopexit_crit_edge

if.end62.out.loopexit_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.loopexit

if.end62.lor.lhs.false_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

while.end:                                        ; preds = %if.end51
  %86 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add70255262, ptr %pfn, align 4
  %87 = load i8, ptr @disable_hugepages, align 1, !range !99
  %tobool71.not = icmp eq i8 %87, 0
  br i1 %tobool71.not, label %while.end.while.cond_crit_edge, label %while.end.out_crit_edge, !prof !93

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

out.loopexit:                                     ; preds = %if.end62.out.loopexit_crit_edge, %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge, %if.end25.out.loopexit_crit_edge
  %rsvd.4.off0315 = phi i1 [ false, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge ], [ %rsvd.4.off0, %if.end62.out.loopexit_crit_edge ], [ %rsvd.4.off0, %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge ], [ %rsvd.4.off0, %if.end25.out.loopexit_crit_edge ]
  %add70255.lcssa = phi i32 [ %add70255262, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge ], [ %add70, %if.end62.out.loopexit_crit_edge ], [ %add70255262, %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge ], [ %pfn.promoted, %if.end25.out.loopexit_crit_edge ]
  %pinned.1.lcssa = phi i32 [ %pinned.1265, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge ], [ %inc52, %if.end62.out.loopexit_crit_edge ], [ %pinned.1265, %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge ], [ %pinned.0, %if.end25.out.loopexit_crit_edge ]
  %lock_acct.1.lcssa = phi i32 [ %lock_acct.1268, %lor.lhs.false.is_invalid_reserved_pfn.exit203_crit_edge.out.loopexit_crit_edge ], [ %lock_acct.2, %if.end62.out.loopexit_crit_edge ], [ %lock_acct.1268, %is_invalid_reserved_pfn.exit203.out.loopexit_crit_edge ], [ %lock_acct.0, %if.end25.out.loopexit_crit_edge ]
  %88 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add70255.lcssa, ptr %pfn, align 4
  br label %out

out:                                              ; preds = %out.loopexit, %while.end.out_crit_edge, %while.cond.out_crit_edge
  %pinned.2 = phi i32 [ %pinned.1.lcssa, %out.loopexit ], [ %pinned.0, %while.cond.out_crit_edge ], [ %inc52, %while.end.out_crit_edge ]
  %lock_acct.3 = phi i32 [ %lock_acct.1.lcssa, %out.loopexit ], [ %lock_acct.0, %while.cond.out_crit_edge ], [ %lock_acct.2, %while.end.out_crit_edge ]
  %rsvd.5.off0 = phi i1 [ %rsvd.4.off0315, %out.loopexit ], [ %rsvd.1.off0, %while.cond.out_crit_edge ], [ %rsvd.4.off0, %while.end.out_crit_edge ]
  %call77 = tail call fastcc i32 @vfio_lock_acct(ptr noundef %dma, i32 noundef %lock_acct.3, i1 noundef zeroext false)
  br label %unpin_out

unpin_out:                                        ; preds = %out, %do.end, %if.then12.unpin_out_crit_edge
  %ret.0 = phi i32 [ %call77, %out ], [ -12, %do.end ], [ %call14, %if.then12.unpin_out_crit_edge ]
  %pinned.3 = phi i32 [ %pinned.2, %out ], [ %pinned.1265, %do.end ], [ %pinned.0, %if.then12.unpin_out_crit_edge ]
  %rsvd.6.off0 = phi i1 [ %rsvd.5.off0, %out ], [ false, %do.end ], [ %rsvd.1.off0, %if.then12.unpin_out_crit_edge ]
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp79 = icmp eq i32 %90, 1
  br i1 %cmp79, label %land.lhs.true81, label %unpin_out.if.end88_crit_edge

unpin_out.if.end88_crit_edge:                     ; preds = %unpin_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

land.lhs.true81:                                  ; preds = %unpin_out
  %91 = ptrtoint ptr %offset19 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool83.not = icmp eq i32 %92, 0
  br i1 %tobool83.not, label %if.then84, label %land.lhs.true81.if.end88_crit_edge

land.lhs.true81.if.end88_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then84:                                        ; preds = %land.lhs.true81
  %93 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pfn, align 4
  %95 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prot, align 4
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %94) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then84.put_pfn.exit_crit_edge, label %if.then.i.i206

if.then84.put_pfn.exit_crit_edge:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit

if.then.i.i206:                                   ; preds = %if.then84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %97 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %98 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %94, %98
  %add.ptr.i.i = getelementptr %struct.page, ptr %97, i32 %sub.i.i
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp.i.not.i.i.i = icmp eq i32 %100, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_invalid_reserved_pfn.exit.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then.i.i206
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i:                   ; preds = %if.then.i.i206
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %add.ptr.i.i, align 4
  %103 = and i32 %102, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool2.i.not.i = icmp eq i32 %103, 0
  br i1 %tobool2.i.not.i, label %if.then.i210, label %is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge

is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit

if.then.i210:                                     ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %104 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr.i.i, ptr %page.i, align 4
  %and.i209 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.i = icmp ne i32 %and.i209, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i, i32 noundef 1, i1 noundef zeroext %tobool.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #14
  br label %put_pfn.exit

put_pfn.exit:                                     ; preds = %if.then.i210, %is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge, %if.then84.put_pfn.exit_crit_edge
  %105 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %size, align 4
  br label %if.end88

if.end88:                                         ; preds = %put_pfn.exit, %land.lhs.true81.if.end88_crit_edge, %unpin_out.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp89 = icmp slt i32 %ret.0, 0
  br i1 %cmp89, label %if.then91, label %if.end88.cleanup103_crit_edge

if.end88.cleanup103_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pinned.3)
  %tobool92.not = icmp eq i32 %pinned.3, 0
  %brmerge = select i1 %tobool92.not, i1 true, i1 %rsvd.6.off0
  br i1 %brmerge, label %if.then91.if.end101_crit_edge, label %if.then95

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then95:                                        ; preds = %if.then91
  %106 = ptrtoint ptr %pfn_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pfn_base, align 4
  br label %for.body

for.body:                                         ; preds = %put_pfn.exit228.for.body_crit_edge, %if.then95
  %pinned.4296 = phi i32 [ %pinned.3, %if.then95 ], [ %dec100, %put_pfn.exit228.for.body_crit_edge ]
  %inc99291294 = phi i32 [ %107, %if.then95 ], [ %inc99, %put_pfn.exit228.for.body_crit_edge ]
  %108 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %prot, align 4
  %call.i.i213 = call i32 @pfn_valid(i32 noundef %inc99291294) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i213)
  %tobool.not.i.i214 = icmp eq i32 %call.i.i213, 0
  br i1 %tobool.not.i.i214, label %for.body.put_pfn.exit228_crit_edge, label %if.then.i.i218

for.body.put_pfn.exit228_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit228

if.then.i.i218:                                   ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %110 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %111 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i215 = sub i32 %inc99291294, %111
  %add.ptr.i.i216 = getelementptr %struct.page, ptr %110, i32 %sub.i.i215
  %112 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %add.ptr.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %cmp.i.not.i.i.i217 = icmp eq i32 %113, -1
  br i1 %cmp.i.not.i.i.i217, label %if.then.i.i.i219, label %is_invalid_reserved_pfn.exit.i221, !prof !101

if.then.i.i.i219:                                 ; preds = %if.then.i.i218
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i216, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i221:                ; preds = %if.then.i.i218
  %114 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %add.ptr.i.i216, align 4
  %116 = and i32 %115, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool2.i.not.i220 = icmp eq i32 %116, 0
  br i1 %tobool2.i.not.i220, label %if.then.i226, label %is_invalid_reserved_pfn.exit.i221.put_pfn.exit228_crit_edge

is_invalid_reserved_pfn.exit.i221.put_pfn.exit228_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i221
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit228

if.then.i226:                                     ; preds = %is_invalid_reserved_pfn.exit.i221
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i212) #14
  %117 = ptrtoint ptr %page.i212 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr.i.i216, ptr %page.i212, align 4
  %and.i224 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool.i225 = icmp ne i32 %and.i224, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i212, i32 noundef 1, i1 noundef zeroext %tobool.i225) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i212) #14
  br label %put_pfn.exit228

put_pfn.exit228:                                  ; preds = %if.then.i226, %is_invalid_reserved_pfn.exit.i221.put_pfn.exit228_crit_edge, %for.body.put_pfn.exit228_crit_edge
  %inc99 = add i32 %inc99291294, 1
  %dec100 = add i32 %pinned.4296, -1
  %tobool96.not = icmp eq i32 %dec100, 0
  br i1 %tobool96.not, label %put_pfn.exit228.if.end101_crit_edge, label %put_pfn.exit228.for.body_crit_edge

put_pfn.exit228.for.body_crit_edge:               ; preds = %put_pfn.exit228
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

put_pfn.exit228.if.end101_crit_edge:              ; preds = %put_pfn.exit228
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.end101:                                        ; preds = %put_pfn.exit228.if.end101_crit_edge, %if.then91.if.end101_crit_edge
  call fastcc void @vfio_batch_unpin(ptr noundef %batch, ptr noundef %dma)
  br label %cleanup103

cleanup103:                                       ; preds = %if.end101, %if.end88.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end101 ], [ -19, %entry.cleanup103_crit_edge ], [ %pinned.3, %if.end88.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_batch_unpin(ptr nocapture noundef %batch, ptr nocapture noundef readonly %dma) unnamed_addr #2 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7 = icmp eq i32 %1, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %offset = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 4
  %prot = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %put_pfn.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %batch, align 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %9
  %10 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prot, align 4
  %call.i.i = call i32 @pfn_valid(i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.put_pfn.exit_crit_edge, label %if.then.i.i

while.body.put_pfn.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit

if.then.i.i:                                      ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %add, %13
  %add.ptr.i.i = getelementptr %struct.page, ptr %12, i32 %sub.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_invalid_reserved_pfn.exit.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i:                   ; preds = %if.then.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %add.ptr.i.i, align 4
  %18 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.i.not.i, label %if.then.i, label %is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge

is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit

if.then.i:                                        ; preds = %is_invalid_reserved_pfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %19 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i, ptr %page.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i, i32 noundef 1, i1 noundef zeroext %tobool.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #14
  br label %put_pfn.exit

put_pfn.exit:                                     ; preds = %if.then.i, %is_invalid_reserved_pfn.exit.i.put_pfn.exit_crit_edge, %while.body.put_pfn.exit_crit_edge
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %offset, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %size, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %put_pfn.exit.while.end_crit_edge, label %put_pfn.exit.while.body_crit_edge

put_pfn.exit.while.body_crit_edge:                ; preds = %put_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

put_pfn.exit.while.end_crit_edge:                 ; preds = %put_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %put_pfn.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vaddr_get_pfns(ptr noundef %mm, i32 noundef %vaddr, i32 noundef %npages, i32 noundef %prot, ptr nocapture noundef %pfn, ptr noundef %pages) unnamed_addr #2 align 64 {
entry:
  %ptep.i = alloca ptr, align 4
  %ptl.i = alloca ptr, align 4
  %unlocked.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 65536, i32 65537
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vaddr_get_pfns, %if.then.i.i)) #14
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !110

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #14
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vaddr_get_pfns, %if.then.i3.i)) #14
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !110

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call = tail call i32 @pin_user_pages_remote(ptr noundef %mm, i32 noundef %vaddr, i32 noundef %npages, i32 noundef %spec.select, ptr noundef %pages, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then2, label %retry.preheader

retry.preheader:                                  ; preds = %mmap_read_lock.exit
  %call.i51 = call ptr @find_vma(ptr noundef %mm, i32 noundef %vaddr) #14
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  br i1 %tobool.not.i52, label %retry.preheader.done_crit_edge, label %land.lhs.true.i.lr.ph

retry.preheader.done_crit_edge:                   ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

land.lhs.true.i.lr.ph:                            ; preds = %retry.preheader
  %and.lobit = lshr exact i32 %and, 1
  %or.i = or i32 %and.lobit, 128
  %0 = ptrtoint ptr %call.i51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vaddr)
  %cmp.i58 = icmp ugt i32 %1, %vaddr
  br i1 %cmp.i58, label %land.lhs.true.i.lr.ph.done_crit_edge, label %land.lhs.true.i.lr.ph.land.lhs.true_crit_edge

land.lhs.true.i.lr.ph.land.lhs.true_crit_edge:    ; preds = %land.lhs.true.i.lr.ph
  br label %land.lhs.true

land.lhs.true.i.lr.ph.done_crit_edge:             ; preds = %land.lhs.true.i.lr.ph
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then2:                                         ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %5
  %6 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %pfn, align 4
  br label %done

retry:                                            ; preds = %follow_fault_pfn.exit
  %call.i = call ptr @find_vma(ptr noundef %mm, i32 noundef %vaddr) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %retry.done_crit_edge, label %land.lhs.true.i

retry.done_crit_edge:                             ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

land.lhs.true.i:                                  ; preds = %retry
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  %cmp.i = icmp ugt i32 %8, %vaddr
  br i1 %cmp.i, label %land.lhs.true.i.done_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true.i.done_crit_edge:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %land.lhs.true.i.lr.ph.land.lhs.true_crit_edge
  %ret.05360 = phi i32 [ -11, %land.lhs.true.i.land.lhs.true_crit_edge ], [ %call, %land.lhs.true.i.lr.ph.land.lhs.true_crit_edge ]
  %call.i5459 = phi ptr [ %call.i, %land.lhs.true.i.land.lhs.true_crit_edge ], [ %call.i51, %land.lhs.true.i.lr.ph.land.lhs.true_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call.i5459, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and6 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true.done_crit_edge, label %if.then8

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptep.i) #14
  %11 = ptrtoint ptr %ptep.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptep.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptl.i) #14
  %12 = ptrtoint ptr %ptl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptl.i, align 4, !annotation !102
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i5459, i32 0, i32 6
  %13 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_mm.i, align 4
  %call.i39 = call i32 @follow_pte(ptr noundef %14, i32 noundef %vaddr, ptr noundef nonnull %ptep.i, ptr noundef nonnull %ptl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %if.then8.if.end13.i_crit_edge, label %if.then.i

if.then8.if.end13.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlocked.i) #14
  %15 = ptrtoint ptr %unlocked.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %unlocked.i, align 1
  %call2.i = call i32 @fixup_user_fault(ptr noundef %mm, i32 noundef %vaddr, i32 noundef %or.i, ptr noundef nonnull %unlocked.i) #14
  %16 = ptrtoint ptr %unlocked.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unlocked.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.cleanup.thread.i_crit_edge

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not.i, label %cleanup.i, label %if.end.i.cleanup.thread.i_crit_edge

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call2.i, %if.end.i.cleanup.thread.i_crit_edge ], [ -11, %if.then.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlocked.i) #14
  br label %follow_fault_pfn.exit

cleanup.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_mm.i, align 4
  %call9.i = call i32 @follow_pte(ptr noundef %19, i32 noundef %vaddr, ptr noundef nonnull %ptep.i, ptr noundef nonnull %ptl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlocked.i) #14
  br i1 %tobool10.not.i, label %cleanup.i.if.end13.i_crit_edge, label %cleanup.i.follow_fault_pfn.exit_crit_edge

cleanup.i.follow_fault_pfn.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %follow_fault_pfn.exit

cleanup.i.if.end13.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %cleanup.i.if.end13.i_crit_edge, %if.then8.if.end13.i_crit_edge
  br i1 %tobool.not, label %if.end13.i.if.else.i_crit_edge, label %land.lhs.true.i41

if.end13.i.if.else.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i41:                                ; preds = %if.end13.i
  %20 = ptrtoint ptr %ptep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptep.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i41.if.else.i_crit_edge, label %land.lhs.true.i41.do.body.i_crit_edge

land.lhs.true.i41.do.body.i_crit_edge:            ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

land.lhs.true.i41.if.else.i_crit_edge:            ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i41.if.else.i_crit_edge, %if.end13.i.if.else.i_crit_edge
  %24 = ptrtoint ptr %ptep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptep.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i = lshr i32 %27, 12
  %28 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr.i, ptr %pfn, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i41.do.body.i_crit_edge
  %ret.2.i = phi i32 [ 0, %if.else.i ], [ -14, %land.lhs.true.i41.do.body.i_crit_edge ]
  %29 = ptrtoint ptr %ptl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptl.i, align 4
  call void @_raw_spin_unlock(ptr noundef %30) #14
  %31 = ptrtoint ptr %ptep.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptep.i, align 4
  call void @kunmap_local_indexed(ptr noundef %32) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !111
  %33 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i1.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !112
  %39 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %follow_fault_pfn.exit

follow_fault_pfn.exit:                            ; preds = %do.body.i, %cleanup.i.follow_fault_pfn.exit_crit_edge, %cleanup.thread.i
  %retval.1.i = phi i32 [ %ret.2.i, %do.body.i ], [ %call9.i, %cleanup.i.follow_fault_pfn.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptep.i) #14
  %43 = zext i32 %retval.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.1.i, label %follow_fault_pfn.exit.done_crit_edge [
    i32 -11, label %retry
    i32 0, label %if.then16
  ]

follow_fault_pfn.exit.done_crit_edge:             ; preds = %follow_fault_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then16:                                        ; preds = %follow_fault_pfn.exit
  %44 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pfn, align 4
  %call.i42 = call i32 @pfn_valid(i32 noundef %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.then16.is_invalid_reserved_pfn.exit.thread_crit_edge, label %if.then.i44

if.then16.is_invalid_reserved_pfn.exit.thread_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_invalid_reserved_pfn.exit.thread

if.then.i44:                                      ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %45, %47
  %add.ptr.i = getelementptr %struct.page, ptr %46, i32 %sub.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i.i = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i45, label %is_invalid_reserved_pfn.exit, !prof !101

if.then.i.i45:                                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit:                     ; preds = %if.then.i44
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %add.ptr.i, align 4
  %52 = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.i.not = icmp eq i32 %52, 0
  br i1 %tobool2.i.not, label %is_invalid_reserved_pfn.exit.done_crit_edge, label %is_invalid_reserved_pfn.exit.is_invalid_reserved_pfn.exit.thread_crit_edge

is_invalid_reserved_pfn.exit.is_invalid_reserved_pfn.exit.thread_crit_edge: ; preds = %is_invalid_reserved_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_invalid_reserved_pfn.exit.thread

is_invalid_reserved_pfn.exit.done_crit_edge:      ; preds = %is_invalid_reserved_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

is_invalid_reserved_pfn.exit.thread:              ; preds = %is_invalid_reserved_pfn.exit.is_invalid_reserved_pfn.exit.thread_crit_edge, %if.then16.is_invalid_reserved_pfn.exit.thread_crit_edge
  br label %done

done:                                             ; preds = %is_invalid_reserved_pfn.exit.thread, %is_invalid_reserved_pfn.exit.done_crit_edge, %follow_fault_pfn.exit.done_crit_edge, %land.lhs.true.done_crit_edge, %land.lhs.true.i.done_crit_edge, %retry.done_crit_edge, %if.then2, %land.lhs.true.i.lr.ph.done_crit_edge, %retry.preheader.done_crit_edge
  %ret.1 = phi i32 [ %call, %if.then2 ], [ 1, %is_invalid_reserved_pfn.exit.thread ], [ -14, %is_invalid_reserved_pfn.exit.done_crit_edge ], [ %call, %retry.preheader.done_crit_edge ], [ %call, %land.lhs.true.i.lr.ph.done_crit_edge ], [ %ret.05360, %land.lhs.true.done_crit_edge ], [ %retval.1.i, %follow_fault_pfn.exit.done_crit_edge ], [ -11, %retry.done_crit_edge ], [ -11, %land.lhs.true.i.done_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vaddr_get_pfns, %if.then.i.i46)) #14
          to label %mmap_read_unlock.exit [label %if.then.i.i46], !srcloc !110

if.then.i.i46:                                    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #14
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i46, %done
  call void @up_read(ptr noundef %mmap_lock.i) #14
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_pte(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_user_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_user_bitmap(ptr noundef %bitmap, ptr nocapture noundef readonly %iommu, ptr nocapture noundef readonly %dma, i32 noundef %base_iova, i32 noundef %pgsize) unnamed_addr #2 align 64 {
entry:
  %leftover = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.cttz.i32(i32 %pgsize, i1 false) #14, !range !97
  %size = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %shr = lshr i32 %2, %0
  %iova = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 1
  %3 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iova, align 4
  %sub = sub i32 %4, %base_iova
  %shr1 = lshr i32 %sub, %0
  %div47 = lshr i32 %shr1, 5
  %rem = and i32 %shr1, 31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %leftover) #14
  %5 = ptrtoint ptr %leftover to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %leftover, align 4, !annotation !102
  %num_non_pinned_groups = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 8
  %6 = ptrtoint ptr %num_non_pinned_groups to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %num_non_pinned_groups, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iommu_mapped = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 5
  %8 = ptrtoint ptr %iommu_mapped to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iommu_mapped, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %bitmap3 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 10
  %10 = ptrtoint ptr %bitmap3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap3, align 4
  tail call void @__bitmap_set(ptr noundef %11, i32 noundef 0, i32 noundef %shr) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = add nuw nsw i32 %rem, %shr
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %bitmap6 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 10
  %add = add i32 %rem, %shr
  %12 = ptrtoint ptr %bitmap6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmap6, align 4
  tail call void @__bitmap_shift_left(ptr noundef %13, ptr noundef %13, i32 noundef %rem, i32 noundef %add) #14
  %add.ptr = getelementptr i64, ptr %bitmap, i32 %div47
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then5.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then5.if.then11.i.i_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then5
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 4, i32 -1226833920) #18, !srcloc !92
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !93

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %leftover, i32 noundef 4) #14
  %15 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !94
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %leftover, ptr noundef %add.ptr, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else.i64, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !93

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then5.if.then11.i.i_crit_edge
  %res.0.i.i67 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then5.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i67
  %add.ptr.i.i = getelementptr i8, ptr %leftover, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i67)
  br label %cleanup

if.else.i64:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %bitmap6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitmap6, align 4
  call void @__bitmap_or(ptr noundef %20, ptr noundef %20, ptr noundef nonnull %leftover, i32 noundef %rem) #14
  br label %if.end14

if.end14:                                         ; preds = %if.else.i64, %if.end.if.end14_crit_edge
  %add17.pre-phi = phi i32 [ %.pre, %if.end.if.end14_crit_edge ], [ %add, %if.else.i64 ]
  %add.ptr15 = getelementptr i64, ptr %bitmap, i32 %div47
  %bitmap16 = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 10
  %21 = ptrtoint ptr %bitmap16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap16, align 4
  %add18 = add i32 %add17.pre-phi, 63
  %and = lshr i32 %add18, 3
  %div1948 = and i32 %and, 536870904
  call void @__check_object_size(ptr noundef %22, i32 noundef %div1948, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #14
  %call.i.i54 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i54, label %if.end14.copy_to_user.exit_crit_edge, label %if.end.i.i58

if.end14.copy_to_user.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i58:                                     ; preds = %if.end14
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr15, i32 %div1948, i32 -1226833920) #18, !srcloc !98
  %asmresult.i.i56 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56)
  %cmp.i6.i57 = icmp eq i32 %asmresult.i.i56, 0
  br i1 %cmp.i6.i57, label %if.then2.i.i, label %if.end.i.i58.copy_to_user.exit_crit_edge

if.end.i.i58.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i59 = call zeroext i1 @__kasan_check_read(ptr noundef %22, i32 noundef %div1948) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr15, ptr noundef %22, i32 noundef %div1948) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i58.copy_to_user.exit_crit_edge, %if.end14.copy_to_user.exit_crit_edge
  %n.addr.0.i60 = phi i32 [ %div1948, %if.end14.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %div1948, %if.end.i.i58.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i60)
  %tobool21.not = icmp eq i32 %n.addr.0.i60, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leftover) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_left(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_group_for_each_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfio_bus_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bus1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 8
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bus2 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus2, align 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_enable_nesting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vfio_iommu_aper_conflict(ptr noundef %iommu, i32 noundef %start, i32 noundef %end) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iova_list = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 1
  %0 = ptrtoint ptr %iova_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %iova_list, align 4
  %cmp.i.not = icmp eq ptr %1, %iova_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %end4 = getelementptr inbounds %struct.vfio_iova, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %end4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %cmp = icmp ult i32 %5, %start
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %start5 = getelementptr inbounds %struct.vfio_iova, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %start5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %end)
  %cmp6 = icmp ugt i32 %7, %end
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp10 = icmp ult i32 %7, %start
  br i1 %cmp10, label %if.then11, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then11:                                        ; preds = %if.end8
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 3
  %8 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.019.i = load ptr, ptr %dma_list.i, align 4
  %tobool.not20.i = icmp eq ptr %node.019.i, null
  br i1 %tobool.not20.i, label %if.then11.if.end18_crit_edge, label %if.then11.while.body.i_crit_edge

if.then11.while.body.i_crit_edge:                 ; preds = %if.then11
  br label %while.body.i

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then11.while.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.019.i, %if.then11.while.body.i_crit_edge ]
  %iova.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 1
  %9 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iova.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %start)
  %cmp.not.i = icmp ult i32 %10, %start
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size2.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 3
  %11 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size2.i, align 4
  %add3.i = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %7)
  %cmp4.not.i = icmp ugt i32 %add3.i, %7
  br i1 %cmp4.not.i, label %if.else.i.cleanup_crit_edge, label %if.then5.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %13 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end18_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.if.end18_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %cleanup.i.if.end18_crit_edge, %if.then11.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %end)
  %cmp20 = icmp ugt i32 %5, %end
  br i1 %cmp20, label %if.then21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %add = add nuw i32 %end, 1
  %dma_list.i46 = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 3
  %14 = ptrtoint ptr %dma_list.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.019.i47 = load ptr, ptr %dma_list.i46, align 4
  %tobool.not20.i48 = icmp eq ptr %node.019.i47, null
  br i1 %tobool.not20.i48, label %if.then21.cleanup_crit_edge, label %while.body.lr.ph.i49

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph.i49:                             ; preds = %if.then21
  %add.i = add i32 %5, 1
  br label %while.body.i53

while.body.i53:                                   ; preds = %cleanup.i65.while.body.i53_crit_edge, %while.body.lr.ph.i49
  %node.021.i50 = phi ptr [ %node.019.i47, %while.body.lr.ph.i49 ], [ %node.0.i63, %cleanup.i65.while.body.i53_crit_edge ]
  %iova.i51 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i50, i32 0, i32 1
  %15 = ptrtoint ptr %iova.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iova.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.not.i52 = icmp ugt i32 %add.i, %16
  br i1 %cmp.not.i52, label %if.else.i59, label %if.then.i55

if.then.i55:                                      ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i54 = getelementptr inbounds %struct.rb_node, ptr %node.021.i50, i32 0, i32 2
  br label %cleanup.i65

if.else.i59:                                      ; preds = %while.body.i53
  %size2.i56 = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i50, i32 0, i32 3
  %17 = ptrtoint ptr %size2.i56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size2.i56, align 4
  %add3.i57 = add i32 %18, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i57, i32 %add)
  %cmp4.not.i58 = icmp ugt i32 %add3.i57, %add
  br i1 %cmp4.not.i58, label %if.else.i59.cleanup_crit_edge, label %if.then5.i61

if.else.i59.cleanup_crit_edge:                    ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5.i61:                                     ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i60 = getelementptr inbounds %struct.rb_node, ptr %node.021.i50, i32 0, i32 1
  br label %cleanup.i65

cleanup.i65:                                      ; preds = %if.then5.i61, %if.then.i55
  %node.1.in.i62 = phi ptr [ %rb_left.i54, %if.then.i55 ], [ %rb_right.i60, %if.then5.i61 ]
  %19 = ptrtoint ptr %node.1.in.i62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %node.0.i63 = load ptr, ptr %node.1.in.i62, align 4
  %tobool.not.i64 = icmp eq ptr %node.0.i63, null
  br i1 %tobool.not.i64, label %cleanup.i65.cleanup_crit_edge, label %cleanup.i65.while.body.i53_crit_edge

cleanup.i65.while.body.i53_crit_edge:             ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i53

cleanup.i65.cleanup_crit_edge:                    ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i65.cleanup_crit_edge, %if.else.i59.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end18.cleanup_crit_edge ], [ false, %if.then21.cleanup_crit_edge ], [ false, %cleanup.i65.cleanup_crit_edge ], [ true, %if.else.i59.cleanup_crit_edge ], [ true, %if.else.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_get_group_resv_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vfio_iommu_resv_conflict(ptr nocapture noundef readonly %iommu, ptr noundef readonly %resv_regions) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resv_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %region.019 = load ptr, ptr %resv_regions, align 4
  %cmp.not20 = icmp eq ptr %region.019, %resv_regions
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dma_list.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %region.021 = phi ptr [ %region.019, %for.body.lr.ph ], [ %region.0, %for.inc.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.iommu_resv_region, ptr %region.021, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %start = getelementptr inbounds %struct.iommu_resv_region, ptr %region.021, i32 0, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start, align 4
  %5 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.019.i = load ptr, ptr %dma_list.i, align 4
  %tobool.not20.i = icmp eq ptr %node.019.i, null
  br i1 %tobool.not20.i, label %if.end.for.inc_crit_edge, label %while.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.end
  %length = getelementptr inbounds %struct.iommu_resv_region, ptr %region.021, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %add.i = add i32 %7, %4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.021.i = phi ptr [ %node.019.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %iova.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 1
  %8 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iova.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.not.i = icmp ugt i32 %add.i, %9
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size2.i = getelementptr inbounds %struct.vfio_dma, ptr %node.021.i, i32 0, i32 3
  %10 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size2.i, align 4
  %add3.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %4)
  %cmp4.not.i = icmp ugt i32 %add3.i, %4
  br i1 %cmp4.not.i, label %if.else.i.cleanup_crit_edge, label %if.then5.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.021.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %12 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.for.inc_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %cleanup.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %region.021 to i32
  call void @__asan_load4_noabort(i32 %13)
  %region.0 = load ptr, ptr %region.021, align 4
  %cmp.not = icmp eq ptr %region.0, %resv_regions
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not18 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.else.i.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp.not18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_iommu_iova_get_copy(ptr noundef readonly %iommu, ptr noundef %iova_copy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iova_list = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 1
  %0 = ptrtoint ptr %iova_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.021 = load ptr, ptr %iova_list, align 4
  %cmp.not22 = icmp eq ptr %n.021, %iova_list
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %prev.i8.i = getelementptr inbounds %struct.list_head, ptr %iova_copy, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %vfio_iommu_iova_insert.exit.for.body_crit_edge, %for.body.lr.ph
  %n.023 = phi ptr [ %n.021, %for.body.lr.ph ], [ %n.0, %vfio_iommu_iova_insert.exit.for.body_crit_edge ]
  %start = getelementptr inbounds %struct.vfio_iova, ptr %n.023, i32 0, i32 1
  %1 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.vfio_iova, ptr %n.023, i32 0, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %out_free, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %start1.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %start1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %start1.i, align 8
  %end2.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %end2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %end2.i, align 4
  %10 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i8.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef %iova_copy) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.vfio_iommu_iova_insert.exit_crit_edge

if.end.i.vfio_iommu_iova_insert.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_insert.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev.i8.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iova_copy, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %vfio_iommu_iova_insert.exit

vfio_iommu_iova_insert.exit:                      ; preds = %if.end.i.i.i, %if.end.i.vfio_iommu_iova_insert.exit_crit_edge
  %16 = ptrtoint ptr %n.023 to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0 = load ptr, ptr %n.023, align 4
  %cmp.not = icmp eq ptr %n.0, %iova_list
  br i1 %cmp.not, label %vfio_iommu_iova_insert.exit.cleanup_crit_edge, label %vfio_iommu_iova_insert.exit.for.body_crit_edge

vfio_iommu_iova_insert.exit.for.body_crit_edge:   ; preds = %vfio_iommu_iova_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

vfio_iommu_iova_insert.exit.cleanup_crit_edge:    ; preds = %vfio_iommu_iova_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_free:                                         ; preds = %for.body
  %17 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iova_copy, align 4
  %cmp.not18.i = icmp eq ptr %18, %iova_copy
  br i1 %cmp.not18.i, label %out_free.cleanup_crit_edge, label %out_free.for.body.i_crit_edge

out_free.for.body.i_crit_edge:                    ; preds = %out_free
  br label %for.body.i

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %out_free.for.body.i_crit_edge
  %n.019.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %18, %out_free.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %next.0.i = load ptr, ptr %n.019.i, align 4
  %call.i.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i) #14
  br i1 %call.i.i.i14, label %if.end.i.i.i15, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i15:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %n.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i15, %for.body.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %n.019.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i, align 4
  %prev.i.i16 = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i16, align 4
  tail call void @kfree(ptr noundef %n.019.i) #14
  %cmp.not.i = icmp eq ptr %next.0.i, %iova_copy
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %out_free.cleanup_crit_edge, %vfio_iommu_iova_insert.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_free.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %list_del.exit.i.cleanup_crit_edge ], [ 0, %vfio_iommu_iova_insert.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_iommu_aper_resize(ptr noundef %iova, i32 noundef %start, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %iova, align 4
  %cmp.i.not = icmp eq ptr %1, %iova
  br i1 %cmp.i.not, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %start1.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %start1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %start, ptr %start1.i, align 8
  %end2.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %end2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %end, ptr %end2.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.list_head, ptr %iova, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i8.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef %iova) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev.i8.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %iova, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %node.0101 = phi ptr [ %next.0103, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %13 = ptrtoint ptr %node.0101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %next.0103 = load ptr, ptr %node.0101, align 4
  %start8 = getelementptr inbounds %struct.vfio_iova, ptr %node.0101, i32 0, i32 1
  %14 = ptrtoint ptr %start8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %start)
  %cmp9 = icmp ugt i32 %15, %start
  br i1 %cmp9, label %for.body.for.end_crit_edge, label %land.lhs.true

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true:                                    ; preds = %for.body
  %end14 = getelementptr inbounds %struct.vfio_iova, ptr %node.0101, i32 0, i32 2
  %16 = ptrtoint ptr %end14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %start)
  %cmp15 = icmp ugt i32 %17, %start
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %start8.le = getelementptr inbounds %struct.vfio_iova, ptr %node.0101, i32 0, i32 1
  %18 = ptrtoint ptr %start8.le to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %start, ptr %start8.le, align 4
  br label %for.end

if.end18:                                         ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0101) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_del.exit_crit_edge

if.end18.list_del.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i92 = getelementptr inbounds %struct.list_head, ptr %node.0101, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i92, align 4
  %21 = ptrtoint ptr %node.0101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node.0101, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end18.list_del.exit_crit_edge
  %25 = ptrtoint ptr %node.0101 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0101, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.0101, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.0101) #14
  %cmp.not = icmp eq ptr %next.0103, %iova
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then16, %for.body.for.end_crit_edge
  %27 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iova, align 4
  %cmp36.not105 = icmp eq ptr %28, %iova
  br i1 %cmp36.not105, label %for.end.cleanup_crit_edge, label %for.end.for.body38_crit_edge

for.end.for.body38_crit_edge:                     ; preds = %for.end
  br label %for.body38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body38:                                       ; preds = %for.inc52.for.body38_crit_edge, %for.end.for.body38_crit_edge
  %node.1106 = phi ptr [ %next.1108, %for.inc52.for.body38_crit_edge ], [ %28, %for.end.for.body38_crit_edge ]
  %29 = ptrtoint ptr %node.1106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %next.1108 = load ptr, ptr %node.1106, align 4
  %end39 = getelementptr inbounds %struct.vfio_iova, ptr %node.1106, i32 0, i32 2
  %30 = ptrtoint ptr %end39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %end)
  %cmp40 = icmp ult i32 %31, %end
  br i1 %cmp40, label %for.body38.for.inc52_crit_edge, label %if.end42

for.body38.for.inc52_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

if.end42:                                         ; preds = %for.body38
  %start43 = getelementptr inbounds %struct.vfio_iova, ptr %node.1106, i32 0, i32 1
  %32 = ptrtoint ptr %start43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %end)
  %cmp44.not = icmp ult i32 %33, %end
  br i1 %cmp44.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %end39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %end, ptr %end39, align 4
  br label %for.inc52

if.end50:                                         ; preds = %if.end42
  %call.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.1106) #14
  br i1 %call.i.i93, label %if.end.i.i96, label %if.end50.list_del.exit98_crit_edge

if.end50.list_del.exit98_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit98

if.end.i.i96:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i94 = getelementptr inbounds %struct.list_head, ptr %node.1106, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i94, align 4
  %37 = ptrtoint ptr %node.1106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node.1106, align 4
  %prev1.i.i.i95 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i95, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit98

list_del.exit98:                                  ; preds = %if.end.i.i96, %if.end50.list_del.exit98_crit_edge
  %41 = ptrtoint ptr %node.1106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %node.1106, align 4
  %prev.i97 = getelementptr inbounds %struct.list_head, ptr %node.1106, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i97, align 4
  tail call void @kfree(ptr noundef %node.1106) #14
  br label %for.inc52

for.inc52:                                        ; preds = %list_del.exit98, %if.then48, %for.body38.for.inc52_crit_edge
  %cmp36.not = icmp eq ptr %next.1108, %iova
  br i1 %cmp36.not, label %for.inc52.cleanup_crit_edge, label %for.inc52.for.body38_crit_edge

for.inc52.for.body38_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38

for.inc52.cleanup_crit_edge:                      ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.i.i.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_iommu_resv_exclude(ptr noundef %iova, ptr noundef readonly %resv_regions) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resv_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %resv.0122 = load ptr, ptr %resv_regions, align 4
  %cmp.not123 = icmp eq ptr %resv.0122, %resv_regions
  br i1 %cmp.not123, label %entry.for.end59_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end59

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %entry.for.body_crit_edge
  %resv.0124 = phi ptr [ %resv.0, %for.inc53.for.body_crit_edge ], [ %resv.0122, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.iommu_resv_region, ptr %resv.0124, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %for.body.for.inc53_crit_edge, label %if.end

for.body.for.inc53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc53

if.end:                                           ; preds = %for.body
  %start3 = getelementptr inbounds %struct.iommu_resv_region, ptr %resv.0124, i32 0, i32 1
  %3 = ptrtoint ptr %start3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start3, align 4
  %length = getelementptr inbounds %struct.iommu_resv_region, ptr %resv.0124, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %add = add i32 %6, %4
  %sub = add i32 %add, -1
  %7 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iova, align 4
  %cmp16.not118 = icmp eq ptr %8, %iova
  br i1 %cmp16.not118, label %if.end.for.inc53_crit_edge, label %for.body18.lr.ph

if.end.for.inc53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc53

for.body18.lr.ph:                                 ; preds = %if.end
  %sub30 = add i32 %4, -1
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %n.0119 = phi ptr [ %8, %for.body18.lr.ph ], [ %next.0121, %for.inc.for.body18_crit_edge ]
  %9 = ptrtoint ptr %n.0119 to i32
  call void @__asan_load4_noabort(i32 %9)
  %next.0121 = load ptr, ptr %n.0119, align 4
  %end19 = getelementptr inbounds %struct.vfio_iova, ptr %n.0119, i32 0, i32 2
  %10 = ptrtoint ptr %end19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %11)
  %cmp20 = icmp ugt i32 %4, %11
  br i1 %cmp20, label %for.body18.for.inc_crit_edge, label %lor.lhs.false

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body18
  %start21 = getelementptr inbounds %struct.vfio_iova, ptr %n.0119, i32 0, i32 1
  %12 = ptrtoint ptr %start21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp22 = icmp ult i32 %sub, %13
  br i1 %cmp22, label %lor.lhs.false.for.inc_crit_edge, label %if.end24

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %13)
  %cmp26 = icmp ugt i32 %4, %13
  br i1 %cmp26, label %if.then27, label %if.end24.land.lhs.true_crit_edge

if.end24.land.lhs.true_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then27:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then27.cleanup64_crit_edge, label %if.end.i

if.then27.cleanup64_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end.i:                                         ; preds = %if.then27
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %start1.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %start1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %start1.i, align 8
  %end2.i = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %end2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub30, ptr %end2.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.list_head, ptr %n.0119, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i8.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %20, ptr noundef %n.0119) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.land.lhs.true_crit_edge

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %prev.i8.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %n.0119, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %20, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.i.i.i, %if.end.i.land.lhs.true_crit_edge, %if.end24.land.lhs.true_crit_edge
  %25 = ptrtoint ptr %end19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %26)
  %cmp33 = icmp ult i32 %sub, %26
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then34:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not.i97 = icmp eq ptr %call7.i.i96, null
  br i1 %tobool.not.i97, label %if.then34.cleanup64_crit_edge, label %if.end.i103

if.then34.cleanup64_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end.i103:                                      ; preds = %if.then34
  %28 = ptrtoint ptr %call7.i.i96 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i96, ptr %call7.i.i96, align 8
  %prev.i.i98 = getelementptr inbounds %struct.list_head, ptr %call7.i.i96, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i96, ptr %prev.i.i98, align 4
  %start1.i99 = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i96, i32 0, i32 1
  %30 = ptrtoint ptr %start1.i99 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %start1.i99, align 8
  %end2.i100 = getelementptr inbounds %struct.vfio_iova, ptr %call7.i.i96, i32 0, i32 2
  %31 = ptrtoint ptr %end2.i100 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %end2.i100, align 4
  %prev.i8.i101 = getelementptr inbounds %struct.list_head, ptr %n.0119, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i8.i101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i8.i101, align 4
  %call.i.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i96, ptr noundef %33, ptr noundef %n.0119) #14
  br i1 %call.i.i.i102, label %if.end.i.i.i104, label %if.end.i103.if.end42_crit_edge

if.end.i103.if.end42_crit_edge:                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end.i.i.i104:                                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %prev.i8.i101 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i96, ptr %prev.i8.i101, align 4
  %35 = ptrtoint ptr %call7.i.i96 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %n.0119, ptr %call7.i.i96, align 8
  %36 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i.i98, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i96, ptr %33, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end.i.i.i104, %if.end.i103.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.0119) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.list_del.exit_crit_edge

if.end42.list_del.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i107 = getelementptr inbounds %struct.list_head, ptr %n.0119, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i107, align 4
  %40 = ptrtoint ptr %n.0119 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %n.0119, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end42.list_del.exit_crit_edge
  %44 = ptrtoint ptr %n.0119 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %n.0119, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %n.0119, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %n.0119) #14
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %cmp16.not = icmp eq ptr %next.0121, %iova
  br i1 %cmp16.not, label %for.inc.for.inc53_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

for.inc.for.inc53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc53

for.inc53:                                        ; preds = %for.inc.for.inc53_crit_edge, %if.end.for.inc53_crit_edge, %for.body.for.inc53_crit_edge
  %46 = ptrtoint ptr %resv.0124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %resv.0 = load ptr, ptr %resv.0124, align 4
  %cmp.not = icmp eq ptr %resv.0, %resv_regions
  br i1 %cmp.not, label %for.inc53.for.end59_crit_edge, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc53.for.end59_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end59

for.end59:                                        ; preds = %for.inc53.for.end59_crit_edge, %entry.for.end59_crit_edge
  %47 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %iova, align 4
  %cmp.i.not = icmp eq ptr %48, %iova
  %. = select i1 %cmp.i.not, i32 -22, i32 0
  br label %cleanup64

cleanup64:                                        ; preds = %for.end59, %if.then34.cleanup64_crit_edge, %if.then27.cleanup64_crit_edge
  %retval.4 = phi i32 [ %., %for.end59 ], [ -12, %if.then27.cleanup64_crit_edge ], [ -12, %if.then34.cleanup64_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_domain_check_msi_remap() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_test_domain_fgsp(ptr nocapture noundef %domain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call38.i.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %3
  %shl = shl i32 %add, 12
  %prot = getelementptr inbounds %struct.vfio_domain, ptr %domain, i32 0, i32 3
  %4 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prot, align 4
  %or = or i32 %5, 3
  %call3 = tail call i32 @iommu_map(ptr noundef %1, i32 noundef 0, i32 noundef %shl, i32 noundef 8192, i32 noundef %or) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %call7 = tail call i32 @iommu_unmap(ptr noundef %7, i32 noundef 0, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call7)
  %cmp = icmp eq i32 %call7, 4096
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  %call10 = tail call i32 @iommu_unmap(ptr noundef %9, i32 noundef 4096, i32 noundef 4096) #14
  br label %if.end12

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %fgsp = getelementptr inbounds %struct.vfio_domain, ptr %domain, i32 0, i32 4
  %10 = ptrtoint ptr %fgsp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %fgsp, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8, %if.end.if.end12_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_iommu_replay(ptr noundef %iommu, ptr nocapture noundef readonly %domain) unnamed_addr #2 align 64 {
entry:
  %batch = alloca %struct.vfio_batch, align 4
  %pfn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %batch) #14
  %0 = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 2
  %2 = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 3
  %3 = getelementptr inbounds %struct.vfio_batch, ptr %batch, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %batch, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 51, i32 8
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr = lshr i32 %13, 12
  %vaddr_invalid_count.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 6
  %14 = ptrtoint ptr %vaddr_invalid_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vaddr_invalid_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not3.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not3.not.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call.i = tail call fastcc i32 @vfio_wait(ptr noundef %iommu) #14
  %16 = ptrtoint ptr %vaddr_invalid_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vaddr_invalid_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %vfio_wait_all_valid.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

vfio_wait_all_valid.exit:                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %vfio_wait_all_valid.exit.cleanup258_crit_edge, label %vfio_wait_all_valid.exit.if.end_crit_edge

vfio_wait_all_valid.exit.if.end_crit_edge:        ; preds = %vfio_wait_all_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

vfio_wait_all_valid.exit.cleanup258_crit_edge:    ; preds = %vfio_wait_all_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup258

if.end:                                           ; preds = %vfio_wait_all_valid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %iommu, align 4
  %cmp.i350.not = icmp eq ptr %19, %iommu
  %add.ptr = getelementptr i8, ptr %19, i32 -4
  %spec.select = select i1 %cmp.i350.not, ptr null, ptr %add.ptr
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %3, align 4
  %22 = load i8, ptr @disable_hugepages, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i351 = icmp eq i8 %22, 0
  br i1 %tobool.not.i351, label %if.end.i, label %if.end.fallback.i_crit_edge, !prof !93

if.end.fallback.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fallback.i

if.end.i:                                         ; preds = %if.end
  %call.i352 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %23 = inttoptr i32 %call.i352 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool4.not.i = icmp eq i32 %call.i352, 0
  br i1 %tobool4.not.i, label %if.end.i.fallback.i_crit_edge, label %if.end.i.vfio_batch_init.exit_crit_edge

if.end.i.vfio_batch_init.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_batch_init.exit

if.end.i.fallback.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fallback.i

fallback.i:                                       ; preds = %if.end.i.fallback.i_crit_edge, %if.end.fallback.i_crit_edge
  br label %vfio_batch_init.exit

vfio_batch_init.exit:                             ; preds = %fallback.i, %if.end.i.vfio_batch_init.exit_crit_edge
  %storemerge.i = phi ptr [ %0, %fallback.i ], [ %23, %if.end.i.vfio_batch_init.exit_crit_edge ]
  %.sink.i = phi i32 [ 1, %fallback.i ], [ 1024, %if.end.i.vfio_batch_init.exit_crit_edge ]
  %24 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %storemerge.i, ptr %batch, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %1, align 4
  %dma_list = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 3
  %call6 = call ptr @rb_first(ptr noundef %dma_list) #14
  %tobool7.not407 = icmp eq ptr %call6, null
  br i1 %tobool7.not407, label %vfio_batch_init.exit.for.end_crit_edge, label %for.body.lr.ph

vfio_batch_init.exit.for.end_crit_edge:           ; preds = %vfio_batch_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %vfio_batch_init.exit
  %tobool17.not = icmp eq ptr %spec.select, null
  %prot153 = getelementptr inbounds %struct.vfio_domain, ptr %domain, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0409 = phi ptr [ %call6, %for.body.lr.ph ], [ %call175, %for.inc.for.body_crit_edge ]
  %iova11 = getelementptr inbounds %struct.vfio_dma, ptr %n.0409, i32 0, i32 1
  %26 = ptrtoint ptr %iova11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iova11, align 4
  %size = getelementptr inbounds %struct.vfio_dma, ptr %n.0409, i32 0, i32 3
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %add399 = add i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add399, i32 %27)
  %cmp13400 = icmp ugt i32 %add399, %27
  br i1 %cmp13400, label %while.body.lr.ph, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %iommu_mapped = getelementptr inbounds %struct.vfio_dma, ptr %n.0409, i32 0, i32 5
  %vaddr98 = getelementptr inbounds %struct.vfio_dma, ptr %n.0409, i32 0, i32 2
  %prot = getelementptr inbounds %struct.vfio_dma, ptr %n.0409, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup166.while.body_crit_edge, %while.body.lr.ph
  %add405 = phi i32 [ %add399, %while.body.lr.ph ], [ %add, %cleanup166.while.body_crit_edge ]
  %30 = phi i32 [ %27, %while.body.lr.ph ], [ %59, %cleanup166.while.body_crit_edge ]
  %iova.0401 = phi i32 [ %27, %while.body.lr.ph ], [ %iova.3, %cleanup166.while.body_crit_edge ]
  %31 = ptrtoint ptr %iommu_mapped to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iommu_mapped, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not = icmp eq i8 %32, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %while.body
  br i1 %tobool17.not, label %do.end, label %if.end43, !prof !101

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1731, i32 noundef 9, ptr noundef null) #14
  br label %cleanup171

if.end43:                                         ; preds = %if.then16
  %33 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spec.select, align 4
  %call45 = call i32 @iommu_iova_to_phys(ptr noundef %34, i32 noundef %iova.0401) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %do.end65, label %while.cond85.preheader, !prof !101

while.cond85.preheader:                           ; preds = %if.end43
  %i.0391 = add i32 %iova.0401, 4096
  %35 = ptrtoint ptr %iova11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iova11, align 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %add88393 = add i32 %38, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0391, i32 %add88393)
  %cmp89394 = icmp ult i32 %i.0391, %add88393
  br i1 %cmp89394, label %while.cond85.preheader.land.rhs_crit_edge, label %while.cond85.preheader.if.end151_crit_edge

while.cond85.preheader.if.end151_crit_edge:       ; preds = %while.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

while.cond85.preheader.land.rhs_crit_edge:        ; preds = %while.cond85.preheader
  br label %land.rhs

do.end65:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1738, i32 noundef 9, ptr noundef null) #14
  br label %cleanup166

land.rhs:                                         ; preds = %while.body93.land.rhs_crit_edge, %while.cond85.preheader.land.rhs_crit_edge
  %p.0397.in = phi i32 [ %p.0397, %while.body93.land.rhs_crit_edge ], [ %call45, %while.cond85.preheader.land.rhs_crit_edge ]
  %i.0396 = phi i32 [ %i.0, %while.body93.land.rhs_crit_edge ], [ %i.0391, %while.cond85.preheader.land.rhs_crit_edge ]
  %size14.0395 = phi i32 [ %add94, %while.body93.land.rhs_crit_edge ], [ 4096, %while.cond85.preheader.land.rhs_crit_edge ]
  %p.0397 = add i32 %p.0397.in, 4096
  %39 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spec.select, align 4
  %call91 = call i32 @iommu_iova_to_phys(ptr noundef %40, i32 noundef %i.0396) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0397, i32 %call91)
  %cmp92 = icmp eq i32 %p.0397, %call91
  br i1 %cmp92, label %while.body93, label %land.rhs.if.end151_crit_edge

land.rhs.if.end151_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

while.body93:                                     ; preds = %land.rhs
  %add94 = add i32 %size14.0395, 4096
  %i.0 = add i32 %i.0396, 4096
  %41 = ptrtoint ptr %iova11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iova11, align 4
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  %add88 = add i32 %44, %42
  %cmp89 = icmp ult i32 %i.0, %add88
  br i1 %cmp89, label %while.body93.land.rhs_crit_edge, label %while.body93.if.end151_crit_edge

while.body93.if.end151_crit_edge:                 ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

while.body93.land.rhs_crit_edge:                  ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfn) #14
  %45 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %pfn, align 4, !annotation !102
  %46 = ptrtoint ptr %vaddr98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vaddr98, align 4
  %sub = sub i32 %iova.0401, %30
  %add100 = add i32 %sub, %47
  %sub105 = sub i32 %add405, %iova.0401
  %shr106 = lshr i32 %sub105, 12
  %call107 = call fastcc i32 @vfio_pin_pages_remote(ptr noundef nonnull %n.0409, i32 noundef %add100, i32 noundef %shr106, ptr noundef nonnull %pfn, i32 noundef %shr, ptr noundef nonnull %batch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 1
  br i1 %cmp108, label %if.then109, label %cleanup145

if.then109:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool111.not = icmp eq i32 %call107, 0
  br i1 %tobool111.not, label %do.end129, label %if.then109.cleanup145.thread_crit_edge, !prof !101

if.then109.cleanup145.thread_crit_edge:           ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145.thread

do.end129:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1764, i32 noundef 9, ptr noundef null) #14
  br label %cleanup145.thread

cleanup145.thread:                                ; preds = %do.end129, %if.then109.cleanup145.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn) #14
  br label %cleanup171

cleanup145:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pfn, align 4
  %shl = shl i32 %49, 12
  %shl144 = shl i32 %call107, 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfn) #14
  br label %if.end151

if.end151:                                        ; preds = %cleanup145, %while.body93.if.end151_crit_edge, %land.rhs.if.end151_crit_edge, %while.cond85.preheader.if.end151_crit_edge
  %size14.3 = phi i32 [ %shl144, %cleanup145 ], [ 4096, %while.cond85.preheader.if.end151_crit_edge ], [ %add94, %while.body93.if.end151_crit_edge ], [ %size14.0395, %land.rhs.if.end151_crit_edge ]
  %phys.2 = phi i32 [ %shl, %cleanup145 ], [ %call45, %while.cond85.preheader.if.end151_crit_edge ], [ %call45, %land.rhs.if.end151_crit_edge ], [ %call45, %while.body93.if.end151_crit_edge ]
  %50 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %domain, align 4
  %52 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prot, align 4
  %54 = ptrtoint ptr %prot153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %prot153, align 4
  %or = or i32 %55, %53
  %call154 = call i32 @iommu_map(ptr noundef %51, i32 noundef %iova.0401, i32 noundef %phys.2, i32 noundef %size14.3, i32 noundef %or) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end151.cleanup166_crit_edge, label %if.then156

if.end151.cleanup166_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup166

if.then156:                                       ; preds = %if.end151
  %56 = ptrtoint ptr %iommu_mapped to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %iommu_mapped, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool158.not = icmp eq i8 %57, 0
  br i1 %tobool158.not, label %if.then159, label %if.then156.cleanup171_crit_edge

if.then156.cleanup171_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup171

if.then159:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  %shr160 = lshr i32 %phys.2, 12
  %shr161 = lshr exact i32 %size14.3, 12
  %call162 = call fastcc i32 @vfio_unpin_pages_remote(ptr noundef nonnull %n.0409, i32 noundef %iova.0401, i32 noundef %shr160, i32 noundef %shr161, i1 noundef zeroext true)
  call fastcc void @vfio_batch_unpin(ptr noundef nonnull %batch, ptr noundef nonnull %n.0409)
  br label %cleanup171

cleanup166:                                       ; preds = %if.end151.cleanup166_crit_edge, %do.end65
  %size14.3.pn = phi i32 [ 4096, %do.end65 ], [ %size14.3, %if.end151.cleanup166_crit_edge ]
  %iova.3 = add i32 %size14.3.pn, %iova.0401
  %58 = ptrtoint ptr %iova11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iova11, align 4
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %add = add i32 %61, %59
  %cmp13 = icmp ugt i32 %add, %iova.3
  br i1 %cmp13, label %cleanup166.while.body_crit_edge, label %cleanup166.for.inc_crit_edge

cleanup166.for.inc_crit_edge:                     ; preds = %cleanup166
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cleanup166.while.body_crit_edge:                  ; preds = %cleanup166
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup171:                                       ; preds = %if.then159, %if.then156.cleanup171_crit_edge, %cleanup145.thread, %do.end
  %ret.4.ph = phi i32 [ %call107, %cleanup145.thread ], [ -22, %do.end ], [ %call154, %if.then156.cleanup171_crit_edge ], [ %call154, %if.then159 ]
  %tobool190.not423 = icmp eq ptr %n.0409, null
  br i1 %tobool190.not423, label %cleanup171.for.end257_crit_edge, label %cleanup171.for.body191_crit_edge

cleanup171.for.body191_crit_edge:                 ; preds = %cleanup171
  br label %for.body191

cleanup171.for.end257_crit_edge:                  ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end257

for.inc:                                          ; preds = %cleanup166.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call175 = call ptr @rb_next(ptr noundef nonnull %n.0409) #14
  %tobool7.not = icmp eq ptr %call175, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vfio_batch_init.exit.for.end_crit_edge
  %call177 = call ptr @rb_first(ptr noundef %dma_list) #14
  %tobool179.not426 = icmp eq ptr %call177, null
  br i1 %tobool179.not426, label %for.end.for.end188_crit_edge, label %for.end.for.body180_crit_edge

for.end.for.body180_crit_edge:                    ; preds = %for.end
  br label %for.body180

for.end.for.end188_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end188

for.body180:                                      ; preds = %for.body180.for.body180_crit_edge, %for.end.for.body180_crit_edge
  %n.1427 = phi ptr [ %call187, %for.body180.for.body180_crit_edge ], [ %call177, %for.end.for.body180_crit_edge ]
  %iommu_mapped185 = getelementptr inbounds %struct.vfio_dma, ptr %n.1427, i32 0, i32 5
  %62 = ptrtoint ptr %iommu_mapped185 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %iommu_mapped185, align 4
  %call187 = call ptr @rb_next(ptr noundef nonnull %n.1427) #14
  %tobool179.not = icmp eq ptr %call187, null
  br i1 %tobool179.not, label %for.body180.for.end188_crit_edge, label %for.body180.for.body180_crit_edge

for.body180.for.body180_crit_edge:                ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body180

for.body180.for.end188_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end188

for.end188:                                       ; preds = %for.body180.for.end188_crit_edge, %for.end.for.end188_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %64)
  %cmp.i353 = icmp eq i32 %64, 1024
  br i1 %cmp.i353, label %for.end188.cleanup258.sink.split_crit_edge, label %for.end188.cleanup258_crit_edge

for.end188.cleanup258_crit_edge:                  ; preds = %for.end188
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup258

for.end188.cleanup258.sink.split_crit_edge:       ; preds = %for.end188
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup258.sink.split

for.body191:                                      ; preds = %cleanup251.for.body191_crit_edge, %cleanup171.for.body191_crit_edge
  %n.2424 = phi ptr [ %call256, %cleanup251.for.body191_crit_edge ], [ %n.0409, %cleanup171.for.body191_crit_edge ]
  %iommu_mapped197 = getelementptr inbounds %struct.vfio_dma, ptr %n.2424, i32 0, i32 5
  %65 = ptrtoint ptr %iommu_mapped197 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %iommu_mapped197, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool198.not = icmp eq i8 %66, 0
  br i1 %tobool198.not, label %if.end204, label %if.then199

if.then199:                                       ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %domain, align 4
  %iova201 = getelementptr inbounds %struct.vfio_dma, ptr %n.2424, i32 0, i32 1
  %69 = ptrtoint ptr %iova201 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iova201, align 4
  %size202 = getelementptr inbounds %struct.vfio_dma, ptr %n.2424, i32 0, i32 3
  %71 = ptrtoint ptr %size202 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size202, align 4
  %call203 = call i32 @iommu_unmap(ptr noundef %68, i32 noundef %70, i32 noundef %72) #14
  br label %cleanup251

if.end204:                                        ; preds = %for.body191
  %iova205 = getelementptr inbounds %struct.vfio_dma, ptr %n.2424, i32 0, i32 1
  %73 = ptrtoint ptr %iova205 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iova205, align 4
  %size208 = getelementptr inbounds %struct.vfio_dma, ptr %n.2424, i32 0, i32 3
  %75 = ptrtoint ptr %size208 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size208, align 4
  %add209420 = add i32 %76, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add209420)
  %cmp210421 = icmp ult i32 %74, %add209420
  br i1 %cmp210421, label %if.end204.while.body211_crit_edge, label %if.end204.cleanup251_crit_edge

if.end204.cleanup251_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup251

if.end204.while.body211_crit_edge:                ; preds = %if.end204
  br label %while.body211

while.body211:                                    ; preds = %cleanup244.while.body211_crit_edge, %if.end204.while.body211_crit_edge
  %iova196.0422 = phi i32 [ %iova196.1, %cleanup244.while.body211_crit_edge ], [ %74, %if.end204.while.body211_crit_edge ]
  %77 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %domain, align 4
  %call217 = call i32 @iommu_iova_to_phys(ptr noundef %78, i32 noundef %iova196.0422) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  %add220 = add i32 %iova196.0422, 4096
  br i1 %tobool218.not, label %while.body211.cleanup244_crit_edge, label %while.cond224.preheader

while.body211.cleanup244_crit_edge:               ; preds = %while.body211
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup244

while.cond224.preheader:                          ; preds = %while.body211
  %79 = ptrtoint ptr %iova205 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iova205, align 4
  %81 = ptrtoint ptr %size208 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size208, align 4
  %add227413 = add i32 %82, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %add220, i32 %add227413)
  %cmp228414 = icmp ult i32 %add220, %add227413
  br i1 %cmp228414, label %while.cond224.preheader.land.rhs229_crit_edge, label %while.cond224.preheader.while.end238_crit_edge

while.cond224.preheader.while.end238_crit_edge:   ; preds = %while.cond224.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end238

while.cond224.preheader.land.rhs229_crit_edge:    ; preds = %while.cond224.preheader
  br label %land.rhs229

land.rhs229:                                      ; preds = %while.body234.land.rhs229_crit_edge, %while.cond224.preheader.land.rhs229_crit_edge
  %p213.0417.in = phi i32 [ %p213.0417, %while.body234.land.rhs229_crit_edge ], [ %call217, %while.cond224.preheader.land.rhs229_crit_edge ]
  %i215.0416 = phi i32 [ %i215.0, %while.body234.land.rhs229_crit_edge ], [ %add220, %while.cond224.preheader.land.rhs229_crit_edge ]
  %size214.0415 = phi i32 [ %add235, %while.body234.land.rhs229_crit_edge ], [ 4096, %while.cond224.preheader.land.rhs229_crit_edge ]
  %p213.0417 = add i32 %p213.0417.in, 4096
  %83 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %domain, align 4
  %call231 = call i32 @iommu_iova_to_phys(ptr noundef %84, i32 noundef %i215.0416) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %p213.0417, i32 %call231)
  %cmp232 = icmp eq i32 %p213.0417, %call231
  br i1 %cmp232, label %while.body234, label %land.rhs229.while.end238_crit_edge

land.rhs229.while.end238_crit_edge:               ; preds = %land.rhs229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end238

while.body234:                                    ; preds = %land.rhs229
  %add235 = add i32 %size214.0415, 4096
  %i215.0 = add i32 %i215.0416, 4096
  %85 = ptrtoint ptr %iova205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iova205, align 4
  %87 = ptrtoint ptr %size208 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size208, align 4
  %add227 = add i32 %88, %86
  %cmp228 = icmp ult i32 %i215.0, %add227
  br i1 %cmp228, label %while.body234.land.rhs229_crit_edge, label %while.body234.while.end238_crit_edge

while.body234.while.end238_crit_edge:             ; preds = %while.body234
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end238

while.body234.land.rhs229_crit_edge:              ; preds = %while.body234
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs229

while.end238:                                     ; preds = %while.body234.while.end238_crit_edge, %land.rhs229.while.end238_crit_edge, %while.cond224.preheader.while.end238_crit_edge
  %size214.0.lcssa = phi i32 [ 4096, %while.cond224.preheader.while.end238_crit_edge ], [ %add235, %while.body234.while.end238_crit_edge ], [ %size214.0415, %land.rhs229.while.end238_crit_edge ]
  %89 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %domain, align 4
  %call240 = call i32 @iommu_unmap(ptr noundef %90, i32 noundef %iova196.0422, i32 noundef %size214.0.lcssa) #14
  %shr241 = lshr i32 %call217, 12
  %shr242 = lshr exact i32 %size214.0.lcssa, 12
  %call243 = call fastcc i32 @vfio_unpin_pages_remote(ptr noundef nonnull %n.2424, i32 noundef %iova196.0422, i32 noundef %shr241, i32 noundef %shr242, i1 noundef zeroext true)
  br label %cleanup244

cleanup244:                                       ; preds = %while.end238, %while.body211.cleanup244_crit_edge
  %iova196.1 = phi i32 [ %iova196.0422, %while.end238 ], [ %add220, %while.body211.cleanup244_crit_edge ]
  %91 = ptrtoint ptr %iova205 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iova205, align 4
  %93 = ptrtoint ptr %size208 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size208, align 4
  %add209 = add i32 %94, %92
  %cmp210 = icmp ult i32 %iova196.1, %add209
  br i1 %cmp210, label %cleanup244.while.body211_crit_edge, label %cleanup244.cleanup251_crit_edge

cleanup244.cleanup251_crit_edge:                  ; preds = %cleanup244
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup251

cleanup244.while.body211_crit_edge:               ; preds = %cleanup244
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body211

cleanup251:                                       ; preds = %cleanup244.cleanup251_crit_edge, %if.end204.cleanup251_crit_edge, %if.then199
  %call256 = call ptr @rb_prev(ptr noundef nonnull %n.2424) #14
  %tobool190.not = icmp eq ptr %call256, null
  br i1 %tobool190.not, label %cleanup251.for.end257_crit_edge, label %cleanup251.for.body191_crit_edge

cleanup251.for.body191_crit_edge:                 ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body191

cleanup251.for.end257_crit_edge:                  ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end257

for.end257:                                       ; preds = %cleanup251.for.end257_crit_edge, %cleanup171.for.end257_crit_edge
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %96)
  %cmp.i356 = icmp eq i32 %96, 1024
  br i1 %cmp.i356, label %for.end257.cleanup258.sink.split_crit_edge, label %for.end257.cleanup258_crit_edge

for.end257.cleanup258_crit_edge:                  ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup258

for.end257.cleanup258.sink.split_crit_edge:       ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup258.sink.split

cleanup258.sink.split:                            ; preds = %for.end257.cleanup258.sink.split_crit_edge, %for.end188.cleanup258.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end188.cleanup258.sink.split_crit_edge ], [ %ret.4.ph, %for.end257.cleanup258.sink.split_crit_edge ]
  %97 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %97)
  %.sink444 = load ptr, ptr %batch, align 4
  %98 = ptrtoint ptr %.sink444 to i32
  call void @free_pages(i32 noundef %98, i32 noundef 0) #14
  br label %cleanup258

cleanup258:                                       ; preds = %cleanup258.sink.split, %for.end257.cleanup258_crit_edge, %for.end188.cleanup258_crit_edge, %vfio_wait_all_valid.exit.cleanup258_crit_edge
  %retval.0 = phi i32 [ %call.i, %vfio_wait_all_valid.exit.cleanup258_crit_edge ], [ 0, %for.end188.cleanup258_crit_edge ], [ %ret.4.ph, %for.end257.cleanup258_crit_edge ], [ %retval.0.ph, %cleanup258.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %batch) #14
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_update_pgsize_bitmap(ptr noundef %iommu) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pgsize_bitmap = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 7
  %0 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967295, ptr %pgsize_bitmap, align 8
  %1 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn24 = load ptr, ptr %iommu, align 4
  %cmp.not25 = icmp eq ptr %.pn24, %iommu
  br i1 %cmp.not25, label %entry.if.then_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %storemerge26 = phi i64 [ %and, %for.body.for.body_crit_edge ], [ 4294967295, %entry.for.body_crit_edge ]
  %domain.0 = getelementptr i8, ptr %.pn27, i32 -4
  %2 = ptrtoint ptr %domain.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.0, align 4
  %pgsize_bitmap4 = getelementptr inbounds %struct.iommu_domain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pgsize_bitmap4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgsize_bitmap4, align 4
  %conv = zext i32 %5 to i64
  %and = and i64 %storemerge26, %conv
  %6 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and, ptr %pgsize_bitmap, align 8
  %7 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %iommu
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %and12 = and i64 %and, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool.not = icmp eq i64 %and12, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %for.end.if.then_crit_edge

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %storemerge.lcssa31 = phi i64 [ %and, %for.end.if.then_crit_edge ], [ 4294967295, %entry.if.then_crit_edge ]
  %and14 = and i64 %storemerge.lcssa31, -8192
  %or = or i64 %and14, 4096
  %8 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or, ptr %pgsize_bitmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_iommu_iova_insert_copy(ptr noundef %iommu, ptr noundef %iova_copy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iova_list = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 1
  %0 = ptrtoint ptr %iova_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iova_list, align 4
  %cmp.not18.i = icmp eq ptr %1, %iova_list
  br i1 %cmp.not18.i, label %entry.vfio_iommu_iova_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vfio_iommu_iova_free.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.019.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0.i = load ptr, ptr %n.019.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %n.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %n.019.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.019.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %n.019.i) #14
  %cmp.not.i = icmp eq ptr %next.0.i, %iova_list
  br i1 %cmp.not.i, label %list_del.exit.i.vfio_iommu_iova_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.vfio_iommu_iova_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iommu_iova_free.exit

vfio_iommu_iova_free.exit:                        ; preds = %list_del.exit.i.vfio_iommu_iova_free.exit_crit_edge, %entry.vfio_iommu_iova_free.exit_crit_edge
  %11 = ptrtoint ptr %iova_copy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %iova_copy, align 4
  %cmp.i.not.i = icmp eq ptr %12, %iova_copy
  br i1 %cmp.i.not.i, label %vfio_iommu_iova_free.exit.list_splice_tail.exit_crit_edge, label %if.then.i

vfio_iommu_iova_free.exit.list_splice_tail.exit_crit_edge: ; preds = %vfio_iommu_iova_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %vfio_iommu_iova_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %iova_copy, i32 0, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %iova_list, ptr %16, align 4
  store ptr %16, ptr %prev.i, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %vfio_iommu_iova_free.exit.list_splice_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_iommu_resv_free(ptr noundef readonly %resv_regions) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resv_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv_regions, align 4
  %cmp.not18 = icmp eq ptr %1, %resv_regions
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %n.019 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %n.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %n.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.019) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %n.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %n.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %n.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %n.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %n.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %n.019) #14
  %cmp.not = icmp eq ptr %next.0, %resv_regions
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_wait(ptr noundef %iommu) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !82) #14
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %vaddr_wait = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 9
  call void @prepare_to_wait(ptr noundef %vaddr_wait, ptr noundef nonnull %wait, i32 noundef 258) #14
  %lock = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock) #14
  call void @schedule() #14
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  call void @finish_wait(ptr noundef %vaddr_wait, ptr noundef nonnull %wait) #14
  %call6 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call6, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %container_open = getelementptr inbounds %struct.vfio_iommu, ptr %iommu, i32 0, i32 13
  %13 = ptrtoint ptr %container_open to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %container_open, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false7.fatal_signal_pending.exit.thread_crit_edge, label %fatal_signal_pending.exit

lor.lhs.false7.fatal_signal_pending.exit.thread_crit_edge: ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %fatal_signal_pending.exit.thread

fatal_signal_pending.exit:                        ; preds = %lor.lhs.false7
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 116, i32 1
  %21 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %signal.i.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not = icmp eq i32 %23, 0
  br i1 %tobool11.not, label %fatal_signal_pending.exit.fatal_signal_pending.exit.thread_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fatal_signal_pending.exit.fatal_signal_pending.exit.thread_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fatal_signal_pending.exit.thread

fatal_signal_pending.exit.thread:                 ; preds = %fatal_signal_pending.exit.fatal_signal_pending.exit.thread_crit_edge, %lor.lhs.false7.fatal_signal_pending.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %fatal_signal_pending.exit.thread, %fatal_signal_pending.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ 1, %fatal_signal_pending.exit.thread ], [ -14, %fatal_signal_pending.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_unpin_page_external(ptr noundef %dma, i32 noundef %iova, i1 noundef zeroext %do_accounting) unnamed_addr #2 align 64 {
entry:
  %page.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pfn_list.i = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 9
  %0 = ptrtoint ptr %pfn_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.014.i = load ptr, ptr %pfn_list.i, align 4
  %tobool.not15.i = icmp eq ptr %node.014.i, null
  br i1 %tobool.not15.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.016.i = phi ptr [ %node.0.i, %if.end6.i.while.body.i_crit_edge ], [ %node.014.i, %entry.while.body.i_crit_edge ]
  %iova1.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i, i32 0, i32 1
  %1 = ptrtoint ptr %iova1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iova1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %iova)
  %cmp.i = icmp ugt i32 %2, %iova
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %iova)
  %cmp3.i = icmp ult i32 %2, %iova
  br i1 %cmp3.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %3 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %ref_count.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i, i32 0, i32 3
  %4 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_count.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i1 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i1, label %if.then.i2, label %if.end.vfio_iova_put_vfio_pfn.exit_crit_edge

if.end.vfio_iova_put_vfio_pfn.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %vfio_iova_put_vfio_pfn.exit

if.then.i2:                                       ; preds = %if.end
  %pfn.i = getelementptr inbounds %struct.vfio_pfn, ptr %node.016.i, i32 0, i32 2
  %6 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pfn.i, align 4
  %prot.i = getelementptr inbounds %struct.vfio_dma, ptr %dma, i32 0, i32 4
  %8 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot.i, align 4
  %call.i.i.i = tail call i32 @pfn_valid(i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i2.put_pfn.exit.i_crit_edge, label %if.then.i.i.i

if.then.i2.put_pfn.exit.i_crit_edge:              ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i = sub i32 %7, %11
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %10, i32 %sub.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_invalid_reserved_pfn.exit.i.i, !prof !101

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

is_invalid_reserved_pfn.exit.i.i:                 ; preds = %if.then.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  %16 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool2.i.not.i.i, label %if.then.i.i, label %is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge

is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge: ; preds = %is_invalid_reserved_pfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pfn.exit.i

if.then.i.i:                                      ; preds = %is_invalid_reserved_pfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i.i) #14
  %17 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i.i, ptr %page.i.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page.i.i, i32 noundef 1, i1 noundef zeroext %tobool.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #14
  br label %put_pfn.exit.i

put_pfn.exit.i:                                   ; preds = %if.then.i.i, %is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge, %if.then.i2.put_pfn.exit.i_crit_edge
  %retval.0.i.i.neg = phi i32 [ -1, %if.then.i.i ], [ 0, %is_invalid_reserved_pfn.exit.i.i.put_pfn.exit.i_crit_edge ], [ 0, %if.then.i2.put_pfn.exit.i_crit_edge ]
  call void @rb_erase(ptr noundef nonnull %node.016.i, ptr noundef %pfn_list.i) #14
  call void @kfree(ptr noundef nonnull %node.016.i) #14
  br label %vfio_iova_put_vfio_pfn.exit

vfio_iova_put_vfio_pfn.exit:                      ; preds = %put_pfn.exit.i, %if.end.vfio_iova_put_vfio_pfn.exit_crit_edge
  %ret.0.i.neg = phi i32 [ 0, %if.end.vfio_iova_put_vfio_pfn.exit_crit_edge ], [ %retval.0.i.i.neg, %put_pfn.exit.i ]
  br i1 %do_accounting, label %if.then3, label %vfio_iova_put_vfio_pfn.exit.cleanup_crit_edge

vfio_iova_put_vfio_pfn.exit.cleanup_crit_edge:    ; preds = %vfio_iova_put_vfio_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %vfio_iova_put_vfio_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call fastcc i32 @vfio_lock_acct(ptr noundef %dma, i32 noundef %ret.0.i.neg, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %vfio_iova_put_vfio_pfn.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_use_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unuse_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_iommu_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_allow_unsafe_interrupts, !1, !"__param_allow_unsafe_interrupts", i1 false, i1 false}
!1 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_allow_unsafe_interruptstype250, !1, !"__UNIQUE_ID_allow_unsafe_interruptstype250", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_allow_unsafe_interrupts251, !4, !"__UNIQUE_ID_allow_unsafe_interrupts251", i1 false, i1 false}
!4 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 51, i32 1}
!5 = !{ptr @__param_disable_hugepages, !6, !"__param_disable_hugepages", i1 false, i1 false}
!6 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_hugepagestype252, !6, !"__UNIQUE_ID_disable_hugepagestype252", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_hugepages253, !9, !"__UNIQUE_ID_disable_hugepages253", i1 false, i1 false}
!9 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 57, i32 1}
!10 = !{ptr @__param_dma_entry_limit, !11, !"__param_dma_entry_limit", i1 false, i1 false}
!11 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 61, i32 1}
!12 = !{ptr @__UNIQUE_ID_dma_entry_limittype254, !11, !"__UNIQUE_ID_dma_entry_limittype254", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dma_entry_limit255, !14, !"__UNIQUE_ID_dma_entry_limit255", i1 false, i1 false}
!14 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 62, i32 1}
!15 = !{ptr @__initcall__kmod_vfio_iommu_type1__261_3175_vfio_iommu_type1_init6, !16, !"__initcall__kmod_vfio_iommu_type1__261_3175_vfio_iommu_type1_init6", i1 false, i1 false}
!16 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3175, i32 1}
!17 = !{ptr @__exitcall_vfio_iommu_type1_cleanup, !18, !"__exitcall_vfio_iommu_type1_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3176, i32 1}
!19 = !{ptr @__UNIQUE_ID_version262, !20, !"__UNIQUE_ID_version262", i1 false, i1 false}
!20 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3178, i32 1}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_file263, !26, !"__UNIQUE_ID_file263", i1 false, i1 false}
!26 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3179, i32 1}
!27 = !{ptr @__UNIQUE_ID_license264, !26, !"__UNIQUE_ID_license264", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_author265, !29, !"__UNIQUE_ID_author265", i1 false, i1 false}
!29 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3180, i32 1}
!30 = !{ptr @__UNIQUE_ID_description266, !31, !"__UNIQUE_ID_description266", i1 false, i1 false}
!31 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3181, i32 1}
!32 = !{ptr @allow_unsafe_interrupts, !33, !"allow_unsafe_interrupts", i1 false, i1 false}
!33 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 48, i32 13}
!34 = !{ptr @disable_hugepages, !35, !"disable_hugepages", i1 false, i1 false}
!35 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 54, i32 13}
!36 = !{ptr @__param_str_allow_unsafe_interrupts, !1, !"__param_str_allow_unsafe_interrupts", i1 false, i1 false}
!37 = !{ptr @__param_str_disable_hugepages, !6, !"__param_str_disable_hugepages", i1 false, i1 false}
!38 = !{ptr @__param_str_dma_entry_limit, !11, !"__param_str_dma_entry_limit", i1 false, i1 false}
!39 = !{ptr @dma_entry_limit, !40, !"dma_entry_limit", i1 false, i1 false}
!40 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 60, i32 21}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3149, i32 12}
!43 = !{ptr @vfio_iommu_driver_ops_type1, !44, !"vfio_iommu_driver_ops_type1", i1 false, i1 false}
!44 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 3148, i32 43}
!45 = !{ptr @vfio_iommu_type1_open.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 2565, i32 2}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vfio_iommu_type1_open.__key.5, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 2566, i32 2}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vfio_iommu_type1_open.__key.7, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 2567, i32 2}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 1162, i32 2}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 709, i32 6}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vfio_pin_pages_remote._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @vfio_pin_pages_remote._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 2264, i32 3}
!72 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vfio_iommu_type1_attach_group._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vfio_iommu_type1_attach_group._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/vfio/vfio_iommu_type1.c", i32 800, i32 5}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vfio_pin_page_external._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @vfio_pin_page_external._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2152340890, i64 2152340915}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 4836445}
!95 = !{i64 4836642}
!96 = !{i64 2152321875}
!97 = !{i32 0, i32 33}
!98 = !{i64 2152341571, i64 2152341596}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148311221, i64 2148311253, i64 2148311282, i64 2148311316, i64 2148311347, i64 2148311370}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}
!103 = !{i64 2154835842, i64 2154835867}
!104 = !{i64 2154692992, i64 2154693489, i64 2154693029, i64 2154693085, i64 2154693119, i64 2154693143, i64 2154693184, i64 2154693205, i64 2154693233, i64 2154693267}
!105 = !{i64 2154837180, i64 2154837205}
!106 = !{i64 2151142154, i64 2151142645, i64 2151142191, i64 2151142247, i64 2151142281, i64 2151142305, i64 2151142346, i64 2151142367, i64 2151142395, i64 2151142429}
!107 = !{i64 2148399222}
!108 = !{i64 2148313686, i64 2148313718, i64 2148313747, i64 2148313781, i64 2148313812, i64 2148313835}
!109 = !{i64 2149517274}
!110 = !{i64 2149009621, i64 2149009626, i64 2149009639, i64 2149009683, i64 2149009717, i64 2149009738}
!111 = !{i64 2152343914}
!112 = !{i64 2154149384}
