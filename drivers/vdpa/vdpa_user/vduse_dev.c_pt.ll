; ModuleID = '/llk/IR_all_yes/drivers/vdpa/vdpa_user/vduse_dev.c_pt.bc'
source_filename = "../drivers/vdpa/vdpa_user/vduse_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.vdpa_mgmt_dev = type { ptr, ptr, ptr, i64, %struct.list_head, i64, i32 }
%struct.vdpa_mgmtdev_ops = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vduse_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, i64, i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.vdpa_callback, %struct.work_struct, %struct.spinlock, %struct.rw_semaphore, i32, i8, i8, i64, i64, i64, i32, i32, i32, i32, ptr, i8, i32, i32 }
%struct.vdpa_callback = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vduse_dev_config = type { [256 x i8], i32, i32, i64, i32, i32, [13 x i32], i32, [0 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vduse_virtqueue = type { i16, i16, i32, i64, i64, i64, %struct.vdpa_vq_state, i8, i8, %struct.spinlock, %struct.spinlock, ptr, %struct.vdpa_callback, %struct.work_struct, %struct.work_struct }
%struct.vdpa_vq_state = type { %union.anon.118 }
%union.anon.118 = type { %struct.vdpa_vq_state_packed }
%struct.vdpa_vq_state_packed = type { i32 }
%struct.vduse_iova_domain = type { %struct.iova_domain, %struct.iova_domain, ptr, i32, i32, i32, ptr, %struct.spinlock, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.89, %union.anon.90 }
%union.anon.89 = type { ptr }
%union.anon.90 = type { i64 }
%struct.vduse_dev_response = type { i32, i32, [4 x i32], %union.anon.122 }
%union.anon.122 = type { [32 x i32] }
%struct.vduse_iotlb_entry = type { i64, i64, i64, i8 }
%struct.vduse_config_data = type { i32, i32, [0 x i8] }
%struct.vduse_vq_config = type { i32, i16, [13 x i16] }
%struct.vduse_vq_info = type { i32, i32, i64, i64, i64, %union.anon.123, i8 }
%union.anon.123 = type { %struct.vduse_vq_state_packed }
%struct.vduse_vq_state_packed = type { i16, i16, i16, i16 }
%struct.vduse_vq_eventfd = type { i32, i32 }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }
%struct.vdpa_map_file = type { ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.vduse_vdpa = type { %struct.vdpa_device, ptr }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.83 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vduse_dev_msg = type { %struct.vduse_dev_request, %struct.vduse_dev_response, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vduse_dev_request = type { i32, i32, [4 x i32], %union.anon.120 }
%union.anon.120 = type { %struct.vduse_iova_range, [112 x i8] }
%struct.vduse_iova_range = type { i64, i64 }

@__initcall__kmod_vduse__369_1657_vduse_init6 = internal global ptr @vduse_init, section ".initcall6.init", align 4
@__exitcall_vduse_exit = internal global ptr @vduse_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file370 = internal constant [40 x i8] c"vduse.file=drivers/vdpa/vdpa_user/vduse\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [21 x i8] c"vduse.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author372 = internal constant [50 x i8] c"vduse.author=Yongji Xie <xieyongji@bytedance.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description373 = internal constant [43 x i8] c"vduse.description=vDPA Device in Userspace\00", section ".modinfo", align 1
@vduse_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vduse\00", [26 x i8] zeroinitializer }, align 32
@vduse_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vduse_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vduse_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@vduse_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vduse_ctrl_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@vduse_ctrl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vduse_ioctl, ptr null, ptr null, i32 0, ptr @vduse_open, ptr null, ptr @vduse_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@vduse_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@vduse_dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr @vduse_dev_read_iter, ptr @vduse_dev_write_iter, ptr null, ptr null, ptr null, ptr @vduse_dev_poll, ptr @vduse_dev_ioctl, ptr null, ptr null, i32 0, ptr @vduse_dev_open, ptr null, ptr @vduse_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vduse-irq\00", [22 x i8] zeroinitializer }, align 32
@vduse_irq_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vduse/%s\00", [23 x i8] zeroinitializer }, align 32
@vduse_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vduse_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@vduse_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_msg_timeout, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_msg_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @msg_timeout_show, ptr @msg_timeout_store }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msg_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@vduse_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vduse_lock, i64 52), ptr getelementptr (i8, ptr @vduse_lock, i64 52) }, ptr @vduse_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/vdpa/vdpa_user/vduse_dev.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vduse_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vduse_lock\00", [21 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vduse_create_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&dev->vqs[i].inject)\00", [57 x i8] zeroinitializer }, align 32
@vduse_create_dev.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dev->vqs[i].kick)\00", [59 x i8] zeroinitializer }, align 32
@vduse_create_dev.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->vqs[i].kick_lock\00", [41 x i8] zeroinitializer }, align 32
@vduse_create_dev.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->vqs[i].irq_lock\00", [42 x i8] zeroinitializer }, align 32
@vduse_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->msg_lock\00", [17 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->rwsem\00", [20 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&dev->inject)\00", [32 x i8] zeroinitializer }, align 32
@vduse_dev_create.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->waitq\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vduse_idr.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalidate vhost IOTLB permission\0A\00", [61 x i8] zeroinitializer }, align 32
@vduse_mgmtdev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vduse_mgmtdev_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@mgmt_dev = internal global { %struct.vdpa_mgmt_dev, [48 x i8] } { %struct.vdpa_mgmt_dev { ptr @vduse_mgmtdev, ptr @vdpa_dev_mgmtdev_ops, ptr @id_table, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vdpa_dev_mgmtdev_ops = internal constant { %struct.vdpa_mgmtdev_ops, [24 x i8] } { %struct.vdpa_mgmtdev_ops { ptr @vdpa_dev_add, ptr @vdpa_dev_del }, [24 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 2, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@vduse_vdpa_config_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @vduse_vdpa_set_vq_address, ptr @vduse_vdpa_set_vq_num, ptr @vduse_vdpa_kick_vq, ptr @vduse_vdpa_set_vq_cb, ptr @vduse_vdpa_set_vq_ready, ptr @vduse_vdpa_get_vq_ready, ptr @vduse_vdpa_set_vq_state, ptr @vduse_vdpa_get_vq_state, ptr null, ptr null, ptr @vduse_vdpa_get_vq_align, ptr @vduse_vdpa_get_device_features, ptr @vduse_vdpa_set_driver_features, ptr @vduse_vdpa_get_driver_features, ptr @vduse_vdpa_set_config_cb, ptr @vduse_vdpa_get_vq_num_max, ptr null, ptr @vduse_vdpa_get_device_id, ptr @vduse_vdpa_get_vendor_id, ptr @vduse_vdpa_get_status, ptr @vduse_vdpa_set_status, ptr @vduse_vdpa_reset, ptr @vduse_vdpa_get_config_size, ptr @vduse_vdpa_get_config, ptr @vduse_vdpa_set_config, ptr @vduse_vdpa_get_generation, ptr null, ptr @vduse_vdpa_set_map, ptr null, ptr null, ptr @vduse_vdpa_free }, [36 x i8] zeroinitializer }, align 32
@vduse_dev_dma_ops = internal constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @vduse_dev_alloc_coherent, ptr @vduse_dev_free_coherent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vduse_dev_map_page, ptr @vduse_dev_unmap_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vduse_dev_max_mapping_size, ptr null }, [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vduse_dev_msg_sync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&msg->waitq\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1074299137, i64 1090552067, i64 1095794946, i64 2148040960]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 33043, i64 1074037015, i64 1074299154, i64 1074299158, i64 1075872020, i64 2148040977, i64 3223355664, i64 3224404245]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1593, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"vduse_class\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 116, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"vduse_dev_groups\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"vduse_major\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 115, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"vduse_ctrl_cdev\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 117, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"vduse_ctrl_fops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1464, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1611, i32 60 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"vduse_cdev\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 118, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"vduse_dev_fops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1145, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1625, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"vduse_irq_wq\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 119, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1475, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"vduse_dev_group\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1295, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"vduse_dev_attrs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1290, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"dev_attr_msg_timeout\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1288, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1271, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"vduse_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1381, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 112, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 230, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 214, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 156, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1335, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1336, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1337, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1338, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"vduse_idr\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1349, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1164, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1165, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1168, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1169, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1171, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1172, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 113, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 831, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"vduse_mgmtdev\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1482, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"mgmt_dev\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1558, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"vdpa_dev_mgmtdev_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1548, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1553, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"vduse_vdpa_config_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 721, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"vduse_dev_dma_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 808, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [38 x i8] c"../drivers/vdpa/vdpa_user/vduse_dev.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 198, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author372, ptr @__UNIQUE_ID_description373, ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_license371, ptr @__exitcall_vduse_exit, ptr @__initcall__kmod_vduse__369_1657_vduse_init6, ptr @vduse_init.__key, ptr @.str, ptr @vduse_class, ptr @vduse_dev_groups, ptr @vduse_major, ptr @vduse_ctrl_cdev, ptr @vduse_ctrl_fops, ptr @.str.1, ptr @vduse_cdev, ptr @vduse_dev_fops, ptr @.str.2, ptr @vduse_irq_wq, ptr @.str.3, ptr @vduse_dev_group, ptr @vduse_dev_attrs, ptr @dev_attr_msg_timeout, ptr @.str.4, ptr @.str.5, ptr @vduse_lock, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vduse_create_dev.__key, ptr @.str.12, ptr @vduse_create_dev.__key.13, ptr @.str.14, ptr @vduse_create_dev.__key.15, ptr @.str.16, ptr @vduse_create_dev.__key.17, ptr @.str.18, ptr @vduse_idr, ptr @.str.19, ptr @vduse_dev_create.__key, ptr @.str.20, ptr @vduse_dev_create.__key.21, ptr @.str.22, ptr @vduse_dev_create.__key.23, ptr @.str.24, ptr @vduse_dev_create.__key.25, ptr @.str.26, ptr @vduse_dev_create.__key.27, ptr @.str.28, ptr @vduse_dev_create.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @vduse_mgmtdev, ptr @mgmt_dev, ptr @vdpa_dev_mgmtdev_ops, ptr @id_table, ptr @vduse_vdpa_config_ops, ptr @vduse_dev_dma_ops, ptr @vduse_dev_msg_sync.__key, ptr @.str.33], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_ctrl_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_ctrl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_irq_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_msg_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_create_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_create_dev.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_create_dev.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_create_dev.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_create.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_mgmtdev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_dev to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpa_dev_mgmtdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_vdpa_config_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_dma_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_dev_msg_sync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @vduse_init.__key) #14
  store ptr %call, ptr @vduse_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %devnode = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vduse_devnode, ptr %devnode, align 4
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vduse_dev_groups, ptr %dev_groups, align 4
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @vduse_major, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_chardev_region_crit_edge

if.end.err_chardev_region_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_chardev_region

if.end5:                                          ; preds = %if.end
  tail call void @cdev_init(ptr noundef nonnull @vduse_ctrl_cdev, ptr noundef nonnull @vduse_ctrl_fops) #14
  store ptr null, ptr getelementptr inbounds (%struct.cdev, ptr @vduse_ctrl_cdev, i32 0, i32 1), align 4
  %3 = load i32, ptr @vduse_major, align 4
  %call6 = tail call i32 @cdev_add(ptr noundef nonnull @vduse_ctrl_cdev, i32 noundef %3, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_ctrl_cdev_crit_edge

if.end5.err_ctrl_cdev_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ctrl_cdev

if.end9:                                          ; preds = %if.end5
  %4 = load ptr, ptr @vduse_class, align 4
  %5 = load i32, ptr @vduse_major, align 4
  %call10 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %4, ptr noundef null, i32 noundef %5, ptr noundef null, ptr noundef nonnull @.str.1) #14
  %cmp.i38 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call10 to i32
  br label %err_device

if.end14:                                         ; preds = %if.end9
  tail call void @cdev_init(ptr noundef nonnull @vduse_cdev, ptr noundef nonnull @vduse_dev_fops) #14
  store ptr null, ptr getelementptr inbounds (%struct.cdev, ptr @vduse_cdev, i32 0, i32 1), align 4
  %7 = load i32, ptr @vduse_major, align 4
  %shr = and i32 %7, -1048576
  %or = or i32 %shr, 1
  %call15 = tail call i32 @cdev_add(ptr noundef nonnull @vduse_cdev, i32 noundef %or, i32 noundef 1048575) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_cdev_crit_edge

if.end14.err_cdev_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_cdev

if.end18:                                         ; preds = %if.end14
  %call19 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 0) #14
  store ptr %call19, ptr @vduse_irq_wq, align 4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.err_wq_crit_edge, label %if.end22

if.end18.err_wq_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_wq

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @vduse_domain_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_domain_crit_edge

if.end22.err_domain_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_domain

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc i32 @vduse_mgmtdev_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %err_mgmtdev

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_mgmtdev:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vduse_domain_exit() #14
  br label %err_domain

err_domain:                                       ; preds = %err_mgmtdev, %if.end22.err_domain_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end22.err_domain_crit_edge ], [ %call27, %err_mgmtdev ]
  %8 = load ptr, ptr @vduse_irq_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #14
  br label %err_wq

err_wq:                                           ; preds = %err_domain, %if.end18.err_wq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_domain ], [ -12, %if.end18.err_wq_crit_edge ]
  tail call void @cdev_del(ptr noundef nonnull @vduse_cdev) #14
  br label %err_cdev

err_cdev:                                         ; preds = %err_wq, %if.end14.err_cdev_crit_edge
  %ret.2 = phi i32 [ %call15, %if.end14.err_cdev_crit_edge ], [ %ret.1, %err_wq ]
  %9 = load ptr, ptr @vduse_class, align 4
  %10 = load i32, ptr @vduse_major, align 4
  tail call void @device_destroy(ptr noundef %9, i32 noundef %10) #14
  br label %err_device

err_device:                                       ; preds = %err_cdev, %if.then12
  %ret.3 = phi i32 [ %6, %if.then12 ], [ %ret.2, %err_cdev ]
  tail call void @cdev_del(ptr noundef nonnull @vduse_ctrl_cdev) #14
  br label %err_ctrl_cdev

err_ctrl_cdev:                                    ; preds = %err_device, %if.end5.err_ctrl_cdev_crit_edge
  %ret.4 = phi i32 [ %call6, %if.end5.err_ctrl_cdev_crit_edge ], [ %ret.3, %err_device ]
  %11 = load i32, ptr @vduse_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %11, i32 noundef 1048576) #14
  br label %err_chardev_region

err_chardev_region:                               ; preds = %err_ctrl_cdev, %if.end.err_chardev_region_crit_edge
  %ret.5 = phi i32 [ %call3, %if.end.err_chardev_region_crit_edge ], [ %ret.4, %err_ctrl_cdev ]
  %12 = load ptr, ptr @vduse_class, align 4
  tail call void @class_destroy(ptr noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %err_chardev_region, %if.end26.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.5, %err_chardev_region ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vdpa_mgmtdev_unregister(ptr noundef nonnull @mgmt_dev) #14
  tail call void @device_unregister(ptr noundef nonnull @vduse_mgmtdev) #14
  tail call void @vduse_domain_exit() #14
  %0 = load ptr, ptr @vduse_irq_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #14
  tail call void @cdev_del(ptr noundef nonnull @vduse_cdev) #14
  %1 = load ptr, ptr @vduse_class, align 4
  %2 = load i32, ptr @vduse_major, align 4
  tail call void @device_destroy(ptr noundef %1, i32 noundef %2) #14
  tail call void @cdev_del(ptr noundef nonnull @vduse_ctrl_cdev) #14
  %3 = load i32, ptr @vduse_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 1048576) #14
  %4 = load ptr, ptr @vduse_class, align 4
  tail call void @class_destroy(ptr noundef %4) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @vduse_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i) #14
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vduse_domain_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vduse_mgmtdev_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_register(ptr noundef nonnull @vduse_mgmtdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vdpa_mgmtdev_register(ptr noundef nonnull @mgmt_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @device_unregister(ptr noundef nonnull @vduse_mgmtdev) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg_timeout_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msg_timeout = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %msg_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_timeout, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %3) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg_timeout_store(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msg_timeout = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef %msg_timeout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %id.i.i = alloca i32, align 4
  %config = alloca %struct.vduse_dev_config, align 8
  %name41 = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @vduse_lock, i32 noundef 0) #14
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2146926336, label %sw.bb
    i32 1074299137, label %sw.bb2
    i32 1095794946, label %sw.bb17
    i32 1090552067, label %sw.bb40
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %2, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1381) #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !121
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i64 %5, i32 -1226833921) #14, !srcloc !124
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1387) #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i65 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i65 to ptr
  %cpu_domain.i.i66 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66) #3, !srcloc !121
  %and.i67 = and i32 %12, -13
  %or.i68 = or i32 %and.i67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %13 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_8", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !125
  %asmresult = extractvalue { i32, i64 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb2
  %asmresult12 = extractvalue { i32, i64 } %13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %asmresult12)
  %cmp.not = icmp eq i64 %asmresult12, 0
  br i1 %cmp.not, label %if.end15, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %2, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %config) #14
  %15 = call ptr @memset(ptr %config, i32 255, i32 336)
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %sw.bb17.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb17.if.then11.i.i_crit_edge:                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb17
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 336, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 336) #14
  %17 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !121
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %0, i32 noundef 336) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb17.if.then11.i.i_crit_edge
  %res.0.i.i102 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 336, %sw.bb17.if.then11.i.i_crit_edge ], [ 336, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 336, %res.0.i.i102
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i102)
  br label %cleanup37

if.end21:                                         ; preds = %if.end.i.i
  %reserved.i = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 6
  %21 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i16.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i16.i, label %if.end21.for.cond.i.i_crit_edge, label %if.end21.cleanup37_crit_edge

if.end21.cleanup37_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end21.for.cond.i.i_crit_edge:                  ; preds = %if.end21
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end21.for.cond.i.i_crit_edge
  %i.04.i17.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %if.end21.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.04.i17.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 52
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i8, ptr %reserved.i, i32 %inc.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %is_mem_zero.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

is_mem_zero.exit.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %i.04.i17.i)
  %cmp.i.le.i = icmp ult i32 %i.04.i17.i, 51
  br i1 %cmp.i.le.i, label %is_mem_zero.exit.i.cleanup37_crit_edge, label %is_mem_zero.exit.i.if.end.i_crit_edge

is_mem_zero.exit.i.if.end.i_crit_edge:            ; preds = %is_mem_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

is_mem_zero.exit.i.cleanup37_crit_edge:           ; preds = %is_mem_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end.i:                                         ; preds = %is_mem_zero.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  %vq_align.i = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 5
  %25 = ptrtoint ptr %vq_align.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vq_align.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %26)
  %cmp.i = icmp ugt i32 %26, 4096
  br i1 %cmp.i, label %if.end.i.cleanup37_crit_edge, label %if.end2.i

if.end.i.cleanup37_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end2.i:                                        ; preds = %if.end.i
  %config_size.i = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 7
  %27 = ptrtoint ptr %config_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %28)
  %cmp3.i = icmp ugt i32 %28, 4096
  br i1 %cmp3.i, label %if.end2.i.cleanup37_crit_edge, label %if.end5.i

if.end2.i.cleanup37_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end5.i:                                        ; preds = %if.end2.i
  %device_id.i = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 2
  %29 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp1.not.i.i = icmp eq i32 %30, 2
  br i1 %cmp1.not.i.i, label %vduse_validate_config.exit, label %if.end5.i.cleanup37_crit_edge

if.end5.i.cleanup37_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

vduse_validate_config.exit:                       ; preds = %if.end5.i
  %features.i = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 3
  %31 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %features.i, align 8
  %33 = and i64 %32, 8589936640
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %33)
  %34 = icmp eq i64 %33, 8589934592
  br i1 %34, label %if.end26, label %vduse_validate_config.exit.cleanup37_crit_edge

vduse_validate_config.exit.cleanup37_crit_edge:   ; preds = %vduse_validate_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end26:                                         ; preds = %vduse_validate_config.exit
  %add.ptr = getelementptr i8, ptr %0, i32 336
  %35 = ptrtoint ptr %config_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_size.i, align 4
  %call27 = call ptr @vmemdup_user(ptr noundef %add.ptr, i32 noundef %36) #14
  %cmp.i92 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %call27 to i32
  br label %cleanup37

if.end31:                                         ; preds = %if.end26
  %arrayidx = getelementptr inbounds [256 x i8], ptr %config, i32 0, i32 255
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx, align 1
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %2, align 8
  %call33 = call fastcc i32 @vduse_create_dev(ptr noundef nonnull %config, ptr noundef %call27, i64 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup37_crit_edge, label %if.then35

if.end31.cleanup37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  call void @kvfree(ptr noundef %call27) #14
  br label %cleanup37

cleanup37:                                        ; preds = %if.then35, %if.end31.cleanup37_crit_edge, %if.then29, %vduse_validate_config.exit.cleanup37_crit_edge, %if.end5.i.cleanup37_crit_edge, %if.end2.i.cleanup37_crit_edge, %if.end.i.cleanup37_crit_edge, %is_mem_zero.exit.i.cleanup37_crit_edge, %if.end21.cleanup37_crit_edge, %if.then11.i.i
  %ret.1 = phi i32 [ %37, %if.then29 ], [ -22, %vduse_validate_config.exit.cleanup37_crit_edge ], [ %call33, %if.then35 ], [ 0, %if.end31.cleanup37_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %is_mem_zero.exit.i.cleanup37_crit_edge ], [ -22, %if.end.i.cleanup37_crit_edge ], [ -22, %if.end2.i.cleanup37_crit_edge ], [ -22, %if.end5.i.cleanup37_crit_edge ], [ -22, %if.end21.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %config) #14
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %name41) #14
  %41 = call ptr @memset(ptr %name41, i32 255, i32 256)
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i73 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i73, label %sw.bb40.if.then11.i.i89_crit_edge, label %land.lhs.true.i.i76

sw.bb40.if.then11.i.i89_crit_edge:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i89

land.lhs.true.i.i76:                              ; preds = %sw.bb40
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 256, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i74 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i74)
  %cmp.i6.i75 = icmp eq i32 %asmresult.i.i74, 0
  br i1 %cmp.i6.i75, label %if.end.i.i86, label %land.lhs.true.i.i76.if.then11.i.i89_crit_edge, !prof !127

land.lhs.true.i.i76.if.then11.i.i89_crit_edge:    ; preds = %land.lhs.true.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i89

if.end.i.i86:                                     ; preds = %land.lhs.true.i.i76
  %call.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %name41, i32 noundef 256) #14
  %43 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i78 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i78 to ptr
  %cpu_domain.i.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i79) #3, !srcloc !121
  %and.i.i.i.i80 = and i32 %45, -13
  %or.i.i.i.i81 = or i32 %and.i.i.i.i80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i81) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i82 = call i32 @arm_copy_from_user(ptr noundef nonnull %name41, ptr noundef %0, i32 noundef 256) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i82)
  %tobool4.not.i.i85 = icmp eq i32 %call1.i.i.i82, 0
  br i1 %tobool4.not.i.i85, label %if.end45, label %if.end.i.i86.if.then11.i.i89_crit_edge, !prof !127

if.end.i.i86.if.then11.i.i89_crit_edge:           ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i89

if.then11.i.i89:                                  ; preds = %if.end.i.i86.if.then11.i.i89_crit_edge, %land.lhs.true.i.i76.if.then11.i.i89_crit_edge, %sw.bb40.if.then11.i.i89_crit_edge
  %res.0.i.i84109 = phi i32 [ %call1.i.i.i82, %if.end.i.i86.if.then11.i.i89_crit_edge ], [ 256, %sw.bb40.if.then11.i.i89_crit_edge ], [ 256, %land.lhs.true.i.i76.if.then11.i.i89_crit_edge ]
  %sub.i.i87 = sub i32 256, %res.0.i.i84109
  %add.ptr.i.i88 = getelementptr i8, ptr %name41, i32 %sub.i.i87
  %46 = call ptr @memset(ptr %add.ptr.i.i88, i32 0, i32 %res.0.i.i84109)
  br label %cleanup49

if.end45:                                         ; preds = %if.end.i.i86
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr %name41, i32 0, i32 255
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx46, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i.i) #14
  %48 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %id.i.i, align 4
  %call5.i.i = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i.i) #14
  %cmp.not6.i.i = icmp eq ptr %call5.i.i, null
  br i1 %cmp.not6.i.i, label %if.end45.vduse_find_dev.exit.thread.i_crit_edge, label %if.end45.for.body.i.i94_crit_edge

if.end45.for.body.i.i94_crit_edge:                ; preds = %if.end45
  br label %for.body.i.i94

if.end45.vduse_find_dev.exit.thread.i_crit_edge:  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_find_dev.exit.thread.i

for.body.i.i94:                                   ; preds = %for.inc.i.i.for.body.i.i94_crit_edge, %if.end45.for.body.i.i94_crit_edge
  %call7.i.i = phi ptr [ %call.i.i95, %for.inc.i.i.for.body.i.i94_crit_edge ], [ %call5.i.i, %if.end45.for.body.i.i94_crit_edge ]
  %name1.i.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name1.i.i, align 8
  %call2.i.i = call i32 @strcmp(ptr noundef %50, ptr noundef nonnull %name41) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i93 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i93, label %if.end.i96, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i94
  %51 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i.i, align 4
  %add.i.i = add i32 %52, 1
  store i32 %add.i.i, ptr %id.i.i, align 4
  %call.i.i95 = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i.i) #14
  %cmp.not.i.i = icmp eq ptr %call.i.i95, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.vduse_find_dev.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i94_crit_edge

for.inc.i.i.for.body.i.i94_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i94

for.inc.i.i.vduse_find_dev.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_find_dev.exit.thread.i

vduse_find_dev.exit.thread.i:                     ; preds = %for.inc.i.i.vduse_find_dev.exit.thread.i_crit_edge, %if.end45.vduse_find_dev.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i.i) #14
  br label %cleanup49

if.end.i96:                                       ; preds = %for.body.i.i94
  %name1.i.i.le = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i.i) #14
  %lock.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  %tobool1.not.i = icmp eq ptr %54, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i96.if.then3.i_crit_edge

if.end.i96.if.then3.i_crit_edge:                  ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i96
  %connected.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 18
  %55 = ptrtoint ptr %connected.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %connected.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool2.not.i = icmp eq i8 %56, 0
  br i1 %tobool2.not.i, label %if.end5.i98, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i96.if.then3.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %cleanup49

if.end5.i98:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %connected.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %connected.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i) #14
  call fastcc void @vduse_dev_reset(ptr noundef nonnull %call7.i.i) #14
  %58 = load ptr, ptr @vduse_class, align 4
  %59 = load i32, ptr @vduse_major, align 4
  %shr.i = and i32 %59, -1048576
  %minor.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %minor.i, align 8
  %or.i97 = or i32 %shr.i, %61
  call void @device_destroy(ptr noundef %58, i32 noundef %or.i97) #14
  %62 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %minor.i, align 8
  %call9.i = call ptr @idr_remove(ptr noundef nonnull @vduse_idr, i32 noundef %63) #14
  %config.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 26
  %64 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config.i, align 8
  call void @kvfree(ptr noundef %65) #14
  %vqs.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vqs.i, align 8
  call void @kfree(ptr noundef %67) #14
  %domain.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %domain.i, align 4
  call void @vduse_domain_destroy(ptr noundef %69) #14
  %70 = ptrtoint ptr %name1.i.i.le to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name1.i.i.le, align 8
  call void @kfree(ptr noundef %71) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @module_put(ptr noundef null) #14
  br label %cleanup49

cleanup49:                                        ; preds = %if.end5.i98, %if.then3.i, %vduse_find_dev.exit.thread.i, %if.then11.i.i89
  %ret.2 = phi i32 [ -16, %if.then3.i ], [ 0, %if.end5.i98 ], [ -22, %vduse_find_dev.exit.thread.i ], [ -14, %if.then11.i.i89 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %name41) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup49, %cleanup37, %if.end15, %if.end.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.3 = phi i32 [ %ret.2, %cleanup49 ], [ %ret.1, %cleanup37 ], [ %9, %sw.bb ], [ 0, %if.end15 ], [ -14, %sw.bb2.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %call7.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vduse_create_dev(ptr noundef %config, ptr noundef %config_buf, i64 noundef %api_version) unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #14
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id.i, align 4
  %call5.i = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i) #14
  %cmp.not6.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not6.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i, %entry.for.body.i_crit_edge ]
  %name1.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i, i32 0, i32 4
  %1 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i, align 8
  %call2.i = call i32 @strcmp(ptr noundef %2, ptr noundef %config) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %vduse_find_dev.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

vduse_find_dev.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #14
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 496) #19
  %tobool.not.i173 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i173, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @vduse_dev_create.__key) #14
  %msg_lock.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %msg_lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @vduse_dev_create.__key.21, i16 noundef signext 3) #14
  %send_list.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %send_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %send_list.i, ptr %send_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %send_list.i, ptr %prev.i.i, align 4
  %recv_list.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %recv_list.i, ptr %recv_list.i, align 8
  %prev.i36.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %recv_list.i, ptr %prev.i36.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @vduse_dev_create.__key.23, i16 noundef signext 3) #14
  %rwsem.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 15
  call void @__init_rwsem(ptr noundef %rwsem.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @vduse_dev_create.__key.25) #14
  %inject.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 13
  call void @__init_work(ptr noundef %inject.i, i32 noundef 0) #14
  %10 = ptrtoint ptr %inject.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %inject.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 13, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @vduse_dev_create.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry16.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %prev.i37.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 13, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry16.i, ptr %prev.i37.i, align 8
  %func.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vduse_dev_irq_inject, ptr %func.i, align 4
  %waitq.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 9
  call void @__init_waitqueue_head(ptr noundef %waitq.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @vduse_dev_create.__key.29) #14
  %api_version5 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %api_version5 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %api_version, ptr %api_version5, align 8
  %features = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 3
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 8
  %device_features = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 20
  %17 = ptrtoint ptr %device_features to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %device_features, align 8
  %device_id = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 2
  %18 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_id, align 4
  %device_id6 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 22
  %20 = ptrtoint ptr %device_id6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %device_id6, align 8
  %vendor_id = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 1
  %21 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor_id, align 8
  %vendor_id7 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 23
  %23 = ptrtoint ptr %vendor_id7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vendor_id7, align 4
  %call10 = call noalias ptr @kstrdup(ptr noundef %config, i32 noundef 3264) #14
  %name11 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10, ptr %name11, align 8
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.end4.err_str_crit_edge, label %if.end15

if.end4.err_str_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_str

if.end15:                                         ; preds = %if.end4
  %call16 = call ptr @vduse_domain_create(i32 noundef 134217727, i32 noundef 67108864) #14
  %domain = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16, ptr %domain, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.err_domain_crit_edge, label %if.end20

if.end15.err_domain_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_domain

if.end20:                                         ; preds = %if.end15
  %config21 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 26
  %26 = ptrtoint ptr %config21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %config_buf, ptr %config21, align 8
  %config_size = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 7
  %27 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_size, align 4
  %config_size22 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 25
  %29 = ptrtoint ptr %config_size22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %config_size22, align 4
  %vq_align = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 5
  %30 = ptrtoint ptr %vq_align to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vq_align, align 4
  %vq_align23 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 29
  %32 = ptrtoint ptr %vq_align23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vq_align23, align 4
  %vq_num = getelementptr inbounds %struct.vduse_dev_config, ptr %config, i32 0, i32 4
  %33 = ptrtoint ptr %vq_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vq_num, align 8
  %vq_num24 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 28
  %35 = ptrtoint ptr %vq_num24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %vq_num24, align 8
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 232) #14
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !129

kcalloc.exit.thread:                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %vqs179 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %vqs179 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %vqs179, align 8
  br label %err_vqs

if.end7.i.i:                                      ; preds = %if.end20
  %39 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #20
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i.i, ptr %vqs, align 8
  %tobool28.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool28.not, label %if.end7.i.i.err_vqs_crit_edge, label %for.cond.preheader

if.end7.i.i.err_vqs_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_vqs

for.cond.preheader:                               ; preds = %if.end7.i.i
  %41 = ptrtoint ptr %vq_num24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vq_num24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp181.not = icmp eq i32 %42, 0
  br i1 %cmp181.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0182 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.0182 to i16
  %43 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vqs, align 8
  %arrayidx = getelementptr %struct.vduse_virtqueue, ptr %44, i32 %i.0182
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %arrayidx, align 8
  %46 = load ptr, ptr %vqs, align 8
  %inject = getelementptr %struct.vduse_virtqueue, ptr %46, i32 %i.0182, i32 13
  call void @__init_work(ptr noundef %inject, i32 noundef 0) #14
  %47 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vqs, align 8
  %inject37 = getelementptr %struct.vduse_virtqueue, ptr %48, i32 %i.0182, i32 13
  %49 = ptrtoint ptr %inject37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -64, ptr %inject37, align 4
  %50 = load ptr, ptr %vqs, align 8
  %lockdep_map = getelementptr %struct.vduse_virtqueue, ptr %50, i32 %i.0182, i32 13, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @vduse_create_dev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %51 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vqs, align 8
  %entry44 = getelementptr %struct.vduse_virtqueue, ptr %52, i32 %i.0182, i32 13, i32 1
  %53 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr %struct.vduse_virtqueue, ptr %52, i32 %i.0182, i32 13, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry44, ptr %prev.i, align 4
  %55 = load ptr, ptr %vqs, align 8
  %func = getelementptr %struct.vduse_virtqueue, ptr %55, i32 %i.0182, i32 13, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @vduse_vq_irq_inject, ptr %func, align 4
  %57 = load ptr, ptr %vqs, align 8
  %kick = getelementptr %struct.vduse_virtqueue, ptr %57, i32 %i.0182, i32 14
  call void @__init_work(ptr noundef %kick, i32 noundef 0) #14
  %58 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vqs, align 8
  %kick53 = getelementptr %struct.vduse_virtqueue, ptr %59, i32 %i.0182, i32 14
  %60 = ptrtoint ptr %kick53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -64, ptr %kick53, align 8
  %61 = load ptr, ptr %vqs, align 8
  %lockdep_map60 = getelementptr %struct.vduse_virtqueue, ptr %61, i32 %i.0182, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map60, ptr noundef nonnull @.str.14, ptr noundef nonnull @vduse_create_dev.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %62 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vqs, align 8
  %entry64 = getelementptr %struct.vduse_virtqueue, ptr %63, i32 %i.0182, i32 14, i32 1
  %64 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i175 = getelementptr %struct.vduse_virtqueue, ptr %63, i32 %i.0182, i32 14, i32 1, i32 1
  %65 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %entry64, ptr %prev.i175, align 4
  %66 = load ptr, ptr %vqs, align 8
  %func68 = getelementptr %struct.vduse_virtqueue, ptr %66, i32 %i.0182, i32 14, i32 2
  %67 = ptrtoint ptr %func68 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @vduse_vq_kick_work, ptr %func68, align 4
  %68 = load ptr, ptr %vqs, align 8
  %kick_lock = getelementptr %struct.vduse_virtqueue, ptr %68, i32 %i.0182, i32 9
  call void @__raw_spin_lock_init(ptr noundef %kick_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @vduse_create_dev.__key.15, i16 noundef signext 3) #14
  %69 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vqs, align 8
  %irq_lock = getelementptr %struct.vduse_virtqueue, ptr %70, i32 %i.0182, i32 10
  call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @vduse_create_dev.__key.17, i16 noundef signext 3) #14
  %inc = add nuw i32 %i.0182, 1
  %71 = ptrtoint ptr %vq_num24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vq_num24, align 8
  %cmp = icmp ult i32 %inc, %72
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call83 = call i32 @idr_alloc(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 1048576, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %for.end.err_idr_crit_edge, label %if.end87

for.end.err_idr_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_idr

if.end87:                                         ; preds = %for.end
  %minor = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 16
  %73 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call83, ptr %minor, align 8
  %msg_timeout = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 8
  %74 = ptrtoint ptr %msg_timeout to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 30, ptr %msg_timeout, align 8
  %75 = load ptr, ptr @vduse_class, align 4
  %76 = load i32, ptr @vduse_major, align 4
  %shr = and i32 %76, -1048576
  %or = or i32 %shr, %call83
  %call91 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %75, ptr noundef null, i32 noundef %or, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.19, ptr noundef %config) #14
  %dev92 = getelementptr inbounds %struct.vduse_dev, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %dev92 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call91, ptr %dev92, align 4
  %cmp.i = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then95, label %if.end98

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %call91 to i32
  %79 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %minor, align 8
  %call100 = call ptr @idr_remove(ptr noundef nonnull @vduse_idr, i32 noundef %80) #14
  br label %err_idr

if.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  call void @__module_get(ptr noundef null) #14
  br label %cleanup

err_idr:                                          ; preds = %if.then95, %for.end.err_idr_crit_edge
  %ret.0 = phi i32 [ %call83, %for.end.err_idr_crit_edge ], [ %78, %if.then95 ]
  %81 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vqs, align 8
  call void @kfree(ptr noundef %82) #14
  br label %err_vqs

err_vqs:                                          ; preds = %err_idr, %if.end7.i.i.err_vqs_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %err_idr ], [ -12, %if.end7.i.i.err_vqs_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %83 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %domain, align 4
  call void @vduse_domain_destroy(ptr noundef %84) #14
  br label %err_domain

err_domain:                                       ; preds = %err_vqs, %if.end15.err_domain_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_vqs ], [ -12, %if.end15.err_domain_crit_edge ]
  %85 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name11, align 8
  call void @kfree(ptr noundef %86) #14
  br label %err_str

err_str:                                          ; preds = %err_domain, %if.end4.err_str_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_domain ], [ -12, %if.end4.err_str_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_str, %if.end98, %if.end.cleanup_crit_edge, %vduse_find_dev.exit
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -17, %vduse_find_dev.exit ], [ %ret.3, %err_str ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vduse_domain_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vq_irq_inject(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %work, i32 -56
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #14
  %ready = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cb = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %private = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %call = tail call i32 %3(ptr noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vq_kick_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kick_lock.i = getelementptr i8, ptr %work, i32 -144
  tail call void @_raw_spin_lock(ptr noundef %kick_lock.i) #14
  %ready.i = getelementptr i8, ptr %work, i32 -148
  %0 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.vduse_vq_kick.exit_crit_edge, label %if.end.i

entry.vduse_vq_kick.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_vq_kick.exit

if.end.i:                                         ; preds = %entry
  %kickfd.i = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %kickfd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kickfd.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i64 @eventfd_signal(ptr noundef nonnull %3, i64 noundef 1) #14
  br label %vduse_vq_kick.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %kicked.i = getelementptr i8, ptr %work, i32 -147
  %4 = ptrtoint ptr %kicked.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %kicked.i, align 1
  br label %vduse_vq_kick.exit

vduse_vq_kick.exit:                               ; preds = %if.else.i, %if.then2.i, %entry.vduse_vq_kick.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %kick_lock.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_dev_irq_inject(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #14
  %config_cb = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %config_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %private = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 %1(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vduse_dev_reset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %bounce_map = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bounce_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bounce_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vduse_domain_reset_bounce_map(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rwsem = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 15
  tail call void @down_write(ptr noundef %rwsem) #14
  %status = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %status, align 4
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %driver_features to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %driver_features, align 8
  %generation = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generation, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %generation, align 8
  %irq_lock = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #14
  %config_cb = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %config_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %config_cb, align 8
  %private = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #14
  %inject = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 13
  %call = tail call zeroext i1 @flush_work(ptr noundef %inject) #14
  %vq_num = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 28
  %10 = ptrtoint ptr %vq_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp52.not = icmp eq i32 %11, 0
  br i1 %cmp52.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end7.for.body_crit_edge ]
  %12 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqs, align 8
  %num = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 2
  %kick_lock = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 9
  %14 = call ptr @memset(ptr %num, i32 0, i32 33)
  tail call void @_raw_spin_lock(ptr noundef %kick_lock) #14
  %kicked = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 8
  %15 = ptrtoint ptr %kicked to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %kicked, align 1
  %kickfd = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 11
  %16 = ptrtoint ptr %kickfd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kickfd, align 8
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %for.body.if.end7_crit_edge, label %if.then5

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @eventfd_ctx_put(ptr noundef nonnull %17) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %18 = ptrtoint ptr %kickfd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %kickfd, align 8
  tail call void @_raw_spin_unlock(ptr noundef %kick_lock) #14
  %irq_lock10 = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 10
  tail call void @_raw_spin_lock(ptr noundef %irq_lock10) #14
  %cb = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 12
  %19 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cb, align 4
  %private13 = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 12, i32 1
  %20 = ptrtoint ptr %private13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %private13, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock10) #14
  %inject15 = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 13
  %call16 = tail call zeroext i1 @flush_work(ptr noundef %inject15) #14
  %kick = getelementptr %struct.vduse_virtqueue, ptr %13, i32 %i.053, i32 14
  %call17 = tail call zeroext i1 @flush_work(ptr noundef %kick) #14
  %inc18 = add nuw i32 %i.053, 1
  %21 = ptrtoint ptr %vq_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vq_num, align 8
  %cmp = icmp ult i32 %inc18, %22
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_reset_bounce_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_read_iter(ptr nocapture noundef readonly %iocb, ptr noundef %to) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %5)
  %cmp = icmp ult i32 %5, 152
  br i1 %cmp, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end:                                           ; preds = %entry
  %msg_lock = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %send_list = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 10
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %waitq = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %6 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %send_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %send_list
  br i1 %cmp.i.not.i, label %while.cond.if.end3_crit_edge, label %if.then.i

while.cond.if.end3_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then.i:                                        ; preds = %while.cond
  %add.ptr.i = getelementptr i8, ptr %7, i32 -304
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.vduse_dequeue_msg.exit_crit_edge

if.then.i.vduse_dequeue_msg.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dequeue_msg.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %vduse_dequeue_msg.exit

vduse_dequeue_msg.exit:                           ; preds = %if.end.i.i.i, %if.then.i.vduse_dequeue_msg.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %vduse_dequeue_msg.exit.if.end3_crit_edge, label %while.end

vduse_dequeue_msg.exit.if.end3_crit_edge:         ; preds = %vduse_dequeue_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end3:                                          ; preds = %vduse_dequeue_msg.exit.if.end3_crit_edge, %while.cond.if.end3_crit_edge
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.unlock_crit_edge

if.end3.unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end6:                                          ; preds = %if.end3
  call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 321) #14
  %18 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %send_list, align 4
  %cmp.i.not = icmp eq ptr %19, %send_list
  br i1 %cmp.i.not, label %if.then14, label %if.end6.if.end30_crit_edge

if.end6.if.end30_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then14:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call16104 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %21 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %send_list, align 4
  %cmp.i68.not105 = icmp eq ptr %22, %send_list
  br i1 %cmp.i68.not105, label %if.then14.if.end21_crit_edge, label %if.then14.if.end26.thread91_crit_edge

if.then14.if.end26.thread91_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.thread91

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  br label %if.end21

if.end21:                                         ; preds = %cleanup.if.end21_crit_edge, %if.then14.if.end21_crit_edge
  %call16106 = phi i32 [ %call16, %cleanup.if.end21_crit_edge ], [ %call16104, %if.then14.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16106)
  %tobool22.not = icmp eq i32 %call16106, 0
  br i1 %tobool22.not, label %cleanup, label %if.end26

cleanup:                                          ; preds = %if.end21
  call void @schedule() #14
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %23 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %send_list, align 4
  %cmp.i68.not = icmp eq ptr %24, %send_list
  br i1 %cmp.i68.not, label %cleanup.if.end21_crit_edge, label %cleanup.if.end26.thread91_crit_edge

cleanup.if.end26.thread91_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.thread91

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end26.thread91:                                ; preds = %cleanup.if.end26.thread91_crit_edge, %if.then14.if.end26.thread91_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end30

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %cleanup40

if.end30:                                         ; preds = %if.end26.thread91, %if.end6.if.end30_crit_edge
  call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  br label %while.cond

while.end:                                        ; preds = %vduse_dequeue_msg.exit
  %prev.i.i.le = getelementptr %struct.list_head, ptr %7, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %add.ptr.i, i32 noundef 152, ptr noundef %to) #14
  call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %call3.i)
  %cmp35.not = icmp eq i32 %call3.i, 152
  br i1 %cmp35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %while.end
  %prev.i.i70 = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i70, align 4
  %call.i.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %26, ptr noundef %send_list) #14
  br i1 %call.i.i.i71, label %if.then36.unlock.sink.split_crit_edge, label %if.then36.unlock_crit_edge

if.then36.unlock_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then36.unlock.sink.split_crit_edge:            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock.sink.split

if.end38:                                         ; preds = %while.end
  %recv_list = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 11
  %prev.i.i74 = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i74, align 4
  %call.i.i.i75 = call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %28, ptr noundef %recv_list) #14
  br i1 %call.i.i.i75, label %if.end38.unlock.sink.split_crit_edge, label %if.end38.unlock_crit_edge

if.end38.unlock_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end38.unlock.sink.split_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.end38.unlock.sink.split_crit_edge, %if.then36.unlock.sink.split_crit_edge
  %prev.i.i74.sink = phi ptr [ %prev.i.i70, %if.then36.unlock.sink.split_crit_edge ], [ %prev.i.i74, %if.end38.unlock.sink.split_crit_edge ]
  %recv_list.sink = phi ptr [ %send_list, %if.then36.unlock.sink.split_crit_edge ], [ %recv_list, %if.end38.unlock.sink.split_crit_edge ]
  %.sink114 = phi ptr [ %26, %if.then36.unlock.sink.split_crit_edge ], [ %28, %if.end38.unlock.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -14, %if.then36.unlock.sink.split_crit_edge ], [ 152, %if.end38.unlock.sink.split_crit_edge ]
  %29 = ptrtoint ptr %prev.i.i74.sink to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %7, ptr %prev.i.i74.sink, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %recv_list.sink, ptr %7, align 4
  %31 = ptrtoint ptr %prev.i.i.le to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.sink114, ptr %prev.i.i.le, align 4
  %32 = ptrtoint ptr %.sink114 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %7, ptr %.sink114, align 4
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end38.unlock_crit_edge, %if.then36.unlock_crit_edge, %if.end3.unlock_crit_edge
  %ret.0 = phi i32 [ -14, %if.then36.unlock_crit_edge ], [ 152, %if.end38.unlock_crit_edge ], [ %ret.0.ph, %unlock.sink.split ], [ -11, %if.end3.unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  br label %cleanup40

cleanup40:                                        ; preds = %unlock, %if.end26, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup40_crit_edge ], [ %call16106, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_write_iter(ptr nocapture noundef readonly %iocb, ptr noundef %from) #0 align 64 {
entry:
  %resp = alloca %struct.vduse_dev_response, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %resp) #14
  %4 = call ptr @memset(ptr %resp, i32 255, i32 152)
  %call3.i = call i32 @_copy_from_iter(ptr noundef nonnull %resp, i32 noundef 152, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %call3.i)
  %cmp.not = icmp eq i32 %call3.i, 152
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %reserved = getelementptr inbounds %struct.vduse_dev_response, ptr %resp, i32 0, i32 2
  %5 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i27 = icmp eq i8 %6, 0
  br i1 %tobool.not.i27, label %for.cond.i.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.preheader:                             ; preds = %if.end
  %arrayidx.i = getelementptr inbounds i8, ptr %reserved, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %for.cond.i.1, label %for.cond.i.preheader.cleanup_crit_edge

for.cond.i.preheader.cleanup_crit_edge:           ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.1:                                     ; preds = %for.cond.i.preheader
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %reserved, i32 2
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.i.1, label %for.cond.i.2, label %for.cond.i.1.cleanup_crit_edge

for.cond.i.1.cleanup_crit_edge:                   ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %reserved, i32 3
  %11 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.2 = icmp eq i8 %12, 0
  br i1 %tobool.not.i.2, label %for.cond.i.3, label %for.cond.i.2.cleanup_crit_edge

for.cond.i.2.cleanup_crit_edge:                   ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %arrayidx.i.3 = getelementptr inbounds %struct.vduse_dev_response, ptr %resp, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.3 = icmp eq i8 %14, 0
  br i1 %tobool.not.i.3, label %for.cond.i.4, label %for.cond.i.3.cleanup_crit_edge

for.cond.i.3.cleanup_crit_edge:                   ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %reserved, i32 5
  %15 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.4 = icmp eq i8 %16, 0
  br i1 %tobool.not.i.4, label %for.cond.i.5, label %for.cond.i.4.cleanup_crit_edge

for.cond.i.4.cleanup_crit_edge:                   ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %reserved, i32 6
  %17 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.5 = icmp eq i8 %18, 0
  br i1 %tobool.not.i.5, label %for.cond.i.6, label %for.cond.i.5.cleanup_crit_edge

for.cond.i.5.cleanup_crit_edge:                   ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %reserved, i32 7
  %19 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.6 = icmp eq i8 %20, 0
  br i1 %tobool.not.i.6, label %for.cond.i.7, label %for.cond.i.6.cleanup_crit_edge

for.cond.i.6.cleanup_crit_edge:                   ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %arrayidx.i.7 = getelementptr inbounds %struct.vduse_dev_response, ptr %resp, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.7 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.7, label %for.cond.i.8, label %for.cond.i.7.cleanup_crit_edge

for.cond.i.7.cleanup_crit_edge:                   ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.8:                                     ; preds = %for.cond.i.7
  %arrayidx.i.8 = getelementptr inbounds i8, ptr %reserved, i32 9
  %23 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.8 = icmp eq i8 %24, 0
  br i1 %tobool.not.i.8, label %for.cond.i.9, label %for.cond.i.8.cleanup_crit_edge

for.cond.i.8.cleanup_crit_edge:                   ; preds = %for.cond.i.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.9:                                     ; preds = %for.cond.i.8
  %arrayidx.i.9 = getelementptr inbounds i8, ptr %reserved, i32 10
  %25 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.9 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.9, label %for.cond.i.10, label %for.cond.i.9.cleanup_crit_edge

for.cond.i.9.cleanup_crit_edge:                   ; preds = %for.cond.i.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.10:                                    ; preds = %for.cond.i.9
  %arrayidx.i.10 = getelementptr inbounds i8, ptr %reserved, i32 11
  %27 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.10 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.10, label %for.cond.i.11, label %for.cond.i.10.cleanup_crit_edge

for.cond.i.10.cleanup_crit_edge:                  ; preds = %for.cond.i.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.11:                                    ; preds = %for.cond.i.10
  %arrayidx.i.11 = getelementptr inbounds %struct.vduse_dev_response, ptr %resp, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.11 = icmp eq i8 %30, 0
  br i1 %tobool.not.i.11, label %for.cond.i.12, label %for.cond.i.11.cleanup_crit_edge

for.cond.i.11.cleanup_crit_edge:                  ; preds = %for.cond.i.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.12:                                    ; preds = %for.cond.i.11
  %arrayidx.i.12 = getelementptr inbounds i8, ptr %reserved, i32 13
  %31 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.12 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.12, label %for.cond.i.13, label %for.cond.i.12.cleanup_crit_edge

for.cond.i.12.cleanup_crit_edge:                  ; preds = %for.cond.i.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.13:                                    ; preds = %for.cond.i.12
  %arrayidx.i.13 = getelementptr inbounds i8, ptr %reserved, i32 14
  %33 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.13 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.13, label %for.cond.i.14, label %for.cond.i.13.cleanup_crit_edge

for.cond.i.13.cleanup_crit_edge:                  ; preds = %for.cond.i.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i.14:                                    ; preds = %for.cond.i.13
  %arrayidx.i.14 = getelementptr inbounds i8, ptr %reserved, i32 15
  %35 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.14 = icmp eq i8 %36, 0
  br i1 %tobool.not.i.14, label %if.end3, label %for.cond.i.14.cleanup_crit_edge

for.cond.i.14.cleanup_crit_edge:                  ; preds = %for.cond.i.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %for.cond.i.14
  %msg_lock = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %recv_list = getelementptr inbounds %struct.vduse_dev, ptr %3, i32 0, i32 11
  %37 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resp, align 4
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %for.body.i20.for.cond.i19_crit_edge, %if.end3
  %.pn.in.i = phi ptr [ %recv_list, %if.end3 ], [ %.pn.i, %for.body.i20.for.cond.i19_crit_edge ]
  %39 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %recv_list
  br i1 %cmp.not.i, label %for.cond.i19.unlock_crit_edge, label %for.body.i20

for.cond.i19.unlock_crit_edge:                    ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

for.body.i20:                                     ; preds = %for.cond.i19
  %request_id1.i = getelementptr i8, ptr %.pn.i, i32 -300
  %40 = ptrtoint ptr %request_id1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %request_id1.i, align 4
  %cmp2.i = icmp eq i32 %41, %38
  br i1 %cmp2.i, label %if.then.i, label %for.body.i20.for.cond.i19_crit_edge

for.body.i20.for.cond.i19_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i19

if.then.i:                                        ; preds = %for.body.i20
  %msg.0.le.i = getelementptr i8, ptr %.pn.i, i32 -304
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.vduse_find_msg.exit_crit_edge

if.then.i.vduse_find_msg.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_find_msg.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %vduse_find_msg.exit

vduse_find_msg.exit:                              ; preds = %if.end.i.i.i, %if.then.i.vduse_find_msg.exit_crit_edge
  %48 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %msg.0.le.i, null
  br i1 %tobool.not, label %vduse_find_msg.exit.unlock_crit_edge, label %if.end6

vduse_find_msg.exit.unlock_crit_edge:             ; preds = %vduse_find_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end6:                                          ; preds = %vduse_find_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %resp7 = getelementptr i8, ptr %.pn.i, i32 -152
  %50 = call ptr @memcpy(ptr %resp7, ptr %resp, i32 152)
  %completed = getelementptr i8, ptr %.pn.i, i32 60
  %51 = ptrtoint ptr %completed to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %completed, align 4
  %waitq = getelementptr i8, ptr %.pn.i, i32 8
  call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %unlock

unlock:                                           ; preds = %if.end6, %vduse_find_msg.exit.unlock_crit_edge, %for.cond.i19.unlock_crit_edge
  %ret.0 = phi i32 [ 152, %if.end6 ], [ -2, %vduse_find_msg.exit.unlock_crit_edge ], [ -2, %for.cond.i19.unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %for.cond.i.14.cleanup_crit_edge, %for.cond.i.13.cleanup_crit_edge, %for.cond.i.12.cleanup_crit_edge, %for.cond.i.11.cleanup_crit_edge, %for.cond.i.10.cleanup_crit_edge, %for.cond.i.9.cleanup_crit_edge, %for.cond.i.8.cleanup_crit_edge, %for.cond.i.7.cleanup_crit_edge, %for.cond.i.6.cleanup_crit_edge, %for.cond.i.5.cleanup_crit_edge, %for.cond.i.4.cleanup_crit_edge, %for.cond.i.3.cleanup_crit_edge, %for.cond.i.2.cleanup_crit_edge, %for.cond.i.1.cleanup_crit_edge, %for.cond.i.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.preheader.cleanup_crit_edge ], [ -22, %for.cond.i.1.cleanup_crit_edge ], [ -22, %for.cond.i.2.cleanup_crit_edge ], [ -22, %for.cond.i.3.cleanup_crit_edge ], [ -22, %for.cond.i.4.cleanup_crit_edge ], [ -22, %for.cond.i.5.cleanup_crit_edge ], [ -22, %for.cond.i.6.cleanup_crit_edge ], [ -22, %for.cond.i.7.cleanup_crit_edge ], [ -22, %for.cond.i.8.cleanup_crit_edge ], [ -22, %for.cond.i.9.cleanup_crit_edge ], [ -22, %for.cond.i.10.cleanup_crit_edge ], [ -22, %for.cond.i.11.cleanup_crit_edge ], [ -22, %for.cond.i.12.cleanup_crit_edge ], [ -22, %for.cond.i.13.cleanup_crit_edge ], [ -22, %for.cond.i.14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %resp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %msg_lock = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %broken = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %broken, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %poll_wait.exit.if.end_crit_edge, label %if.then, !prof !127

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %poll_wait.exit.if.end_crit_edge
  %mask.0 = phi i32 [ 8, %if.then ], [ 0, %poll_wait.exit.if.end_crit_edge ]
  %send_list = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %send_list, align 4
  %cmp.i.not = icmp eq ptr %7, %send_list
  %or5 = or i32 %mask.0, 65
  %spec.select = select i1 %cmp.i.not, i32 %mask.0, i32 %or5
  %recv_list = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i22.not = icmp eq ptr %9, %recv_list
  %or10 = or i32 %spec.select, 260
  %mask.2 = select i1 %cmp.i22.not, i32 %spec.select, i32 %or10
  tail call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  ret i32 %mask.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %entry3 = alloca %struct.vduse_iotlb_entry, align 8
  %config = alloca %struct.vduse_config_data, align 4
  %config73 = alloca %struct.vduse_vq_config, align 4
  %vq_info = alloca %struct.vduse_vq_info, align 8
  %eventfd = alloca %struct.vduse_vq_eventfd, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %broken = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %broken, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup205_crit_edge, !prof !127

entry.cleanup205_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup205

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %if.end.cleanup205_crit_edge [
    i32 -1071611632, label %sw.bb
    i32 -2146926319, label %sw.bb39
    i32 1074299154, label %sw.bb42
    i32 33043, label %sw.bb70
    i32 1075872020, label %sw.bb72
    i32 -1070563051, label %sw.bb98
    i32 1074299158, label %sw.bb160
    i32 1074037015, label %sw.bb167
  ]

if.end.cleanup205_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup205

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry3) #14
  %6 = call ptr @memset(ptr %entry3, i32 255, i32 32)
  %domain4 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %domain4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain4, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #17
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry3, i32 noundef 32) #14
  %10 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !121
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %entry3, ptr noundef %2, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i437 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %sw.bb.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i437
  %add.ptr.i.i = getelementptr i8, ptr %entry3, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i437)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %start = getelementptr inbounds %struct.vduse_iotlb_entry, ptr %entry3, i32 0, i32 1
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start, align 8
  %last = getelementptr inbounds %struct.vduse_iotlb_entry, ptr %entry3, i32 0, i32 2
  %16 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp = icmp ugt i64 %15, %17
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %8, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %iotlb_lock) #14
  %iotlb = getelementptr inbounds %struct.vduse_iova_domain, ptr %8, i32 0, i32 6
  %18 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iotlb, align 4
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start, align 8
  %22 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %last, align 8
  %call12 = call ptr @vhost_iotlb_itree_first(ptr noundef %19, i64 noundef %21, i64 noundef %23) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %opaque = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call12, i32 0, i32 9
  %24 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %opaque, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %f_count.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 6
  %call.i.i.i421 = call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #14
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #14, !srcloc !130
  %offset = getelementptr inbounds %struct.vdpa_map_file, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset, align 8
  %31 = ptrtoint ptr %entry3 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %entry3, align 8
  %start18 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call12, i32 0, i32 2
  %32 = ptrtoint ptr %start18 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start18, align 8
  %34 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %start, align 8
  %last20 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call12, i32 0, i32 3
  %35 = ptrtoint ptr %last20 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %last20, align 8
  %37 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %last, align 8
  %perm = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call12, i32 0, i32 6
  %38 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %perm, align 8
  %conv = trunc i32 %39 to i8
  %perm22 = getelementptr inbounds %struct.vduse_iotlb_entry, ptr %entry3, i32 0, i32 3
  %40 = ptrtoint ptr %perm22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %perm22, align 8
  call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #14
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end8.i.i270

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i270:                                   ; preds = %if.end23
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #14
  %call.i.i271 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i271, label %if.end8.i.i270.if.then30_crit_edge, label %copy_to_user.exit

if.end8.i.i270.if.then30_crit_edge:               ; preds = %if.end8.i.i270
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

copy_to_user.exit:                                ; preds = %if.end8.i.i270
  %call.i.i.i275 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %entry3, i32 noundef 32) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %entry3, i32 noundef 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool29.not, label %if.end31, label %copy_to_user.exit.if.then30_crit_edge

copy_to_user.exit.if.then30_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

if.then30:                                        ; preds = %copy_to_user.exit.if.then30_crit_edge, %if.end8.i.i270.if.then30_crit_edge
  call void @fput(ptr noundef nonnull %27) #14
  br label %cleanup

if.end31:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %perm22 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %perm22, align 8
  %call33 = call fastcc i32 @perm_to_file_flags(i8 noundef zeroext %42), !range !131
  %call34 = call i32 @receive_fd(ptr noundef nonnull %27, i32 noundef %call33) #14
  call void @fput(ptr noundef nonnull %27) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %if.end23.cleanup_crit_edge, %if.end23.thread, %if.end7.cleanup_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ -14, %if.then30 ], [ %call34, %if.end31 ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.end23.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry3) #14
  br label %cleanup205

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %driver_features to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %driver_features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 975) #14
  %45 = tail call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !121
  %and.i = and i32 %47, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i64 %44, i32 -1226833921) #14, !srcloc !132
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  br label %cleanup205

sw.bb42:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #14
  %49 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %config, align 4, !annotation !133
  %50 = getelementptr inbounds %struct.vduse_config_data, ptr %config, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !133
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i281 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i281, label %sw.bb42.if.then11.i.i297_crit_edge, label %land.lhs.true.i.i284

sw.bb42.if.then11.i.i297_crit_edge:               ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i297

land.lhs.true.i.i284:                             ; preds = %sw.bb42
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i282 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i282)
  %cmp.i6.i283 = icmp eq i32 %asmresult.i.i282, 0
  br i1 %cmp.i6.i283, label %if.end.i.i294, label %land.lhs.true.i.i284.if.then11.i.i297_crit_edge, !prof !127

land.lhs.true.i.i284.if.then11.i.i297_crit_edge:  ; preds = %land.lhs.true.i.i284
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i297

if.end.i.i294:                                    ; preds = %land.lhs.true.i.i284
  %call.i.i.i285 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 8) #14
  %53 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i286 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i286 to ptr
  %cpu_domain.i.i.i.i.i287 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i287) #3, !srcloc !121
  %and.i.i.i.i288 = and i32 %55, -13
  %or.i.i.i.i289 = or i32 %and.i.i.i.i288, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i289) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i290 = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %2, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i290)
  %tobool4.not.i.i293 = icmp eq i32 %call1.i.i.i290, 0
  br i1 %tobool4.not.i.i293, label %if.end46, label %if.end.i.i294.if.then11.i.i297_crit_edge, !prof !127

if.end.i.i294.if.then11.i.i297_crit_edge:         ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i297

if.then11.i.i297:                                 ; preds = %if.end.i.i294.if.then11.i.i297_crit_edge, %land.lhs.true.i.i284.if.then11.i.i297_crit_edge, %sw.bb42.if.then11.i.i297_crit_edge
  %res.0.i.i292446 = phi i32 [ %call1.i.i.i290, %if.end.i.i294.if.then11.i.i297_crit_edge ], [ 8, %sw.bb42.if.then11.i.i297_crit_edge ], [ 8, %land.lhs.true.i.i284.if.then11.i.i297_crit_edge ]
  %sub.i.i295 = sub i32 8, %res.0.i.i292446
  %add.ptr.i.i296 = getelementptr i8, ptr %config, i32 %sub.i.i295
  %56 = call ptr @memset(ptr %add.ptr.i.i296, i32 0, i32 %res.0.i.i292446)
  br label %cleanup68

if.end46:                                         ; preds = %if.end.i.i294
  %57 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %config, align 4
  %config_size = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 25
  %59 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %config_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp48 = icmp ult i32 %60, %58
  br i1 %cmp48, label %if.end46.cleanup68_crit_edge, label %lor.lhs.false

if.end46.cleanup68_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

lor.lhs.false:                                    ; preds = %if.end46
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp50 = icmp eq i32 %62, 0
  %sub = sub i32 %60, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub)
  %cmp56 = icmp ugt i32 %62, %sub
  %or.cond = select i1 %cmp50, i1 true, i1 %cmp56
  br i1 %or.cond, label %lor.lhs.false.cleanup68_crit_edge, label %if.end59

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

if.end59:                                         ; preds = %lor.lhs.false
  %config60 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 26
  %63 = ptrtoint ptr %config60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config60, align 8
  %add.ptr = getelementptr i8, ptr %64, i32 %58
  %add.ptr62 = getelementptr i8, ptr %2, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp9.i.i = icmp slt i32 %62, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end59
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup68_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.cleanup68_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup68

if.then.i.i.i:                                    ; preds = %if.end59
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %62, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i304 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i304, label %if.then.i.i.i.if.then11.i.i320_crit_edge, label %land.lhs.true.i.i307

if.then.i.i.i.if.then11.i.i320_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i320

land.lhs.true.i.i307:                             ; preds = %if.then.i.i.i
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr62, i32 %62, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i305 = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i305)
  %cmp.i6.i306 = icmp eq i32 %asmresult.i.i305, 0
  br i1 %cmp.i6.i306, label %if.end.i.i317, label %land.lhs.true.i.i307.if.then11.i.i320_crit_edge, !prof !127

land.lhs.true.i.i307.if.then11.i.i320_crit_edge:  ; preds = %land.lhs.true.i.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i320

if.end.i.i317:                                    ; preds = %land.lhs.true.i.i307
  %call.i.i.i308 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %62) #14
  %66 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i309 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i309 to ptr
  %cpu_domain.i.i.i.i.i310 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i310) #3, !srcloc !121
  %and.i.i.i.i311 = and i32 %68, -13
  %or.i.i.i.i312 = or i32 %and.i.i.i.i311, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i312) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i313 = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %add.ptr62, i32 noundef %62) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i313)
  %tobool4.not.i.i316 = icmp eq i32 %call1.i.i.i313, 0
  br i1 %tobool4.not.i.i316, label %if.end.i.i317.cleanup68_crit_edge, label %if.end.i.i317.if.then11.i.i320_crit_edge, !prof !127

if.end.i.i317.if.then11.i.i320_crit_edge:         ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i320

if.end.i.i317.cleanup68_crit_edge:                ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

if.then11.i.i320:                                 ; preds = %if.end.i.i317.if.then11.i.i320_crit_edge, %land.lhs.true.i.i307.if.then11.i.i320_crit_edge, %if.then.i.i.i.if.then11.i.i320_crit_edge
  %res.0.i.i315451 = phi i32 [ %call1.i.i.i313, %if.end.i.i317.if.then11.i.i320_crit_edge ], [ %62, %if.then.i.i.i.if.then11.i.i320_crit_edge ], [ %62, %land.lhs.true.i.i307.if.then11.i.i320_crit_edge ]
  %sub.i.i318 = sub i32 %62, %res.0.i.i315451
  %add.ptr.i.i319 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i318
  %69 = call ptr @memset(ptr %add.ptr.i.i319, i32 0, i32 %res.0.i.i315451)
  br label %cleanup68

cleanup68:                                        ; preds = %if.then11.i.i320, %if.end.i.i317.cleanup68_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup68_crit_edge, %lor.lhs.false.cleanup68_crit_edge, %if.end46.cleanup68_crit_edge, %if.then11.i.i297
  %ret.1 = phi i32 [ -22, %lor.lhs.false.cleanup68_crit_edge ], [ -22, %if.end46.cleanup68_crit_edge ], [ 0, %if.end.i.i317.cleanup68_crit_edge ], [ -14, %if.then11.i.i297 ], [ -14, %if.then11.i.i320 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #14
  br label %cleanup205

sw.bb70:                                          ; preds = %if.end
  %rwsem.i = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %rwsem.i) #14
  %status.i = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 27
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %status.i, align 4
  %72 = and i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %sw.bb70.vduse_dev_queue_irq_work.exit_crit_edge, label %if.end.i

sw.bb70.vduse_dev_queue_irq_work.exit_crit_edge:  ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_queue_irq_work.exit

if.end.i:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #16
  %inject = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 13
  %73 = load ptr, ptr @vduse_irq_wq, align 4
  %call.i.i422 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %inject) #14
  br label %vduse_dev_queue_irq_work.exit

vduse_dev_queue_irq_work.exit:                    ; preds = %if.end.i, %sw.bb70.vduse_dev_queue_irq_work.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i ], [ -22, %sw.bb70.vduse_dev_queue_irq_work.exit_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #14
  br label %cleanup205

sw.bb72:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config73) #14
  %74 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2
  %76 = call ptr @memset(ptr %config73, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i329 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i329, label %sw.bb72.if.then11.i.i346_crit_edge, label %land.lhs.true.i.i333

sw.bb72.if.then11.i.i346_crit_edge:               ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i346

land.lhs.true.i.i333:                             ; preds = %sw.bb72
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i331 = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i331)
  %cmp.i6.i332 = icmp eq i32 %asmresult.i.i331, 0
  br i1 %cmp.i6.i332, label %if.end.i.i343, label %land.lhs.true.i.i333.if.then11.i.i346_crit_edge, !prof !127

land.lhs.true.i.i333.if.then11.i.i346_crit_edge:  ; preds = %land.lhs.true.i.i333
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i346

if.end.i.i343:                                    ; preds = %land.lhs.true.i.i333
  %call.i.i.i334 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config73, i32 noundef 32) #14
  %78 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i335 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i335 to ptr
  %cpu_domain.i.i.i.i.i336 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i336) #3, !srcloc !121
  %and.i.i.i.i337 = and i32 %80, -13
  %or.i.i.i.i338 = or i32 %and.i.i.i.i337, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i338) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i339 = call i32 @arm_copy_from_user(ptr noundef nonnull %config73, ptr noundef %2, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i339)
  %tobool4.not.i.i342 = icmp eq i32 %call1.i.i.i339, 0
  br i1 %tobool4.not.i.i342, label %if.end77, label %if.end.i.i343.if.then11.i.i346_crit_edge, !prof !127

if.end.i.i343.if.then11.i.i346_crit_edge:         ; preds = %if.end.i.i343
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i346

if.then11.i.i346:                                 ; preds = %if.end.i.i343.if.then11.i.i346_crit_edge, %land.lhs.true.i.i333.if.then11.i.i346_crit_edge, %sw.bb72.if.then11.i.i346_crit_edge
  %res.0.i.i341456 = phi i32 [ %call1.i.i.i339, %if.end.i.i343.if.then11.i.i346_crit_edge ], [ 32, %sw.bb72.if.then11.i.i346_crit_edge ], [ 32, %land.lhs.true.i.i333.if.then11.i.i346_crit_edge ]
  %sub.i.i344 = sub i32 32, %res.0.i.i341456
  %add.ptr.i.i345 = getelementptr i8, ptr %config73, i32 %sub.i.i344
  %81 = call ptr @memset(ptr %add.ptr.i.i345, i32 0, i32 %res.0.i.i341456)
  br label %cleanup96

if.end77:                                         ; preds = %if.end.i.i343
  %82 = ptrtoint ptr %config73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %config73, align 4
  %vq_num = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 28
  %84 = ptrtoint ptr %vq_num to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vq_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp79.not = icmp ult i32 %83, %85
  br i1 %cmp79.not, label %for.body.i.preheader, label %if.end77.cleanup96_crit_edge

if.end77.cleanup96_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.body.i.preheader:                             ; preds = %if.end77
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i423471 = icmp eq i8 %87, 0
  br i1 %tobool.not.i423471, label %for.cond.i.preheader, label %for.body.i.preheader.cleanup96_crit_edge

for.body.i.preheader.cleanup96_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.preheader:                             ; preds = %for.body.i.preheader
  %arrayidx.i = getelementptr inbounds i8, ptr %75, i32 1
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i423 = icmp eq i8 %89, 0
  br i1 %tobool.not.i423, label %for.cond.i.1, label %for.cond.i.preheader.cleanup96_crit_edge

for.cond.i.preheader.cleanup96_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.1:                                     ; preds = %for.cond.i.preheader
  %arrayidx.i.1 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i423.1 = icmp eq i8 %91, 0
  br i1 %tobool.not.i423.1, label %for.cond.i.2, label %for.cond.i.1.cleanup96_crit_edge

for.cond.i.1.cleanup96_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %75, i32 3
  %92 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i423.2 = icmp eq i8 %93, 0
  br i1 %tobool.not.i423.2, label %for.cond.i.3, label %for.cond.i.2.cleanup96_crit_edge

for.cond.i.2.cleanup96_crit_edge:                 ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %arrayidx.i.3 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 2
  %94 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i423.3 = icmp eq i8 %95, 0
  br i1 %tobool.not.i423.3, label %for.cond.i.4, label %for.cond.i.3.cleanup96_crit_edge

for.cond.i.3.cleanup96_crit_edge:                 ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %75, i32 5
  %96 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i423.4 = icmp eq i8 %97, 0
  br i1 %tobool.not.i423.4, label %for.cond.i.5, label %for.cond.i.4.cleanup96_crit_edge

for.cond.i.4.cleanup96_crit_edge:                 ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %arrayidx.i.5 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i423.5 = icmp eq i8 %99, 0
  br i1 %tobool.not.i423.5, label %for.cond.i.6, label %for.cond.i.5.cleanup96_crit_edge

for.cond.i.5.cleanup96_crit_edge:                 ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %75, i32 7
  %100 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i423.6 = icmp eq i8 %101, 0
  br i1 %tobool.not.i423.6, label %for.cond.i.7, label %for.cond.i.6.cleanup96_crit_edge

for.cond.i.6.cleanup96_crit_edge:                 ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %arrayidx.i.7 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 4
  %102 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i423.7 = icmp eq i8 %103, 0
  br i1 %tobool.not.i423.7, label %for.cond.i.8, label %for.cond.i.7.cleanup96_crit_edge

for.cond.i.7.cleanup96_crit_edge:                 ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.8:                                     ; preds = %for.cond.i.7
  %arrayidx.i.8 = getelementptr inbounds i8, ptr %75, i32 9
  %104 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i423.8 = icmp eq i8 %105, 0
  br i1 %tobool.not.i423.8, label %for.cond.i.9, label %for.cond.i.8.cleanup96_crit_edge

for.cond.i.8.cleanup96_crit_edge:                 ; preds = %for.cond.i.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.9:                                     ; preds = %for.cond.i.8
  %arrayidx.i.9 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 5
  %106 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i423.9 = icmp eq i8 %107, 0
  br i1 %tobool.not.i423.9, label %for.cond.i.10, label %for.cond.i.9.cleanup96_crit_edge

for.cond.i.9.cleanup96_crit_edge:                 ; preds = %for.cond.i.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.10:                                    ; preds = %for.cond.i.9
  %arrayidx.i.10 = getelementptr inbounds i8, ptr %75, i32 11
  %108 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i423.10 = icmp eq i8 %109, 0
  br i1 %tobool.not.i423.10, label %for.cond.i.11, label %for.cond.i.10.cleanup96_crit_edge

for.cond.i.10.cleanup96_crit_edge:                ; preds = %for.cond.i.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.11:                                    ; preds = %for.cond.i.10
  %arrayidx.i.11 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 6
  %110 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i423.11 = icmp eq i8 %111, 0
  br i1 %tobool.not.i423.11, label %for.cond.i.12, label %for.cond.i.11.cleanup96_crit_edge

for.cond.i.11.cleanup96_crit_edge:                ; preds = %for.cond.i.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.12:                                    ; preds = %for.cond.i.11
  %arrayidx.i.12 = getelementptr inbounds i8, ptr %75, i32 13
  %112 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i423.12 = icmp eq i8 %113, 0
  br i1 %tobool.not.i423.12, label %for.cond.i.13, label %for.cond.i.12.cleanup96_crit_edge

for.cond.i.12.cleanup96_crit_edge:                ; preds = %for.cond.i.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.13:                                    ; preds = %for.cond.i.12
  %arrayidx.i.13 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 7
  %114 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i423.13 = icmp eq i8 %115, 0
  br i1 %tobool.not.i423.13, label %for.cond.i.14, label %for.cond.i.13.cleanup96_crit_edge

for.cond.i.13.cleanup96_crit_edge:                ; preds = %for.cond.i.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.14:                                    ; preds = %for.cond.i.13
  %arrayidx.i.14 = getelementptr inbounds i8, ptr %75, i32 15
  %116 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i423.14 = icmp eq i8 %117, 0
  br i1 %tobool.not.i423.14, label %for.cond.i.15, label %for.cond.i.14.cleanup96_crit_edge

for.cond.i.14.cleanup96_crit_edge:                ; preds = %for.cond.i.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.15:                                    ; preds = %for.cond.i.14
  %arrayidx.i.15 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 8
  %118 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i423.15 = icmp eq i8 %119, 0
  br i1 %tobool.not.i423.15, label %for.cond.i.16, label %for.cond.i.15.cleanup96_crit_edge

for.cond.i.15.cleanup96_crit_edge:                ; preds = %for.cond.i.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.16:                                    ; preds = %for.cond.i.15
  %arrayidx.i.16 = getelementptr inbounds i8, ptr %75, i32 17
  %120 = ptrtoint ptr %arrayidx.i.16 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i423.16 = icmp eq i8 %121, 0
  br i1 %tobool.not.i423.16, label %for.cond.i.17, label %for.cond.i.16.cleanup96_crit_edge

for.cond.i.16.cleanup96_crit_edge:                ; preds = %for.cond.i.16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.17:                                    ; preds = %for.cond.i.16
  %arrayidx.i.17 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 9
  %122 = ptrtoint ptr %arrayidx.i.17 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i.17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i423.17 = icmp eq i8 %123, 0
  br i1 %tobool.not.i423.17, label %for.cond.i.18, label %for.cond.i.17.cleanup96_crit_edge

for.cond.i.17.cleanup96_crit_edge:                ; preds = %for.cond.i.17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.18:                                    ; preds = %for.cond.i.17
  %arrayidx.i.18 = getelementptr inbounds i8, ptr %75, i32 19
  %124 = ptrtoint ptr %arrayidx.i.18 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i423.18 = icmp eq i8 %125, 0
  br i1 %tobool.not.i423.18, label %for.cond.i.19, label %for.cond.i.18.cleanup96_crit_edge

for.cond.i.18.cleanup96_crit_edge:                ; preds = %for.cond.i.18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.19:                                    ; preds = %for.cond.i.18
  %arrayidx.i.19 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 10
  %126 = ptrtoint ptr %arrayidx.i.19 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i.19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i423.19 = icmp eq i8 %127, 0
  br i1 %tobool.not.i423.19, label %for.cond.i.20, label %for.cond.i.19.cleanup96_crit_edge

for.cond.i.19.cleanup96_crit_edge:                ; preds = %for.cond.i.19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.20:                                    ; preds = %for.cond.i.19
  %arrayidx.i.20 = getelementptr inbounds i8, ptr %75, i32 21
  %128 = ptrtoint ptr %arrayidx.i.20 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i423.20 = icmp eq i8 %129, 0
  br i1 %tobool.not.i423.20, label %for.cond.i.21, label %for.cond.i.20.cleanup96_crit_edge

for.cond.i.20.cleanup96_crit_edge:                ; preds = %for.cond.i.20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.21:                                    ; preds = %for.cond.i.20
  %arrayidx.i.21 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 11
  %130 = ptrtoint ptr %arrayidx.i.21 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i423.21 = icmp eq i8 %131, 0
  br i1 %tobool.not.i423.21, label %for.cond.i.22, label %for.cond.i.21.cleanup96_crit_edge

for.cond.i.21.cleanup96_crit_edge:                ; preds = %for.cond.i.21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.22:                                    ; preds = %for.cond.i.21
  %arrayidx.i.22 = getelementptr inbounds i8, ptr %75, i32 23
  %132 = ptrtoint ptr %arrayidx.i.22 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i423.22 = icmp eq i8 %133, 0
  br i1 %tobool.not.i423.22, label %for.cond.i.23, label %for.cond.i.22.cleanup96_crit_edge

for.cond.i.22.cleanup96_crit_edge:                ; preds = %for.cond.i.22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.23:                                    ; preds = %for.cond.i.22
  %arrayidx.i.23 = getelementptr inbounds %struct.vduse_vq_config, ptr %config73, i32 0, i32 2, i32 12
  %134 = ptrtoint ptr %arrayidx.i.23 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i423.23 = icmp eq i8 %135, 0
  br i1 %tobool.not.i423.23, label %for.cond.i.24, label %for.cond.i.23.cleanup96_crit_edge

for.cond.i.23.cleanup96_crit_edge:                ; preds = %for.cond.i.23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

for.cond.i.24:                                    ; preds = %for.cond.i.23
  %arrayidx.i.24 = getelementptr inbounds i8, ptr %75, i32 25
  %136 = ptrtoint ptr %arrayidx.i.24 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i423.24 = icmp eq i8 %137, 0
  br i1 %tobool.not.i423.24, label %if.end85, label %for.cond.i.24.cleanup96_crit_edge

for.cond.i.24.cleanup96_crit_edge:                ; preds = %for.cond.i.24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup96

if.end85:                                         ; preds = %for.cond.i.24
  call void @__sanitizer_cov_trace_pc() #16
  %138 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %83, i32 %85) #14, !srcloc !134
  %and = and i32 %138, %83
  %139 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %74, align 4
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %141 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vqs, align 8
  %num_max = getelementptr %struct.vduse_virtqueue, ptr %142, i32 %and, i32 1
  %143 = ptrtoint ptr %num_max to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %140, ptr %num_max, align 2
  br label %cleanup96

cleanup96:                                        ; preds = %if.end85, %for.cond.i.24.cleanup96_crit_edge, %for.cond.i.23.cleanup96_crit_edge, %for.cond.i.22.cleanup96_crit_edge, %for.cond.i.21.cleanup96_crit_edge, %for.cond.i.20.cleanup96_crit_edge, %for.cond.i.19.cleanup96_crit_edge, %for.cond.i.18.cleanup96_crit_edge, %for.cond.i.17.cleanup96_crit_edge, %for.cond.i.16.cleanup96_crit_edge, %for.cond.i.15.cleanup96_crit_edge, %for.cond.i.14.cleanup96_crit_edge, %for.cond.i.13.cleanup96_crit_edge, %for.cond.i.12.cleanup96_crit_edge, %for.cond.i.11.cleanup96_crit_edge, %for.cond.i.10.cleanup96_crit_edge, %for.cond.i.9.cleanup96_crit_edge, %for.cond.i.8.cleanup96_crit_edge, %for.cond.i.7.cleanup96_crit_edge, %for.cond.i.6.cleanup96_crit_edge, %for.cond.i.5.cleanup96_crit_edge, %for.cond.i.4.cleanup96_crit_edge, %for.cond.i.3.cleanup96_crit_edge, %for.cond.i.2.cleanup96_crit_edge, %for.cond.i.1.cleanup96_crit_edge, %for.cond.i.preheader.cleanup96_crit_edge, %for.body.i.preheader.cleanup96_crit_edge, %if.end77.cleanup96_crit_edge, %if.then11.i.i346
  %ret.2 = phi i32 [ 0, %if.end85 ], [ -22, %if.end77.cleanup96_crit_edge ], [ -14, %if.then11.i.i346 ], [ -22, %for.body.i.preheader.cleanup96_crit_edge ], [ -22, %for.cond.i.preheader.cleanup96_crit_edge ], [ -22, %for.cond.i.1.cleanup96_crit_edge ], [ -22, %for.cond.i.2.cleanup96_crit_edge ], [ -22, %for.cond.i.3.cleanup96_crit_edge ], [ -22, %for.cond.i.4.cleanup96_crit_edge ], [ -22, %for.cond.i.5.cleanup96_crit_edge ], [ -22, %for.cond.i.6.cleanup96_crit_edge ], [ -22, %for.cond.i.7.cleanup96_crit_edge ], [ -22, %for.cond.i.8.cleanup96_crit_edge ], [ -22, %for.cond.i.9.cleanup96_crit_edge ], [ -22, %for.cond.i.10.cleanup96_crit_edge ], [ -22, %for.cond.i.11.cleanup96_crit_edge ], [ -22, %for.cond.i.12.cleanup96_crit_edge ], [ -22, %for.cond.i.13.cleanup96_crit_edge ], [ -22, %for.cond.i.14.cleanup96_crit_edge ], [ -22, %for.cond.i.15.cleanup96_crit_edge ], [ -22, %for.cond.i.16.cleanup96_crit_edge ], [ -22, %for.cond.i.17.cleanup96_crit_edge ], [ -22, %for.cond.i.18.cleanup96_crit_edge ], [ -22, %for.cond.i.19.cleanup96_crit_edge ], [ -22, %for.cond.i.20.cleanup96_crit_edge ], [ -22, %for.cond.i.21.cleanup96_crit_edge ], [ -22, %for.cond.i.22.cleanup96_crit_edge ], [ -22, %for.cond.i.23.cleanup96_crit_edge ], [ -22, %for.cond.i.24.cleanup96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config73) #14
  br label %cleanup205

sw.bb98:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vq_info) #14
  %144 = call ptr @memset(ptr %vq_info, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i355 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i355, label %sw.bb98.if.then11.i.i372_crit_edge, label %land.lhs.true.i.i359

sw.bb98.if.then11.i.i372_crit_edge:               ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i372

land.lhs.true.i.i359:                             ; preds = %sw.bb98
  %145 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1226833920) #17
  %asmresult.i.i357 = extractvalue { i32, i32 } %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i357)
  %cmp.i6.i358 = icmp eq i32 %asmresult.i.i357, 0
  br i1 %cmp.i6.i358, label %if.end.i.i369, label %land.lhs.true.i.i359.if.then11.i.i372_crit_edge, !prof !127

land.lhs.true.i.i359.if.then11.i.i372_crit_edge:  ; preds = %land.lhs.true.i.i359
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i372

if.end.i.i369:                                    ; preds = %land.lhs.true.i.i359
  %call.i.i.i360 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %vq_info, i32 noundef 48) #14
  %146 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i361 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i.i.i.i361 to ptr
  %cpu_domain.i.i.i.i.i362 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 4
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i362) #3, !srcloc !121
  %and.i.i.i.i363 = and i32 %148, -13
  %or.i.i.i.i364 = or i32 %and.i.i.i.i363, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i364) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i365 = call i32 @arm_copy_from_user(ptr noundef nonnull %vq_info, ptr noundef %2, i32 noundef 48) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i365)
  %tobool4.not.i.i368 = icmp eq i32 %call1.i.i.i365, 0
  br i1 %tobool4.not.i.i368, label %if.end103, label %if.end.i.i369.if.then11.i.i372_crit_edge, !prof !127

if.end.i.i369.if.then11.i.i372_crit_edge:         ; preds = %if.end.i.i369
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i372

if.then11.i.i372:                                 ; preds = %if.end.i.i369.if.then11.i.i372_crit_edge, %land.lhs.true.i.i359.if.then11.i.i372_crit_edge, %sw.bb98.if.then11.i.i372_crit_edge
  %res.0.i.i367461 = phi i32 [ %call1.i.i.i365, %if.end.i.i369.if.then11.i.i372_crit_edge ], [ 48, %sw.bb98.if.then11.i.i372_crit_edge ], [ 48, %land.lhs.true.i.i359.if.then11.i.i372_crit_edge ]
  %sub.i.i370 = sub i32 48, %res.0.i.i367461
  %add.ptr.i.i371 = getelementptr i8, ptr %vq_info, i32 %sub.i.i370
  %149 = call ptr @memset(ptr %add.ptr.i.i371, i32 0, i32 %res.0.i.i367461)
  br label %cleanup157

if.end103:                                        ; preds = %if.end.i.i369
  %150 = ptrtoint ptr %vq_info to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vq_info, align 8
  %vq_num105 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 28
  %152 = ptrtoint ptr %vq_num105 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vq_num105, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp106.not = icmp ult i32 %151, %153
  br i1 %cmp106.not, label %if.end109, label %if.end103.cleanup157_crit_edge

if.end103.cleanup157_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup157

if.end109:                                        ; preds = %if.end103
  %154 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %151, i32 %153) #14, !srcloc !134
  %and123 = and i32 %154, %151
  %vqs124 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %155 = ptrtoint ptr %vqs124 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %vqs124, align 8
  %desc_addr = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 3
  %157 = ptrtoint ptr %desc_addr to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %desc_addr, align 8
  %desc_addr126 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 2
  %159 = ptrtoint ptr %desc_addr126 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %desc_addr126, align 8
  %driver_addr = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 4
  %160 = ptrtoint ptr %driver_addr to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %driver_addr, align 8
  %driver_addr127 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 3
  %162 = ptrtoint ptr %driver_addr127 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %driver_addr127, align 8
  %device_addr = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 5
  %163 = ptrtoint ptr %device_addr to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %device_addr, align 8
  %device_addr128 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 4
  %165 = ptrtoint ptr %device_addr128 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %device_addr128, align 8
  %num = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 2
  %166 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num, align 4
  %num129 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 1
  %168 = ptrtoint ptr %num129 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %num129, align 4
  %driver_features130 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %169 = ptrtoint ptr %driver_features130 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %driver_features130, align 8
  %and131 = and i64 %170, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and131)
  %tobool132.not = icmp eq i64 %and131, 0
  %state147 = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 6
  br i1 %tobool132.not, label %if.else, label %if.then133

if.then133:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %171 = ptrtoint ptr %state147 to i32
  call void @__asan_load4_noabort(i32 %171)
  %bf.load = load i32, ptr %state147, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i16
  %172 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 5
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %bf.cast, ptr %172, align 8
  %bf.load135 = load i32, ptr %state147, align 8
  %bf.lshr136 = lshr i32 %bf.load135, 16
  %174 = trunc i32 %bf.lshr136 to i16
  %bf.cast137 = and i16 %174, 32767
  %last_avail_idx = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 5, i32 0, i32 1
  %175 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %bf.cast137, ptr %last_avail_idx, align 2
  %bf.load139 = load i32, ptr %state147, align 8
  %176 = trunc i32 %bf.load139 to i16
  %177 = lshr i16 %176, 15
  %last_used_counter = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 5, i32 0, i32 2
  %178 = ptrtoint ptr %last_used_counter to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %last_used_counter, align 4
  %bf.load144 = load i32, ptr %state147, align 8
  %179 = trunc i32 %bf.load144 to i16
  %bf.cast146 = and i16 %179, 32767
  %last_used_idx = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 5, i32 0, i32 3
  %180 = ptrtoint ptr %last_used_idx to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %bf.cast146, ptr %last_used_idx, align 2
  br label %if.end8.i.i379

if.else:                                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %181 = ptrtoint ptr %state147 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %state147, align 8
  %183 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 5
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %182, ptr %183, align 8
  br label %if.end8.i.i379

if.end8.i.i379:                                   ; preds = %if.else, %if.then133
  %ready = getelementptr %struct.vduse_virtqueue, ptr %156, i32 %and123, i32 7
  %185 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ready, align 4, !range !128
  %ready152 = getelementptr inbounds %struct.vduse_vq_info, ptr %vq_info, i32 0, i32 6
  %187 = ptrtoint ptr %ready152 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %ready152, align 8
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #14
  %call.i.i381 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i381, label %if.end8.i.i379.cleanup157_crit_edge, label %copy_to_user.exit390

if.end8.i.i379.cleanup157_crit_edge:              ; preds = %if.end8.i.i379
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup157

copy_to_user.exit390:                             ; preds = %if.end8.i.i379
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i386 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vq_info, i32 noundef 48) #14
  %call.i12.i.i387 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %vq_info, i32 noundef 48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i387)
  %tobool154.not = icmp eq i32 %call.i12.i.i387, 0
  %spec.select = select i1 %tobool154.not, i32 0, i32 -14
  br label %cleanup157

cleanup157:                                       ; preds = %copy_to_user.exit390, %if.end8.i.i379.cleanup157_crit_edge, %if.end103.cleanup157_crit_edge, %if.then11.i.i372
  %ret.3 = phi i32 [ -22, %if.end103.cleanup157_crit_edge ], [ -14, %if.then11.i.i372 ], [ -14, %if.end8.i.i379.cleanup157_crit_edge ], [ %spec.select, %copy_to_user.exit390 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vq_info) #14
  br label %cleanup205

sw.bb160:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eventfd) #14
  %188 = ptrtoint ptr %eventfd to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %eventfd, align 4, !annotation !133
  %189 = getelementptr inbounds %struct.vduse_vq_eventfd, ptr %eventfd, i32 0, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %189, align 4, !annotation !133
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i397 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i397, label %sw.bb160.if.then11.i.i414_crit_edge, label %land.lhs.true.i.i401

sw.bb160.if.then11.i.i414_crit_edge:              ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i414

land.lhs.true.i.i401:                             ; preds = %sw.bb160
  %191 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i399 = extractvalue { i32, i32 } %191, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i399)
  %cmp.i6.i400 = icmp eq i32 %asmresult.i.i399, 0
  br i1 %cmp.i6.i400, label %if.end.i.i411, label %land.lhs.true.i.i401.if.then11.i.i414_crit_edge, !prof !127

land.lhs.true.i.i401.if.then11.i.i414_crit_edge:  ; preds = %land.lhs.true.i.i401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i414

if.end.i.i411:                                    ; preds = %land.lhs.true.i.i401
  %call.i.i.i402 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %eventfd, i32 noundef 8) #14
  %192 = call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i.i.i.i403 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i.i.i.i.i.i403 to ptr
  %cpu_domain.i.i.i.i.i404 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 4
  %194 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i404) #3, !srcloc !121
  %and.i.i.i.i405 = and i32 %194, -13
  %or.i.i.i.i406 = or i32 %and.i.i.i.i405, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i406) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %call1.i.i.i407 = call i32 @arm_copy_from_user(ptr noundef nonnull %eventfd, ptr noundef %2, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #14, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i407)
  %tobool4.not.i.i410 = icmp eq i32 %call1.i.i.i407, 0
  br i1 %tobool4.not.i.i410, label %if.end164, label %if.end.i.i411.if.then11.i.i414_crit_edge, !prof !127

if.end.i.i411.if.then11.i.i414_crit_edge:         ; preds = %if.end.i.i411
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i414

if.then11.i.i414:                                 ; preds = %if.end.i.i411.if.then11.i.i414_crit_edge, %land.lhs.true.i.i401.if.then11.i.i414_crit_edge, %sw.bb160.if.then11.i.i414_crit_edge
  %res.0.i.i409468 = phi i32 [ %call1.i.i.i407, %if.end.i.i411.if.then11.i.i414_crit_edge ], [ 8, %sw.bb160.if.then11.i.i414_crit_edge ], [ 8, %land.lhs.true.i.i401.if.then11.i.i414_crit_edge ]
  %sub.i.i412 = sub i32 8, %res.0.i.i409468
  %add.ptr.i.i413 = getelementptr i8, ptr %eventfd, i32 %sub.i.i412
  %195 = call ptr @memset(ptr %add.ptr.i.i413, i32 0, i32 %res.0.i.i409468)
  br label %cleanup166

if.end164:                                        ; preds = %if.end.i.i411
  %196 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %eventfd, align 4
  %vq_num.i = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 28
  %198 = ptrtoint ptr %vq_num.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %vq_num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp.not.i = icmp ult i32 %197, %199
  br i1 %cmp.not.i, label %if.end.i425, label %if.end164.cleanup166_crit_edge

if.end164.cleanup166_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup166

if.end.i425:                                      ; preds = %if.end164
  %200 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %197, i32 %199) #14, !srcloc !134
  %and.i424 = and i32 %200, %197
  %vqs.i = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %201 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vqs.i, align 8
  %203 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %204)
  %cmp7.i = icmp sgt i32 %204, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i425
  %call10.i = call ptr @eventfd_ctx_fdget(i32 noundef %204) #14
  %cmp.i.i426 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i426, label %if.then12.i, label %if.then8.i.if.end19.i_crit_edge

if.then8.i.if.end19.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %205 = ptrtoint ptr %call10.i to i32
  br label %cleanup166

if.else.i:                                        ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %204)
  %cmp16.not.i = icmp eq i32 %204, -1
  br i1 %cmp16.not.i, label %if.else.i.if.end19.i_crit_edge, label %if.else.i.cleanup166_crit_edge

if.else.i.cleanup166_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup166

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i.if.end19.i_crit_edge, %if.then8.i.if.end19.i_crit_edge
  %ctx.0.i = phi ptr [ %call10.i, %if.then8.i.if.end19.i_crit_edge ], [ null, %if.else.i.if.end19.i_crit_edge ]
  %kick_lock.i = getelementptr %struct.vduse_virtqueue, ptr %202, i32 %and.i424, i32 9
  call void @_raw_spin_lock(ptr noundef %kick_lock.i) #14
  %kickfd.i = getelementptr %struct.vduse_virtqueue, ptr %202, i32 %and.i424, i32 11
  %206 = ptrtoint ptr %kickfd.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %kickfd.i, align 8
  %tobool.not.i427 = icmp eq ptr %207, null
  br i1 %tobool.not.i427, label %if.end19.i.if.end22.i_crit_edge, label %if.then20.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @eventfd_ctx_put(ptr noundef nonnull %207) #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end19.i.if.end22.i_crit_edge
  %208 = ptrtoint ptr %kickfd.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %ctx.0.i, ptr %kickfd.i, align 8
  %ready.i = getelementptr %struct.vduse_virtqueue, ptr %202, i32 %and.i424, i32 7
  %209 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ready.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool24.not.i = icmp eq i8 %210, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end33.i_crit_edge, label %land.lhs.true.i

if.end22.i.if.end33.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.end22.i
  %kicked.i = getelementptr %struct.vduse_virtqueue, ptr %202, i32 %and.i424, i32 8
  %211 = ptrtoint ptr %kicked.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %kicked.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool25.not.i = icmp eq i8 %212, 0
  %tobool28.not.i = icmp eq ptr %ctx.0.i, null
  %or.cond.i = or i1 %tobool28.not.i, %tobool25.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end33.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call31.i = call i64 @eventfd_signal(ptr noundef nonnull %ctx.0.i, i64 noundef 1) #14
  %213 = ptrtoint ptr %kicked.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %kicked.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %land.lhs.true.i.if.end33.i_crit_edge, %if.end22.i.if.end33.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %kick_lock.i) #14
  br label %cleanup166

cleanup166:                                       ; preds = %if.end33.i, %if.else.i.cleanup166_crit_edge, %if.then12.i, %if.end164.cleanup166_crit_edge, %if.then11.i.i414
  %ret.4 = phi i32 [ %205, %if.then12.i ], [ 0, %if.end33.i ], [ -22, %if.end164.cleanup166_crit_edge ], [ 0, %if.else.i.cleanup166_crit_edge ], [ -14, %if.then11.i.i414 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eventfd) #14
  br label %cleanup205

sw.bb167:                                         ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1080) #14
  %214 = tail call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i.i417 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i417 to ptr
  %cpu_domain.i.i418 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 4
  %216 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i418) #3, !srcloc !121
  %and.i419 = and i32 %216, -13
  %or.i420 = or i32 %and.i419, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i420) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  %217 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #14, !srcloc !135
  %asmresult = extractvalue { i32, i32 } %217, 0
  %asmresult177 = extractvalue { i32, i32 } %217, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #14, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool179.not = icmp eq i32 %asmresult, 0
  br i1 %tobool179.not, label %if.end181, label %sw.bb167.cleanup205_crit_edge

sw.bb167.cleanup205_crit_edge:                    ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup205

if.end181:                                        ; preds = %sw.bb167
  %vq_num182 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 28
  %218 = ptrtoint ptr %vq_num182 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %vq_num182, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult177, i32 %219)
  %cmp183.not = icmp ult i32 %asmresult177, %219
  br i1 %cmp183.not, label %if.end186, label %if.end181.cleanup205_crit_edge

if.end181.cleanup205_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup205

if.end186:                                        ; preds = %if.end181
  %220 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %asmresult177, i32 %219) #14, !srcloc !134
  %vqs200 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %221 = ptrtoint ptr %vqs200 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %vqs200, align 8
  %rwsem.i428 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %rwsem.i428) #14
  %status.i429 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 27
  %223 = ptrtoint ptr %status.i429 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %status.i429, align 4
  %225 = and i8 %224, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i430 = icmp eq i8 %225, 0
  br i1 %tobool.not.i430, label %if.end186.vduse_dev_queue_irq_work.exit434_crit_edge, label %if.end.i432

if.end186.vduse_dev_queue_irq_work.exit434_crit_edge: ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_queue_irq_work.exit434

if.end.i432:                                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  %and199 = and i32 %220, %asmresult177
  %inject202 = getelementptr %struct.vduse_virtqueue, ptr %222, i32 %and199, i32 13
  %226 = load ptr, ptr @vduse_irq_wq, align 4
  %call.i.i431 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %226, ptr noundef %inject202) #14
  br label %vduse_dev_queue_irq_work.exit434

vduse_dev_queue_irq_work.exit434:                 ; preds = %if.end.i432, %if.end186.vduse_dev_queue_irq_work.exit434_crit_edge
  %ret.0.i433 = phi i32 [ 0, %if.end.i432 ], [ -22, %if.end186.vduse_dev_queue_irq_work.exit434_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i428) #14
  br label %cleanup205

cleanup205:                                       ; preds = %vduse_dev_queue_irq_work.exit434, %if.end181.cleanup205_crit_edge, %sw.bb167.cleanup205_crit_edge, %cleanup166, %cleanup157, %cleanup96, %vduse_dev_queue_irq_work.exit, %cleanup68, %sw.bb39, %cleanup, %if.end.cleanup205_crit_edge, %entry.cleanup205_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup205_crit_edge ], [ %ret.4, %cleanup166 ], [ %ret.3, %cleanup157 ], [ %ret.2, %cleanup96 ], [ %ret.0.i, %vduse_dev_queue_irq_work.exit ], [ %ret.1, %cleanup68 ], [ %48, %sw.bb39 ], [ %ret.0, %cleanup ], [ %ret.0.i433, %vduse_dev_queue_irq_work.exit434 ], [ -14, %sw.bb167.cleanup205_crit_edge ], [ -22, %if.end181.cleanup205_crit_edge ], [ -515, %if.end.cleanup205_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @vduse_lock, i32 noundef 0) #14
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @vduse_idr, i32 noundef %and.i) #14
  tail call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vduse_dev, ptr %call.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %connected = getelementptr inbounds %struct.vduse_dev, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %connected, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %connected, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  br label %unlock

unlock:                                           ; preds = %if.end4, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.unlock_crit_edge ], [ 0, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %msg_lock = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %recv_list = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, %recv_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %send_list = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_list, ptr %prev3.i.i, align 4
  store ptr %3, ptr %send_list, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %7, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev6.i.i, align 4
  %11 = ptrtoint ptr %recv_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %recv_list, ptr %recv_list, align 4
  store ptr %recv_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  %connected = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %connected, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perm_to_file_flags(i8 noundef zeroext %perm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %perm, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 831, i32 noundef 9, ptr noundef nonnull @.str.32) #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %flags.0 = phi i32 [ 0, %do.end ], [ %switch.idx.cast, %switch.lookup ]
  ret i32 %flags.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_mgmtdev_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_mgmtdev_release(ptr nocapture noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpa_dev_add(ptr nocapture noundef readnone %mdev, ptr noundef %name, ptr nocapture noundef readnone %config) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vduse_lock, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #14
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id.i, align 4
  %call5.i = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i) #14
  %cmp.not6.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not6.i, label %entry.vduse_find_dev.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vduse_find_dev.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_find_dev.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i, %entry.for.body.i_crit_edge ]
  %name1.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i, i32 0, i32 4
  %1 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i, align 8
  %call2.i = call i32 @strcmp(ptr noundef %2, ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef nonnull @vduse_idr, ptr noundef nonnull %id.i) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.inc.i.vduse_find_dev.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.vduse_find_dev.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_find_dev.exit.thread

vduse_find_dev.exit.thread:                       ; preds = %for.inc.i.vduse_find_dev.exit.thread_crit_edge, %entry.vduse_find_dev.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #14
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #14
  %vq_num.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i, i32 0, i32 28
  %5 = ptrtoint ptr %vq_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vq_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not.i = icmp eq i32 %6, 0
  br i1 %cmp4.not.i, label %lor.lhs.false.if.end_crit_edge, label %for.body.lr.ph.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %vqs.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vqs.i, align 8
  %num_max.i36 = getelementptr %struct.vduse_virtqueue, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %num_max.i36 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_max.i36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i2337 = icmp eq i16 %10, 0
  br i1 %tobool.not.i2337, label %for.body.lr.ph.i.if.then_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.then_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.i:                                       ; preds = %for.body.i24.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.05.i38 = phi i32 [ %inc.i, %for.body.i24.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.05.i38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.vduse_dev_is_ready.exit_crit_edge, label %for.body.i24

for.cond.i.vduse_dev_is_ready.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_is_ready.exit

for.body.i24:                                     ; preds = %for.cond.i
  %num_max.i = getelementptr %struct.vduse_virtqueue, ptr %8, i32 %inc.i, i32 1
  %11 = ptrtoint ptr %num_max.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_max.i, align 2
  %tobool.not.i23 = icmp eq i16 %12, 0
  br i1 %tobool.not.i23, label %for.body.i24.vduse_dev_is_ready.exit_crit_edge, label %for.body.i24.for.cond.i_crit_edge

for.body.i24.for.cond.i_crit_edge:                ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i24.vduse_dev_is_ready.exit_crit_edge:   ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_is_ready.exit

vduse_dev_is_ready.exit:                          ; preds = %for.body.i24.vduse_dev_is_ready.exit_crit_edge, %for.cond.i.vduse_dev_is_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %cmp.i.le = icmp ult i32 %inc.i, %6
  br i1 %cmp.i.le, label %vduse_dev_is_ready.exit.if.then_crit_edge, label %vduse_dev_is_ready.exit.if.end_crit_edge

vduse_dev_is_ready.exit.if.end_crit_edge:         ; preds = %vduse_dev_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

vduse_dev_is_ready.exit.if.then_crit_edge:        ; preds = %vduse_dev_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %vduse_dev_is_ready.exit.if.then_crit_edge, %for.body.lr.ph.i.if.then_crit_edge, %vduse_find_dev.exit.thread
  call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  br label %cleanup

if.end:                                           ; preds = %vduse_dev_is_ready.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i, align 8
  %tobool.not.i25 = icmp eq ptr %14, null
  br i1 %tobool.not.i25, label %if.end.i, label %if.end.vduse_dev_init_vdpa.exit.thread_crit_edge

if.end.vduse_dev_init_vdpa.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_init_vdpa.exit.thread

if.end.i:                                         ; preds = %if.end
  %dev2.i = getelementptr inbounds %struct.vduse_dev, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2.i, align 4
  %call.i26 = call ptr @__vdpa_alloc_device(ptr noundef %16, ptr noundef nonnull @vduse_vdpa_config_ops, i32 noundef 1056, ptr noundef %name, i1 noundef zeroext true) #14
  %cmp.i.i = icmp ugt ptr %call.i26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vduse_dev_init_vdpa.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i26, ptr %call7.i, align 8
  %dev8.i = getelementptr inbounds %struct.vduse_vdpa, ptr %call.i26, i32 0, i32 1
  %18 = ptrtoint ptr %dev8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %dev8.i, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %call.i26, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %call.i26, i32 0, i32 18
  %19 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = call i32 @dma_set_mask(ptr noundef %call.i26, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i42.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i42.i, label %vduse_dev_init_vdpa.exit.thread32, label %if.then16.i

if.then16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @put_device(ptr noundef %call.i26) #14
  br label %vduse_dev_init_vdpa.exit.thread

vduse_dev_init_vdpa.exit.thread32:                ; preds = %if.end6.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %call.i26, i64 noundef -1) #14
  %dma_ops1.i.i = getelementptr inbounds %struct.device, ptr %call.i26, i32 0, i32 17
  %20 = ptrtoint ptr %dma_ops1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vduse_dev_dma_ops, ptr %dma_ops1.i.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.vdpa_device, ptr %call.i26, i32 0, i32 1
  %21 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i26, ptr %dma_dev.i, align 8
  %mdev.i = getelementptr inbounds %struct.vdpa_device, ptr %call.i26, i32 0, i32 9
  %22 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mgmt_dev, ptr %mdev.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i, align 8
  %25 = ptrtoint ptr %vq_num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vq_num.i, align 8
  %call6 = call i32 @_vdpa_register_device(ptr noundef %24, i32 noundef %26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %vduse_dev_init_vdpa.exit.thread32.cleanup_crit_edge, label %if.then8

vduse_dev_init_vdpa.exit.thread32.cleanup_crit_edge: ; preds = %vduse_dev_init_vdpa.exit.thread32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

vduse_dev_init_vdpa.exit.thread:                  ; preds = %if.then16.i, %if.end.vduse_dev_init_vdpa.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -17, %if.end.vduse_dev_init_vdpa.exit.thread_crit_edge ], [ %call.i.i, %if.then16.i ]
  call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  br label %cleanup

vduse_dev_init_vdpa.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call.i26 to i32
  call void @mutex_unlock(ptr noundef nonnull @vduse_lock) #14
  br label %cleanup

if.then8:                                         ; preds = %vduse_dev_init_vdpa.exit.thread32
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i, align 8
  call void @put_device(ptr noundef %29) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %vduse_dev_init_vdpa.exit, %vduse_dev_init_vdpa.exit.thread, %vduse_dev_init_vdpa.exit.thread32.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ -22, %if.then ], [ %27, %vduse_dev_init_vdpa.exit ], [ 0, %vduse_dev_init_vdpa.exit.thread32.cleanup_crit_edge ], [ %retval.0.i.ph, %vduse_dev_init_vdpa.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpa_dev_del(ptr nocapture noundef readnone %mdev, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_vdpa_unregister_device(ptr noundef %dev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vdpa_alloc_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_set_vq_address(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %desc_addr = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 3
  %4 = ptrtoint ptr %desc_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %desc_area, ptr %desc_addr, align 8
  %driver_addr = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 4
  %5 = ptrtoint ptr %driver_addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %driver_area, ptr %driver_addr, align 8
  %device_addr = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 5
  %6 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %device_area, ptr %device_addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_vdpa_set_vq_num(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, i32 noundef %num) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %num1 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %num1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num, ptr %num1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vdpa_kick_vq(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !111) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %in_eventfd_signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %in_eventfd_signal.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %in_eventfd_signal.i, align 8
  %9 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %kick = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %kick) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kick_lock.i = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 9
  tail call void @_raw_spin_lock(ptr noundef %kick_lock.i) #14
  %ready.i = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 7
  %11 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ready.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i5 = icmp eq i8 %12, 0
  br i1 %tobool.not.i5, label %if.end.vduse_vq_kick.exit_crit_edge, label %if.end.i

if.end.vduse_vq_kick.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_vq_kick.exit

if.end.i:                                         ; preds = %if.end
  %kickfd.i = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 11
  %13 = ptrtoint ptr %kickfd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kickfd.i, align 8
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i64 @eventfd_signal(ptr noundef nonnull %14, i64 noundef 1) #14
  br label %vduse_vq_kick.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %kicked.i = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 8
  %15 = ptrtoint ptr %kicked.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %kicked.i, align 1
  br label %vduse_vq_kick.exit

vduse_vq_kick.exit:                               ; preds = %if.else.i, %if.then2.i, %if.end.vduse_vq_kick.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %kick_lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %vduse_vq_kick.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vdpa_set_vq_cb(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %irq_lock = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 10
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #14
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %cb1 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 12
  %6 = ptrtoint ptr %cb1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %cb1, align 4
  %private = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 4
  %private4 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 12, i32 1
  %9 = ptrtoint ptr %private4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %private4, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_vdpa_set_vq_ready(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, i1 noundef zeroext %ready) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ready to i8
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %ready1 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %ready1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %ready1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vduse_vdpa_get_vq_ready(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %ready = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_set_vq_state(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef readonly %state) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %driver_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %driver_features, align 8
  %and = and i64 %5, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %state, align 2
  %bf.lshr = and i32 %bf.load, -2147483648
  %state1 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 6
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2 = load i32, ptr %state1, align 8
  %bf.clear = and i32 %bf.load2, 2147483647
  %bf.set = or i32 %bf.clear, %bf.lshr
  store i32 %bf.set, ptr %state1, align 8
  %bf.load3 = load i32, ptr %state, align 2
  %bf.cast6 = and i32 %bf.load3, 2147418112
  %bf.clear11 = and i32 %bf.set, -2147418113
  %bf.set12 = or i32 %bf.clear11, %bf.cast6
  store i32 %bf.set12, ptr %state1, align 8
  %bf.load14 = load i32, ptr %state, align 2
  %8 = and i32 %bf.load14, 32768
  %bf.clear22 = and i32 %bf.set12, -32769
  %bf.set23 = or i32 %bf.clear22, %8
  store i32 %bf.set23, ptr %state1, align 8
  %bf.load25 = load i32, ptr %state, align 2
  %bf.cast27 = and i32 %bf.load25, 32767
  %bf.clear31 = and i32 %bf.set23, -32768
  %bf.set32 = or i32 %bf.clear31, %bf.cast27
  store i32 %bf.set32, ptr %state1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 2
  %state34 = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom, i32 6
  %11 = ptrtoint ptr %state34 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %state34, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_vdpa_get_vq_state(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  %msg.i9 = alloca %struct.vduse_dev_msg, align 8
  %msg.i = alloca %struct.vduse_dev_msg, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.vduse_virtqueue, ptr %3, i32 %idxprom
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %driver_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %driver_features, align 8
  %and = and i64 %5, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %msg.i) #14
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 368)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 8
  %conv.i = zext i16 %8 to i32
  %9 = getelementptr inbounds %struct.vduse_dev_request, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %9, align 8
  %call.i = call fastcc i32 @vduse_dev_msg_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.vduse_dev_get_vq_state_packed.exit_crit_edge

if.then.vduse_dev_get_vq_state_packed.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_get_vq_state_packed.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg.i, i32 0, i32 1, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %bf.value.i = zext i16 %13 to i32
  %bf.shl.i = shl i32 %bf.value.i, 31
  %last_avail_idx.i = getelementptr inbounds %struct.vduse_vq_state_packed, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_avail_idx.i, align 2
  %16 = and i16 %15, 32767
  %bf.value10.i = zext i16 %16 to i32
  %bf.shl11.i = shl nuw nsw i32 %bf.value10.i, 16
  %bf.set13.i = or i32 %bf.shl11.i, %bf.shl.i
  %last_used_counter.i = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg.i, i32 0, i32 1, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %last_used_counter.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %last_used_counter.i, align 8
  %19 = shl i16 %18, 15
  %bf.shl21.i = zext i16 %19 to i32
  %bf.set23.i = or i32 %bf.set13.i, %bf.shl21.i
  %last_used_idx.i = getelementptr inbounds %struct.vduse_vq_state_packed, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_used_idx.i, align 2
  %22 = and i16 %21, 32767
  %bf.value30.i = zext i16 %22 to i32
  %bf.set32.i = or i32 %bf.set23.i, %bf.value30.i
  %23 = ptrtoint ptr %state to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %bf.set32.i, ptr %state, align 2
  br label %vduse_dev_get_vq_state_packed.exit

vduse_dev_get_vq_state_packed.exit:               ; preds = %if.end.i, %if.then.vduse_dev_get_vq_state_packed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %msg.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %msg.i9) #14
  %24 = call ptr @memset(ptr %msg.i9, i32 0, i32 368)
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 8
  %conv.i10 = zext i16 %26 to i32
  %27 = getelementptr inbounds %struct.vduse_dev_request, ptr %msg.i9, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i10, ptr %27, align 8
  %call.i11 = call fastcc i32 @vduse_dev_msg_sync(ptr noundef %1, ptr noundef nonnull %msg.i9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i13, label %if.end.vduse_dev_get_vq_state_split.exit_crit_edge

if.end.vduse_dev_get_vq_state_split.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_dev_get_vq_state_split.exit

if.end.i13:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %29 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg.i9, i32 0, i32 1, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %state, align 2
  br label %vduse_dev_get_vq_state_split.exit

vduse_dev_get_vq_state_split.exit:                ; preds = %if.end.i13, %if.end.vduse_dev_get_vq_state_split.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %msg.i9) #14
  br label %cleanup

cleanup:                                          ; preds = %vduse_dev_get_vq_state_split.exit, %vduse_dev_get_vq_state_packed.exit
  %retval.0 = phi i32 [ %call.i, %vduse_dev_get_vq_state_packed.exit ], [ %call.i11, %vduse_dev_get_vq_state_split.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_get_vq_align(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vq_align = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %vq_align to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq_align, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vduse_vdpa_get_device_features(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %device_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %device_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %device_features, align 8
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_set_driver_features(ptr nocapture noundef readonly %vdpa, i64 noundef %features) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %driver_features to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %features, ptr %driver_features, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vduse_vdpa_get_driver_features(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %driver_features = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %driver_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %driver_features, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vdpa_set_config_cb(ptr nocapture noundef readonly %vdpa, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %irq_lock = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #14
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 4
  %config_cb = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %config_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %config_cb, align 8
  %private = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %private3 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %private3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %private3, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vduse_vdpa_get_vq_num_max(ptr nocapture noundef readonly %vdpa) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vq_num = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vq_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vqs = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vqs, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %num_max.015 = phi i16 [ 0, %for.body.lr.ph ], [ %8, %for.body.for.body_crit_edge ]
  %num_max1 = getelementptr %struct.vduse_virtqueue, ptr %5, i32 %i.016, i32 1
  %6 = ptrtoint ptr %num_max1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_max1, align 2
  %8 = tail call i16 @llvm.umax.i16(i16 %num_max.015, i16 %7)
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_max.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  ret i16 %num_max.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_get_device_id(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %device_id = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_get_vendor_id(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %vendor_id = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_id, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @vduse_vdpa_get_status(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %status = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_vdpa_set_status(ptr nocapture noundef readonly %vdpa, i8 noundef zeroext %status) #0 align 64 {
entry:
  %msg.i = alloca %struct.vduse_dev_msg, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %msg.i) #14
  %2 = call ptr @memset(ptr %msg.i, i32 0, i32 368)
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %msg.i, align 8
  %4 = getelementptr inbounds %struct.vduse_dev_request, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %status, ptr %4, align 8
  %call.i = call fastcc i32 @vduse_dev_msg_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %msg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %status2 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %status, ptr %status2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_vdpa_reset(ptr nocapture noundef readonly %vdpa) #0 align 64 {
entry:
  %msg.i = alloca %struct.vduse_dev_msg, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %msg.i) #14
  %2 = call ptr @memset(ptr %msg.i, i32 0, i32 368)
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %msg.i, align 8
  %call.i = call fastcc i32 @vduse_dev_msg_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %msg.i) #14
  call fastcc void @vduse_dev_reset(ptr noundef %1)
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_get_config_size(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %config_size = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_size, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_vdpa_get_config(ptr nocapture noundef readonly %vdpa, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %config_size = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp = icmp ult i32 %3, %offset
  %sub = sub i32 %3, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp2 = icmp ult i32 %sub, %len
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %config = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %offset
  %6 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_vdpa_set_config(ptr nocapture noundef %vdpa, i32 noundef %offset, ptr nocapture noundef %buf, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_vdpa_get_generation(ptr nocapture noundef readonly %vdpa) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %generation = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generation, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_vdpa_set_map(ptr nocapture noundef readonly %vdpa, ptr noundef %iotlb) #0 align 64 {
entry:
  %msg.i = alloca %struct.vduse_dev_msg, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %domain = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %call1 = tail call i32 @vduse_domain_set_map(ptr noundef %3, ptr noundef %iotlb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %msg.i) #14
  %4 = call ptr @memset(ptr %msg.i, i32 0, i32 368)
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %msg.i, align 8
  %last4.i = getelementptr inbounds %struct.vduse_dev_request, ptr %msg.i, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %last4.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %last4.i, align 8
  %call.i = call fastcc i32 @vduse_dev_msg_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #14
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %msg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  call void @vduse_domain_clear_map(ptr noundef %8, ptr noundef %iotlb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then4 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vduse_vdpa_free(ptr nocapture noundef readonly %vdpa) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.vduse_vdpa, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vduse_dev_msg_sync(ptr noundef %dev, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry82 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %broken = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %broken, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup117_crit_edge, !prof !127

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup117

do.body:                                          ; preds = %entry
  %waitq = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.33, ptr noundef nonnull @vduse_dev_msg_sync.__key) #14
  %msg_lock = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %2 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %broken, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end13, label %if.then11, !prof !127

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  br label %cleanup117

if.end13:                                         ; preds = %do.body
  %msg_unique = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %msg_unique to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %msg_unique, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %msg_unique, align 8
  %conv = trunc i64 %5 to i32
  %request_id = getelementptr inbounds %struct.vduse_dev_request, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %request_id, align 4
  %send_list = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 10
  %list.i = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %8, ptr noundef %send_list) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.vduse_enqueue_msg.exit_crit_edge

if.end13.vduse_enqueue_msg.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %vduse_enqueue_msg.exit

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %send_list, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list.i, ptr %8, align 4
  br label %vduse_enqueue_msg.exit

vduse_enqueue_msg.exit:                           ; preds = %if.end.i.i.i, %if.end13.vduse_enqueue_msg.exit_crit_edge
  %waitq14 = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %waitq14, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  tail call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  %msg_timeout = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %msg_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %vduse_enqueue_msg.exit
  %mul = mul i32 %14, 100
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 210) #14
  %completed = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 4
  %15 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %completed, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool25.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool28.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool28.not, i32 1, i32 %mul
  %__ret.0 = select i1 %tobool25.not, i32 %mul, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool33.not = icmp eq i32 %__ret.0, 0
  %not.tobool25.not = xor i1 %tobool25.not, true
  %17 = select i1 %not.tobool25.not, i1 true, i1 %tobool33.not
  br i1 %17, label %if.then17.if.end104_crit_edge, label %if.then37

if.then17.if.end104_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.then37:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %19 = ptrtoint ptr %msg_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_timeout, align 8
  %mul40 = mul i32 %20, 100
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call179 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #14
  %21 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %completed, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool44.not180 = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40)
  %tobool49.not181 = icmp eq i32 %mul40, 0
  %spec.store.select118182 = select i1 %tobool49.not181, i32 1, i32 %mul40
  %__ret38.1183 = select i1 %tobool44.not180, i32 %mul40, i32 %spec.store.select118182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1183)
  %tobool56.not184 = icmp eq i32 %__ret38.1183, 0
  %not.tobool44.not185 = xor i1 %tobool44.not180, true
  %23 = select i1 %not.tobool44.not185, i1 true, i1 %tobool56.not184
  br i1 %23, label %if.then37.for.end_crit_edge, label %if.then37.if.end63_crit_edge

if.then37.if.end63_crit_edge:                     ; preds = %if.then37
  br label %if.end63

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end63:                                         ; preds = %cleanup.if.end63_crit_edge, %if.then37.if.end63_crit_edge
  %__ret38.1187 = phi i32 [ %__ret38.1, %cleanup.if.end63_crit_edge ], [ %__ret38.1183, %if.then37.if.end63_crit_edge ]
  %call186 = phi i32 [ %call, %cleanup.if.end63_crit_edge ], [ %call179, %if.then37.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool64.not = icmp eq i32 %call186, 0
  br i1 %tobool64.not, label %cleanup, label %if.end63.__out_crit_edge

if.end63.__out_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end63
  %call67 = call i32 @schedule_timeout(i32 noundef %__ret38.1187) #14
  %call = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #14
  %24 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %completed, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool49.not = icmp eq i32 %call67, 0
  %spec.store.select118 = select i1 %tobool49.not, i32 1, i32 %call67
  %__ret38.1 = select i1 %tobool44.not, i32 %call67, i32 %spec.store.select118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool56.not = icmp eq i32 %__ret38.1, 0
  %not.tobool44.not = xor i1 %tobool44.not, true
  %26 = select i1 %not.tobool44.not, i1 true, i1 %tobool56.not
  br i1 %26, label %cleanup.for.end_crit_edge, label %cleanup.if.end63_crit_edge

cleanup.if.end63_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then37.for.end_crit_edge
  %__ret38.1.lcssa = phi i32 [ %__ret38.1183, %if.then37.for.end_crit_edge ], [ %__ret38.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end63.__out_crit_edge
  %__ret38.2164 = phi i32 [ %__ret38.1.lcssa, %for.end ], [ %call186, %if.end63.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end104

if.else:                                          ; preds = %vduse_enqueue_msg.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 212) #14
  %completed79 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 4
  %27 = ptrtoint ptr %completed79 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %completed79, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool80.not = icmp eq i8 %28, 0
  br i1 %tobool80.not, label %if.then81, label %if.else.if.end104_crit_edge

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.then81:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry82) #14
  %29 = call ptr @memset(ptr %__wq_entry82, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry82, i32 noundef 0) #14
  %call87188 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry82, i32 noundef 258) #14
  %30 = ptrtoint ptr %completed79 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %completed79, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool89.not189 = icmp eq i8 %31, 0
  br i1 %tobool89.not189, label %if.then81.if.end91_crit_edge, label %if.then81.for.end98_crit_edge

if.then81.for.end98_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end98

if.then81.if.end91_crit_edge:                     ; preds = %if.then81
  br label %if.end91

if.end91:                                         ; preds = %cleanup95.if.end91_crit_edge, %if.then81.if.end91_crit_edge
  %call87190 = phi i32 [ %call87, %cleanup95.if.end91_crit_edge ], [ %call87188, %if.then81.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87190)
  %tobool92.not = icmp eq i32 %call87190, 0
  br i1 %tobool92.not, label %cleanup95, label %if.end91.__out100_crit_edge

if.end91.__out100_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out100

cleanup95:                                        ; preds = %if.end91
  call void @schedule() #14
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry82, i32 noundef 258) #14
  %32 = ptrtoint ptr %completed79 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %completed79, align 4, !range !128
  %tobool89.not = icmp eq i8 %33, 0
  br i1 %tobool89.not, label %cleanup95.if.end91_crit_edge, label %cleanup95.for.end98_crit_edge

cleanup95.for.end98_crit_edge:                    ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end98

cleanup95.if.end91_crit_edge:                     ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

for.end98:                                        ; preds = %cleanup95.for.end98_crit_edge, %if.then81.for.end98_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry82) #14
  br label %__out100

__out100:                                         ; preds = %for.end98, %if.end91.__out100_crit_edge
  %__ret83.1171 = phi i32 [ 0, %for.end98 ], [ %call87190, %if.end91.__out100_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry82) #14
  br label %if.end104

if.end104:                                        ; preds = %__out100, %if.else.if.end104_crit_edge, %__out, %if.then17.if.end104_crit_edge
  %ret.0 = phi i32 [ %__ret.0, %if.then17.if.end104_crit_edge ], [ %__ret38.2164, %__out ], [ 0, %if.else.if.end104_crit_edge ], [ %__ret83.1171, %__out100 ]
  call void @_raw_spin_lock(ptr noundef %msg_lock) #14
  %completed106 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 4
  %34 = ptrtoint ptr %completed106 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %completed106, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool107.not = icmp eq i8 %35, 0
  br i1 %tobool107.not, label %if.then108, label %if.end104.if.end112_crit_edge

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then108:                                       ; preds = %if.end104
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then108.list_del.exit_crit_edge

if.then108.list_del.exit_crit_edge:               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i157 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i.i157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i157, align 4
  %38 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then108.list_del.exit_crit_edge
  %42 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %result = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool109.not = icmp eq i32 %ret.0, 0
  br i1 %tobool109.not, label %if.then110, label %list_del.exit.if.end112_crit_edge

list_del.exit.if.end112_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then110:                                       ; preds = %list_del.exit
  %45 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %broken, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then110.if.end112_crit_edge, !prof !127

if.then110.if.end112_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.end.i:                                         ; preds = %if.then110
  %recv_list.i = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 11
  %47 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %recv_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %recv_list.i
  br i1 %cmp.i.not.i.i, label %if.end.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.end.i.list_splice_init.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %send_list, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.vduse_dev, ptr %dev, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i158 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %send_list, ptr %prev3.i.i.i158, align 4
  store ptr %48, ptr %send_list, align 4
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %50, ptr %52, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev6.i.i.i, align 4
  %56 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %recv_list.i, ptr %recv_list.i, align 4
  store ptr %recv_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.end.i.list_splice_init.exit.i_crit_edge
  %57 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %send_list, align 8
  %cmp.not35.i = icmp eq ptr %58, %send_list
  br i1 %cmp.not35.i, label %list_splice_init.exit.i.for.end.i_crit_edge, label %list_splice_init.exit.i.for.body.i_crit_edge

list_splice_init.exit.i.for.body.i_crit_edge:     ; preds = %list_splice_init.exit.i
  br label %for.body.i

list_splice_init.exit.i.for.end.i_crit_edge:      ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %list_splice_init.exit.i.for.body.i_crit_edge
  %.pn.in36.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %58, %list_splice_init.exit.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load ptr, ptr %.pn.in36.i, align 8
  %call.i.i.i159 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36.i) #14
  br i1 %call.i.i.i159, label %if.end.i.i.i160, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i160:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %.pn.in36.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i160, %for.body.i.list_del.exit.i_crit_edge
  %66 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36.i, align 4
  %prev.i.i161 = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i161 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i161, align 4
  %completed.i = getelementptr i8, ptr %.pn.in36.i, i32 60
  %68 = ptrtoint ptr %completed.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %completed.i, align 4
  %result.i = getelementptr i8, ptr %.pn.in36.i, i32 -148
  %69 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %result.i, align 4
  %waitq.i = getelementptr i8, ptr %.pn.in36.i, i32 8
  call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %send_list
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %list_splice_init.exit.i.for.end.i_crit_edge
  %70 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %broken, align 4
  call void @__wake_up(ptr noundef %waitq14, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end112

if.end112:                                        ; preds = %for.end.i, %if.then110.if.end112_crit_edge, %list_del.exit.if.end112_crit_edge, %if.end104.if.end112_crit_edge
  %result114 = getelementptr inbounds %struct.vduse_dev_msg, ptr %msg, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %result114 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %result114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp = icmp eq i32 %72, 0
  %cond = select i1 %cmp, i32 0, i32 -5
  call void @_raw_spin_unlock(ptr noundef %msg_lock) #14
  br label %cleanup117

cleanup117:                                       ; preds = %if.end112, %if.then11, %entry.cleanup117_crit_edge
  %retval.0 = phi i32 [ -5, %if.then11 ], [ %cond, %if.end112 ], [ -5, %entry.cleanup117_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vduse_domain_set_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_clear_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vduse_dev_alloc_coherent(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_addr, i32 noundef %flag, i32 noundef %attrs) #0 align 64 {
entry:
  %iova = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.vduse_vdpa, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 8
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova) #14
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %iova, align 4, !annotation !133
  %5 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dma_addr, align 4
  %call2 = call ptr @vduse_domain_alloc_coherent(ptr noundef %3, i32 noundef %size, ptr noundef nonnull %iova, i32 noundef %flag, i32 noundef %attrs) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iova, align 4
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova) #14
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_dev_free_coherent(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma_addr, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.vduse_vdpa, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 8
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 4
  tail call void @vduse_domain_free_coherent(ptr noundef %3, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma_addr, i32 noundef %attrs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_dev_map_page(ptr nocapture noundef readonly %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.vduse_vdpa, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 8
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 4
  %call2 = tail call i32 @vduse_domain_map_page(ptr noundef %3, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vduse_dev_unmap_page(ptr nocapture noundef readonly %dev, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.vduse_vdpa, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 8
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 4
  tail call void @vduse_domain_unmap_page(ptr noundef %3, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_dev_max_mapping_size(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.vduse_vdpa, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 8
  %domain1 = getelementptr inbounds %struct.vduse_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 4
  %bounce_size = getelementptr inbounds %struct.vduse_iova_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bounce_size, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vduse_domain_alloc_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vduse_domain_map_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vduse_domain_unmap_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_vdpa_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_mgmtdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_vduse__369_1657_vduse_init6, !1, !"__initcall__kmod_vduse__369_1657_vduse_init6", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1657, i32 1}
!2 = !{ptr @__exitcall_vduse_exit, !3, !"__exitcall_vduse_exit", i1 false, i1 false}
!3 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1670, i32 1}
!4 = !{ptr @__UNIQUE_ID_file370, !5, !"__UNIQUE_ID_file370", i1 false, i1 false}
!5 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1672, i32 1}
!6 = !{ptr @__UNIQUE_ID_license371, !5, !"__UNIQUE_ID_license371", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author372, !8, !"__UNIQUE_ID_author372", i1 false, i1 false}
!8 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1673, i32 1}
!9 = !{ptr @__UNIQUE_ID_description373, !10, !"__UNIQUE_ID_description373", i1 false, i1 false}
!10 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1674, i32 1}
!11 = !{ptr @vduse_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1593, i32 16}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1611, i32 60}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1625, i32 33}
!18 = !{ptr @vduse_class, !19, !"vduse_class", i1 false, i1 false}
!19 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 116, i32 22}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1475, i32 31}
!22 = !{ptr @vduse_dev_groups, !23, !"vduse_dev_groups", i1 false, i1 false}
!23 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1295, i32 1}
!24 = !{ptr @vduse_dev_group, !23, !"vduse_dev_group", i1 false, i1 false}
!25 = !{ptr @vduse_dev_attrs, !26, !"vduse_dev_attrs", i1 false, i1 false}
!26 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1290, i32 26}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1288, i32 8}
!29 = !{ptr @dev_attr_msg_timeout, !28, !"dev_attr_msg_timeout", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1271, i32 25}
!32 = !{ptr @vduse_major, !33, !"vduse_major", i1 false, i1 false}
!33 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 115, i32 14}
!34 = !{ptr @vduse_ctrl_cdev, !35, !"vduse_ctrl_cdev", i1 false, i1 false}
!35 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 117, i32 20}
!36 = !{ptr @vduse_ctrl_fops, !37, !"vduse_ctrl_fops", i1 false, i1 false}
!37 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1464, i32 37}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1381, i32 9}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 112, i32 8}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vduse_lock, !41, !"vduse_lock", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!51 = distinct !{null, !52, !"allowed_device_id", i1 false, i1 false}
!52 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 121, i32 12}
!53 = !{ptr @vduse_create_dev.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1335, i32 3}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vduse_create_dev.__key.13, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1336, i32 3}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vduse_create_dev.__key.15, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1337, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vduse_create_dev.__key.17, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1338, i32 3}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1349, i32 11}
!67 = !{ptr @vduse_dev_create.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1164, i32 2}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vduse_dev_create.__key.21, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1165, i32 2}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vduse_dev_create.__key.23, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1168, i32 2}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vduse_dev_create.__key.25, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1169, i32 2}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vduse_dev_create.__key.27, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1171, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vduse_dev_create.__key.29, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1172, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 113, i32 8}
!87 = !{ptr @vduse_idr, !86, !"vduse_idr", i1 false, i1 false}
!88 = !{ptr @vduse_cdev, !89, !"vduse_cdev", i1 false, i1 false}
!89 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 118, i32 20}
!90 = !{ptr @vduse_dev_fops, !91, !"vduse_dev_fops", i1 false, i1 false}
!91 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1145, i32 37}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 831, i32 3}
!94 = !{ptr @vduse_irq_wq, !95, !"vduse_irq_wq", i1 false, i1 false}
!95 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 119, i32 33}
!96 = !{ptr @vduse_mgmtdev, !97, !"vduse_mgmtdev", i1 false, i1 false}
!97 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1482, i32 22}
!98 = !{ptr @mgmt_dev, !99, !"mgmt_dev", i1 false, i1 false}
!99 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1558, i32 29}
!100 = !{ptr @vdpa_dev_mgmtdev_ops, !101, !"vdpa_dev_mgmtdev_ops", i1 false, i1 false}
!101 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1548, i32 38}
!102 = !{ptr @vduse_vdpa_config_ops, !103, !"vduse_vdpa_config_ops", i1 false, i1 false}
!103 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 721, i32 37}
!104 = !{ptr @vduse_dev_msg_sync.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 198, i32 2}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @vduse_dev_dma_ops, !108, !"vduse_dev_dma_ops", i1 false, i1 false}
!108 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 808, i32 33}
!109 = !{ptr @id_table, !110, !"id_table", i1 false, i1 false}
!110 = !{!"../drivers/vdpa/vdpa_user/vduse_dev.c", i32 1553, i32 32}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 5801091}
!122 = !{i64 5801288}
!123 = !{i64 2153286521}
!124 = !{i64 2156418325, i64 2156418605, i64 2156418939, i64 2156419273}
!125 = !{i64 2156431327, i64 2156431607, i64 2156431941, i64 2156432275}
!126 = !{i64 2153309597, i64 2153309622}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i8 0, i8 2}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2148387759, i64 2148387785, i64 2148387814, i64 2148387848, i64 2148387879, i64 2148387902}
!131 = !{i32 0, i32 3}
!132 = !{i64 2156375860, i64 2156376140, i64 2156376474, i64 2156376808}
!133 = !{!"auto-init"}
!134 = !{i64 647769, i64 647786}
!135 = !{i64 2156396065, i64 2156396345, i64 2156396679, i64 2156397013}
