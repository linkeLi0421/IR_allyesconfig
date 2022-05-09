; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dp_aux_dev.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_aux_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_dp_aux_dev = type { i32, ptr, ptr, %struct.kref, %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.68, %union.anon.69 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }

@aux_idr_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aux_idr_mutex, i64 52), ptr getelementptr (i8, ptr @aux_idr_mutex, i64 52) }, ptr @aux_idr_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@aux_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/drm_dp_aux_dev.c\00", [63 x i8] zeroinitializer }, align 32
@drm_dp_aux_dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@drm_dev_major = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drm_dp_aux_dev: aux [%s] unregistering\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drm_dp_aux%d\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drm_dp_aux_dev: aux [%s] registered as minor %d\0A\00", [47 x i8] zeroinitializer }, align 32
@drm_dp_aux_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drm_dp_aux_dev\00", [17 x i8] zeroinitializer }, align 32
@drm_dp_aux_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @drm_dp_aux_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@auxdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @auxdev_llseek, ptr null, ptr null, ptr @auxdev_read_iter, ptr @auxdev_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auxdev_open, ptr null, ptr @auxdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aux_idr_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aux_idr_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aux_idr.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drm_dp_aux_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @drm_dp_aux_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@drm_dp_aux_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_name, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"aux_idr_mutex\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"aux_idr\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 292, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"drm_dp_aux_dev_class\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 57, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"drm_dev_major\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 58, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 299, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 314, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 321, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 333, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"drm_dp_aux_groups\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 339, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"auxdev_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 240, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 56, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 55, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"drm_dp_aux_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 126, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"drm_dp_aux_attrs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 122, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 120, i32 8 }
@___asan_gen_.74 = private constant [36 x i8] c"../drivers/gpu/drm/drm_dp_aux_dev.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 115, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 230, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 214, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @aux_idr_mutex, ptr @aux_idr, ptr @.str, ptr @drm_dp_aux_dev_class, ptr @drm_dev_major, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @drm_dp_aux_dev_init.__key, ptr @.str.4, ptr @drm_dp_aux_groups, ptr @.str.5, ptr @auxdev_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @drm_dp_aux_group, ptr @drm_dp_aux_attrs, ptr @dev_attr_name, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_idr_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_aux_dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dev_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_aux_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_aux_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_aux_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_aux_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_aux_unregister_devnode(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @aux_idr_mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id.i, align 4
  %call4.i = call ptr @idr_get_next(ptr noundef nonnull @aux_idr, ptr noundef nonnull %id.i) #8
  %cmp.not5.i = icmp eq ptr %call4.i, null
  br i1 %cmp.not5.i, label %entry.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_dp_aux_dev_get_by_aux.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %call6.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %call4.i, %entry.for.body.i_crit_edge ]
  %aux1.i = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call6.i, i32 0, i32 1
  %1 = ptrtoint ptr %aux1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aux1.i, align 4
  %cmp2.i = icmp eq ptr %2, %aux
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %add.i = add i32 %4, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef nonnull @aux_idr, ptr noundef nonnull %id.i) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.inc.i.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_dp_aux_dev_get_by_aux.exit.thread

drm_dp_aux_dev_get_by_aux.exit.thread:            ; preds = %for.inc.i.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge, %entry.drm_dp_aux_dev_get_by_aux.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @aux_idr_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  br label %cleanup28

if.end:                                           ; preds = %for.body.i
  call void @mutex_unlock(ptr noundef nonnull @aux_idr_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  %drm_dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 3
  %5 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %drm_dev, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @aux_idr_mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call6.i, align 4
  %call1 = call ptr @idr_remove(ptr noundef nonnull @aux_idr, i32 noundef %7) #8
  call void @mutex_unlock(ptr noundef nonnull @aux_idr_mutex) #8
  %usecount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call6.i, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #8
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #8, !srcloc !51
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 292) #8
  %call.i.i44 = call zeroext i1 @__kasan_check_read(ptr noundef %usecount, i32 noundef 4) #8
  %9 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end.do.end22_crit_edge, label %if.end10

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.end10:                                         ; preds = %if.end
  %call12 = call ptr @__var_waitqueue(ptr noundef %usecount) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #8
  %11 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %12 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %usecount, i32 noundef 0) #8
  %call1452 = call i32 @prepare_to_wait_event(ptr noundef %call12, ptr noundef %11, i32 noundef 2) #8
  %call.i.i4553 = call zeroext i1 @__kasan_check_read(ptr noundef %usecount, i32 noundef 4) #8
  %13 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not54 = icmp eq i32 %14, 0
  br i1 %tobool17.not54, label %if.end10.for.end_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  br label %cleanup

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  call void @schedule() #8
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %call12, ptr noundef %11, i32 noundef 2) #8
  %call.i.i45 = call zeroext i1 @__kasan_check_read(ptr noundef %usecount, i32 noundef 4) #8
  %15 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %usecount, align 4
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end10.for.end_crit_edge
  call void @finish_wait(ptr noundef %call12, ptr noundef %11) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #8
  br label %do.end22

do.end22:                                         ; preds = %for.end, %if.end.do.end22_crit_edge
  %dev = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call6.i, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %do.end22.if.end26_crit_edge, label %if.then25

do.end22.if.end26_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call6.i, align 4
  %21 = load ptr, ptr @drm_dp_aux_dev_class, align 4
  %22 = load i32, ptr @drm_dev_major, align 4
  %shl = shl i32 %22, 20
  %or = or i32 %shl, %20
  call void @device_destroy(ptr noundef %21, i32 noundef %or) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end22.if.end26_crit_edge
  %23 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %24) #8
  %refcount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call6.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup28_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.cleanup28_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup28

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @kfree(ptr noundef %call6.i) #8
  br label %cleanup28

cleanup28:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup28_crit_edge, %drm_dp_aux_dev_get_by_aux.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_register_devnode(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %aux2.i = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %aux2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aux, ptr %aux2.i, align 4
  %usecount.i = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %usecount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %usecount.i, align 8
  %refcount.i = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcount.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @aux_idr_mutex, i32 noundef 0) #8
  %call3.i = tail call i32 @idr_alloc(ptr noundef nonnull @aux_idr, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i32 noundef 256, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef nonnull @aux_idr_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %4 = inttoptr i32 %call3.i to ptr
  br label %alloc_drm_dp_aux_dev.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3.i, ptr %call7.i.i.i, align 8
  br label %alloc_drm_dp_aux_dev.exit

alloc_drm_dp_aux_dev.exit:                        ; preds = %if.end6.i, %if.then4.i
  %retval.0.i = phi ptr [ %4, %if.then4.i ], [ %call7.i.i.i, %if.end6.i ]
  %cmp.i26 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %alloc_drm_dp_aux_dev.exit.if.then_crit_edge, label %if.end

alloc_drm_dp_aux_dev.exit.if.then_crit_edge:      ; preds = %alloc_drm_dp_aux_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %alloc_drm_dp_aux_dev.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i30 = phi ptr [ %retval.0.i, %alloc_drm_dp_aux_dev.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i30 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_drm_dp_aux_dev.exit
  %7 = load ptr, ptr @drm_dp_aux_dev_class, align 4
  %dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = load i32, ptr @drm_dev_major, align 4
  %shl = shl i32 %10, 20
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i, align 4
  %or = or i32 %shl, %12
  %call4 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %7, ptr noundef %9, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %12) #8
  %dev5 = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %retval.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %dev5, align 4
  %cmp.i27 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call4 to i32
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dev5, align 4
  tail call void @drm_dp_aux_unregister_devnode(ptr noundef %aux)
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aux, align 8
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %17, i32 noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %14, %if.then8 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_dev_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @drm_dp_aux_dev_init.__key) #8
  store ptr %call, ptr @drm_dp_aux_dev_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @drm_dp_aux_groups, ptr %dev_groups, align 4
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.5, ptr noundef nonnull @auxdev_fops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %call.i, ptr @drm_dev_major, align 4
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @drm_dp_aux_dev_class, align 4
  tail call void @class_destroy(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i, %out ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_aux_dev_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @drm_dev_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.5) #8
  %1 = load ptr, ptr @drm_dp_aux_dev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call fastcc ptr @drm_dp_aux_dev_get_by_minor(i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef %5)
  %refcount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drm_dp_aux_dev_get_by_minor(i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @aux_idr_mutex, i32 noundef 0) #8
  %call = tail call ptr @idr_find(ptr noundef nonnull @aux_idr, i32 noundef %index) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %refcount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %2 = phi i32 [ %1, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !54

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %call
  br label %if.end

if.end:                                           ; preds = %kref_get_unless_zero.exit, %entry.if.end_crit_edge
  %aux_dev.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  call void @mutex_unlock(ptr noundef nonnull @aux_idr_mutex) #8
  ret ptr %aux_dev.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @auxdev_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef 1048576) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxdev_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %usecount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 0, i32 1, ptr elementtype(i32) %usecount) #8, !srcloc !58
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.cleanup35_crit_edge, label %if.end

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  %sub = sub i64 1048576, %5
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %7 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i)
  %cmp.i = icmp ult i64 %sub, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.iov_iter_truncate.exit_crit_edge

if.end.iov_iter_truncate.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = trunc i64 %sub to i32
  %9 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv3.i, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.end.iov_iter_truncate.exit_crit_edge
  %10 = phi i32 [ %8, %if.end.iov_iter_truncate.exit_crit_edge ], [ %conv3.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not74 = icmp eq i32 %10, 0
  br i1 %tobool.not74, label %iov_iter_truncate.exit.while.end_crit_edge, label %while.body.lr.ph

iov_iter_truncate.exit.while.end_crit_edge:       ; preds = %iov_iter_truncate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %iov_iter_truncate.exit
  %aux = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %28, %cleanup.while.body_crit_edge ]
  %pos.075 = phi i64 [ %5, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 16)
  %13 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %14 = call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.cleanup.thread_crit_edge, !prof !54

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %while.body
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end7:                                          ; preds = %signal_pending.exit
  %25 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux, align 4
  %conv = trunc i64 %pos.075 to i32
  %call8 = call i32 @drm_dp_dpcd_read(ptr noundef %26, i32 noundef %conv, ptr noundef nonnull %buf, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %if.end7.cleanup.thread_crit_edge, label %if.end12

if.end7.cleanup.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call8)
  %cmp1.i.i = icmp ugt i32 %call8, 16
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !60

if.then3.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 16, i32 noundef %call8) #8
  br label %copy_to_iter.exit

if.then.i.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %call8, i1 noundef zeroext true) #8
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %buf, i32 noundef %call8, ptr noundef %to) #8
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %if.then.i.i.i, %if.then3.i.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i.i.i ], [ 0, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %call8)
  %cmp15.not = icmp eq i32 %retval.0.i, %call8
  br i1 %cmp15.not, label %cleanup, label %copy_to_iter.exit.cleanup.thread_crit_edge

copy_to_iter.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_iter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_iter.exit.cleanup.thread_crit_edge, %if.end7.cleanup.thread_crit_edge, %signal_pending.exit.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %res.1.ph = phi i32 [ -14, %copy_to_iter.exit.cleanup.thread_crit_edge ], [ %call8, %if.end7.cleanup.thread_crit_edge ], [ -512, %signal_pending.exit.cleanup.thread_crit_edge ], [ -512, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  br label %while.end

cleanup:                                          ; preds = %copy_to_iter.exit
  %conv1970 = zext i32 %call8 to i64
  %add = add i64 %pos.075, %conv1970
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  %27 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count1.i, align 8
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %iov_iter_truncate.exit.while.end_crit_edge
  %pos.073 = phi i64 [ %pos.075, %cleanup.thread ], [ %5, %iov_iter_truncate.exit.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %res.2 = phi i32 [ %res.1.ph, %cleanup.thread ], [ 0, %iov_iter_truncate.exit.while.end_crit_edge ], [ %call8, %cleanup.while.end_crit_edge ]
  %29 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.073, i64 %30)
  %cmp22.not = icmp eq i64 %pos.073, %30
  %sub26 = sub i64 %pos.073, %30
  %conv27 = trunc i64 %sub26 to i32
  %res.3 = select i1 %cmp22.not, i32 %res.2, i32 %conv27
  %31 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %pos.073, ptr %ki_pos, align 8
  %call.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #8, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i60 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i60, label %if.then32, label %while.end.cleanup35_crit_edge

while.end.cleanup35_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @wake_up_var(ptr noundef %usecount) #8
  br label %cleanup35

cleanup35:                                        ; preds = %if.then32, %while.end.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ %res.3, %if.then32 ], [ %res.3, %while.end.cleanup35_crit_edge ], [ -19, %entry.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxdev_write_iter(ptr nocapture noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %usecount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 0, i32 1, ptr elementtype(i32) %usecount) #8, !srcloc !58
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  %sub = sub i64 1048576, %5
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %7 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i)
  %cmp.i58 = icmp ult i64 %sub, %conv.i
  br i1 %cmp.i58, label %if.then.i, label %if.end.iov_iter_truncate.exit_crit_edge

if.end.iov_iter_truncate.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = trunc i64 %sub to i32
  %9 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv3.i, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.end.iov_iter_truncate.exit_crit_edge
  %10 = phi i32 [ %8, %if.end.iov_iter_truncate.exit_crit_edge ], [ %conv3.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not76 = icmp eq i32 %10, 0
  br i1 %tobool.not76, label %iov_iter_truncate.exit.while.end_crit_edge, label %while.body.lr.ph

iov_iter_truncate.exit.while.end_crit_edge:       ; preds = %iov_iter_truncate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %iov_iter_truncate.exit
  %aux = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %28, %cleanup.while.body_crit_edge ]
  %pos.077 = phi i64 [ %5, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 16)
  %13 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %14 = call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.cleanup.thread_crit_edge, !prof !54

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %while.body
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool5.not, label %if.then.i.i.i.i, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then.i.i.i.i:                                  ; preds = %signal_pending.exit
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %12, i1 noundef zeroext false) #8
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %buf, i32 noundef %12, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %12)
  %cmp.i = icmp eq i32 %call3.i.i, %12
  br i1 %cmp.i, label %if.end10, label %copy_from_iter_full.exit, !prof !54

copy_from_iter_full.exit:                         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_revert(ptr noundef %from, i32 noundef %call3.i.i) #8
  br label %cleanup.thread

if.end10:                                         ; preds = %if.then.i.i.i.i
  %25 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux, align 4
  %conv = trunc i64 %pos.077 to i32
  %call12 = call i32 @drm_dp_dpcd_write(ptr noundef %26, i32 noundef %conv, ptr noundef nonnull %buf, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.end10.cleanup.thread_crit_edge, label %cleanup

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end10.cleanup.thread_crit_edge, %copy_from_iter_full.exit, %signal_pending.exit.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %res.1.ph = phi i32 [ -14, %copy_from_iter_full.exit ], [ -512, %while.body.cleanup.thread_crit_edge ], [ %call12, %if.end10.cleanup.thread_crit_edge ], [ -512, %signal_pending.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  br label %while.end

cleanup:                                          ; preds = %if.end10
  %conv1769 = zext i32 %call12 to i64
  %add = add i64 %pos.077, %conv1769
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  %27 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count1.i, align 8
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %iov_iter_truncate.exit.while.end_crit_edge
  %pos.074 = phi i64 [ %pos.077, %cleanup.thread ], [ %5, %iov_iter_truncate.exit.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %res.2 = phi i32 [ %res.1.ph, %cleanup.thread ], [ 0, %iov_iter_truncate.exit.while.end_crit_edge ], [ %call12, %cleanup.while.end_crit_edge ]
  %29 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.074, i64 %30)
  %cmp20.not = icmp eq i64 %pos.074, %30
  %sub24 = sub i64 %pos.074, %30
  %conv25 = trunc i64 %sub24 to i32
  %res.3 = select i1 %cmp20.not, i32 %res.2, i32 %conv25
  %31 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %pos.074, ptr %ki_pos, align 8
  %call.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #8, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then30, label %while.end.cleanup33_crit_edge

while.end.cleanup33_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @wake_up_var(ptr noundef %usecount) #8
  br label %cleanup33

cleanup33:                                        ; preds = %if.then30, %while.end.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ %res.3, %if.then30 ], [ %res.3, %while.end.cleanup33_crit_edge ], [ -19, %entry.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call fastcc ptr @drm_dp_aux_dev_get_by_minor(i32 noundef %and.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %refcount = getelementptr inbounds %struct.drm_dp_aux_dev, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @kfree(ptr noundef %1) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 292, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 299, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 314, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 321, i32 2}
!8 = !{ptr @drm_dp_aux_dev_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 333, i32 25}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 339, i32 27}
!13 = !{ptr @drm_dp_aux_dev_class, !14, !"drm_dp_aux_dev_class", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 57, i32 22}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 56, i32 8}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @aux_idr_mutex, !16, !"aux_idr_mutex", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 55, i32 8}
!21 = !{ptr @aux_idr, !20, !"aux_idr", i1 false, i1 false}
!22 = !{ptr @drm_dev_major, !23, !"drm_dev_major", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 58, i32 12}
!24 = !{ptr @drm_dp_aux_groups, !25, !"drm_dp_aux_groups", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 126, i32 1}
!26 = !{ptr @drm_dp_aux_group, !25, !"drm_dp_aux_group", i1 false, i1 false}
!27 = !{ptr @drm_dp_aux_attrs, !28, !"drm_dp_aux_attrs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 122, i32 26}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 120, i32 8}
!31 = !{ptr @dev_attr_name, !30, !"dev_attr_name", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 115, i32 21}
!34 = !{ptr @auxdev_fops, !35, !"auxdev_fops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/drm_dp_aux_dev.c", i32 240, i32 37}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148473235, i64 2148473261, i64 2148473290, i64 2148473324, i64 2148473355, i64 2148473378}
!52 = !{i64 2148560301}
!53 = !{i64 2148474765, i64 2148474797, i64 2148474826, i64 2148474860, i64 2148474891, i64 2148474914}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2149606271}
!56 = !{i64 956283, i64 956307, i64 956328, i64 956345, i64 956362}
!57 = !{i64 2148470189}
!58 = !{i64 956789, i64 956814, i64 956836, i64 956852, i64 956864, i64 956884, i64 956908, i64 956924, i64 956936}
!59 = !{i64 2148470377}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2148559222}
!62 = !{i64 2148473955, i64 2148473987, i64 2148474016, i64 2148474050, i64 2148474081, i64 2148474104}
!63 = !{i64 2148559451}
