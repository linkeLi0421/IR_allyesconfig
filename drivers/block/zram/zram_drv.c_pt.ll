; ModuleID = '/llk/IR_all_yes/drivers/block/zram/zram_drv.c_pt.bc'
source_filename = "../drivers/block/zram/zram_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zram = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, %struct.zram_stats, i64, [128 x i8], i8, ptr, %struct.spinlock, i8, i64, ptr, ptr, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.zram_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.zram_table_entry = type { %union.anon.82, i32, i64 }
%union.anon.82 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.zcomp_strm = type { %struct.local_lock_t, ptr, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.zs_pool_stats = type { %struct.atomic_t }

@__initcall__kmod_zram__302_2178_zram_init6 = internal global ptr @zram_init, section ".initcall6.init", align 4
@__exitcall_zram_exit = internal global ptr @zram_exit, section ".exitcall.exit", align 4
@__param_str_num_devices = internal constant [17 x i8] c"zram.num_devices\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_devices = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_num_devices = internal constant %struct.kernel_param { ptr @__param_str_num_devices, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @num_devices } }, section "__param", align 4
@__UNIQUE_ID_num_devicestype303 = internal constant [31 x i8] c"zram.parmtype=num_devices:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_devices304 = internal constant [57 x i8] c"zram.parm=num_devices:Number of pre-created zram devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [34 x i8] c"zram.file=drivers/block/zram/zram\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"zram.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [44 x i8] c"zram.author=Nitin Gupta <ngupta@vflare.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [45 x i8] c"zram.description=Compressed RAM Block Device\00", section ".modinfo", align 1
@zram_control_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.1, ptr null, ptr @zram_control_class_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zram_index_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.71, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@zram_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zram\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zram-control\00", [19 x i8] zeroinitializer }, align 32
@zram_control_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @zram_control_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@zram_control_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @zram_control_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@zram_control_class_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @class_attr_hot_add, ptr @class_attr_hot_remove, ptr null], [20 x i8] zeroinitializer }, align 32
@class_attr_hot_add = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.2, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hot_add_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@class_attr_hot_remove = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.68, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @hot_remove_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hot_add\00", [24 x i8] zeroinitializer }, align 32
@zram_index_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zram_index_mutex, i64 52), ptr getelementptr (i8, ptr @zram_index_mutex, i64 52) }, ptr @zram_index_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"zram_index_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zram_index_mutex\00", [47 x i8] zeroinitializer }, align 32
@zram_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&zram->init_lock\00", [47 x i8] zeroinitializer }, align 32
@zram_add.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&zram->wb_limit_lock\00", [43 x i8] zeroinitializer }, align 32
@zram_add.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zram_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013zram: Error allocating disk structure for device %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zram_add\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/zram/zram_drv.c\00", [34 x i8] zeroinitializer }, align 32
@zram_add._entry_ptr = internal global ptr @zram_add._entry, section ".printk_index", align 4
@zram_devops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @zram_submit_bio, ptr @zram_open, ptr null, ptr @zram_rw_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zram_slot_free_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zram%d\00", [25 x i8] zeroinitializer }, align 32
@zram_disk_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @zram_disk_group, ptr null], [24 x i8] zeroinitializer }, align 32
@zram_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.12, i32 1986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016zram: Added device: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@zram_add._entry_ptr.16 = internal global ptr @zram_add._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zram_free_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_block_bdev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__zram_bvec_read._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.12, i32 1315, ptr null, ptr null }, align 1
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013zram: Decompression failed! err=%d, page=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__zram_bvec_read\00", [47 x i8] zeroinitializer }, align 32
@__zram_bvec_read._entry_ptr = internal global ptr @__zram_bvec_read._entry, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__zram_bvec_write._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.12, i32 1384, ptr null, ptr null }, align 1
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013zram: Compression failed! err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__zram_bvec_write\00", [46 x i8] zeroinitializer }, align 32
@__zram_bvec_write._entry_ptr = internal global ptr @__zram_bvec_write._entry, section ".printk_index", align 4
@huge_class_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zram_disk_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @zram_disk_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@zram_disk_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @dev_attr_disksize, ptr @dev_attr_initstate, ptr @dev_attr_reset, ptr @dev_attr_compact, ptr @dev_attr_mem_limit, ptr @dev_attr_mem_used_max, ptr @dev_attr_idle, ptr @dev_attr_max_comp_streams, ptr @dev_attr_comp_algorithm, ptr @dev_attr_backing_dev, ptr @dev_attr_writeback, ptr @dev_attr_writeback_limit, ptr @dev_attr_writeback_limit_enable, ptr @dev_attr_io_stat, ptr @dev_attr_mm_stat, ptr @dev_attr_bd_stat, ptr @dev_attr_debug_stat, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_disksize = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disksize_show, ptr @disksize_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_initstate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @initstate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_compact = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @compact_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mem_limit_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_used_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mem_used_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idle = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @idle_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_comp_streams = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_comp_streams_show, ptr @max_comp_streams_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_comp_algorithm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @comp_algorithm_show, ptr @comp_algorithm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_backing_dev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @backing_dev_show, ptr @backing_dev_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_writeback = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @writeback_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_writeback_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @writeback_limit_show, ptr @writeback_limit_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_writeback_limit_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @writeback_limit_enable_show, ptr @writeback_limit_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_io_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @io_stat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mm_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mm_stat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bd_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bd_stat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_debug_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @debug_stat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disksize\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@disksize_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.12, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016zram: Cannot change disksize for initialized device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disksize_store\00", [17 x i8] zeroinitializer }, align 32
@disksize_store._entry_ptr = internal global ptr @disksize_store._entry, section ".printk_index", align 4
@disksize_store._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.12, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013zram: Cannot initialise %s compressing backend\0A\00", [46 x i8] zeroinitializer }, align 32
@disksize_store._entry_ptr.29 = internal global ptr @disksize_store._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initstate\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"compact\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mem_limit\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mem_used_max\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_comp_streams\00", [47 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"comp_algorithm\00", [17 x i8] zeroinitializer }, align 32
@comp_algorithm_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.12, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016zram: Can't change algorithm for initialized device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"comp_algorithm_store\00", [43 x i8] zeroinitializer }, align 32
@comp_algorithm_store._entry_ptr = internal global ptr @comp_algorithm_store._entry, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"backing_dev\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@backing_dev_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.12, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016zram: Can't setup backing device for initialized device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"backing_dev_store\00", [46 x i8] zeroinitializer }, align 32
@backing_dev_store._entry_ptr = internal global ptr @backing_dev_store._entry, section ".printk_index", align 4
@zram_wb_devops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @zram_submit_bio, ptr @zram_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zram_slot_free_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@backing_dev_store._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.12, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016zram: setup backing device %s\0A\00", [63 x i8] zeroinitializer }, align 32
@backing_dev_store._entry_ptr.48 = internal global ptr @backing_dev_store._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"huge\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"page_index=\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"writeback_limit\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writeback_limit_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_stat\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%8llu %8llu %8llu %8llu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mm_stat\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%8llu %8llu %8llu %8lu %8ld %8llu %8lu %8llu %8llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bd_stat\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%8llu %8llu %8llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_stat\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"version: %d\0A%8llu %8llu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lzo-rle\00", [24 x i8] zeroinitializer }, align 32
@zram_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_state\00", [20 x i8] zeroinitializer }, align 32
@proc_zram_block_state_op = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_block_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%12zd %12lld.%06lu %c%c%c%c\0A\00", [35 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hot_remove\00", [21 x i8] zeroinitializer }, align 32
@zram_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.12, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016zram: Removed device: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zram_remove\00", [20 x i8] zeroinitializer }, align 32
@zram_remove._entry_ptr = internal global ptr @zram_remove._entry, section ".printk_index", align 4
@zram_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zram_index_idr.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@zram_remove_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/zram:prepare\00", [45 x i8] zeroinitializer }, align 32
@zram_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.12, i32 2143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013zram: Unable to register zram-control class\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zram_init\00", [22 x i8] zeroinitializer }, align 32
@zram_init._entry_ptr = internal global ptr @zram_init._entry, section ".printk_index", align 4
@zram_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.12, i32 2151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013zram: Unable to get major number\0A\00", [60 x i8] zeroinitializer }, align 32
@zram_init._entry_ptr.77 = internal global ptr @zram_init._entry.75, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"num_devices\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 48, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"zram_control_class\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2110, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"zram_index_idr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"zram_major\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 44, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2128, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2111, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"zram_control_class_groups\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"zram_control_class_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2108, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"zram_control_class_attrs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2103, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"class_attr_hot_add\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2069, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"class_attr_hot_remove\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2070, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"zram_index_mutex\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2067, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 42, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1926, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1928, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1932, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1934, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"zram_devops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1848, i32 45 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1946, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"zram_disk_groups\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1986, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1315, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 248, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1384, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"huge_class_size\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 53, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"zram_disk_group\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1906, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"zram_disk_attrs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1881, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"dev_attr_disksize\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"dev_attr_initstate\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"dev_attr_compact\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"dev_attr_mem_limit\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"dev_attr_mem_used_max\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"dev_attr_idle\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [26 x i8] c"dev_attr_max_comp_streams\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [24 x i8] c"dev_attr_comp_algorithm\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"dev_attr_backing_dev\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"dev_attr_writeback\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"dev_attr_writeback_limit\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [32 x i8] c"dev_attr_writeback_limit_enable\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"dev_attr_io_stat\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"dev_attr_mm_stat\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"dev_attr_bd_stat\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"dev_attr_debug_stat\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1866, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 252, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1760, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1773, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1867, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 244, i32 35 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1868, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1865, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1869, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1870, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1871, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 329, i32 24 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1872, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1873, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1047, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1875, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 457, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 496, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"zram_wb_devops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1857, i32 45 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 558, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1876, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 665, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 668, i32 20 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1877, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1878, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1165, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1081, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1166, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1112, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1168, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1137, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1170, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1156, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 45, i32 41 }
@___asan_gen_.370 = private unnamed_addr constant [18 x i8] c"zram_debugfs_root\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 888, i32 23 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 975, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant [25 x i8] c"proc_zram_block_state_op\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 962, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 935, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 230, i32 6 }
@___asan_gen_.386 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 214, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 174, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2101, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2028, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 40, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2136, i32 53 }
@___asan_gen_.409 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2141, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2143, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.425 = private constant [33 x i8] c"../drivers/block/zram/zram_drv.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2151, i32 3 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_num_devices304, ptr @__UNIQUE_ID_num_devicestype303, ptr @__exitcall_zram_exit, ptr @__initcall__kmod_zram__302_2178_zram_init6, ptr @__param_num_devices, ptr @__zram_bvec_read._entry, ptr @__zram_bvec_read._entry_ptr, ptr @__zram_bvec_write._entry, ptr @__zram_bvec_write._entry_ptr, ptr @backing_dev_store._entry, ptr @backing_dev_store._entry.46, ptr @backing_dev_store._entry_ptr, ptr @backing_dev_store._entry_ptr.48, ptr @comp_algorithm_store._entry, ptr @comp_algorithm_store._entry_ptr, ptr @disksize_store._entry, ptr @disksize_store._entry.27, ptr @disksize_store._entry_ptr, ptr @disksize_store._entry_ptr.29, ptr @zram_add._entry, ptr @zram_add._entry.14, ptr @zram_add._entry_ptr, ptr @zram_add._entry_ptr.16, ptr @zram_exit, ptr @zram_init._entry, ptr @zram_init._entry.75, ptr @zram_init._entry_ptr, ptr @zram_init._entry_ptr.77, ptr @zram_remove._entry, ptr @zram_remove._entry_ptr, ptr @num_devices, ptr @zram_control_class, ptr @zram_index_idr, ptr @zram_major, ptr @.str, ptr @.str.1, ptr @zram_control_class_groups, ptr @zram_control_class_group, ptr @zram_control_class_attrs, ptr @class_attr_hot_add, ptr @class_attr_hot_remove, ptr @.str.2, ptr @zram_index_mutex, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @zram_add.__key, ptr @.str.6, ptr @zram_add.__key.7, ptr @.str.8, ptr @zram_add.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @zram_devops, ptr @.str.13, ptr @zram_disk_groups, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @huge_class_size, ptr @zram_disk_group, ptr @zram_disk_attrs, ptr @dev_attr_disksize, ptr @dev_attr_initstate, ptr @dev_attr_reset, ptr @dev_attr_compact, ptr @dev_attr_mem_limit, ptr @dev_attr_mem_used_max, ptr @dev_attr_idle, ptr @dev_attr_max_comp_streams, ptr @dev_attr_comp_algorithm, ptr @dev_attr_backing_dev, ptr @dev_attr_writeback, ptr @dev_attr_writeback_limit, ptr @dev_attr_writeback_limit_enable, ptr @dev_attr_io_stat, ptr @dev_attr_mm_stat, ptr @dev_attr_bd_stat, ptr @dev_attr_debug_stat, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @zram_wb_devops, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @zram_debugfs_root, ptr @.str.63, ptr @proc_zram_block_state_op, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @zram_init.__key, ptr @.str.73, ptr @.str.74, ptr @.str.76], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_control_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_index_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_control_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_control_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_control_class_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_hot_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_hot_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_index_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_add.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_add.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_devops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_disk_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huge_class_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_disk_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_disk_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disksize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_initstate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_compact to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_used_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_comp_streams to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_comp_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_backing_dev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_writeback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_writeback_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_writeback_limit_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_io_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mm_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bd_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_debug_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disksize_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disksize_store._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_algorithm_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backing_dev_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_wb_devops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backing_dev_store._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_zram_block_state_op to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zram_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zram_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @destroy_devices()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_devices() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @class_unregister(ptr noundef nonnull @zram_control_class) #17
  %call = tail call i32 @idr_for_each(ptr noundef nonnull @zram_index_idr, ptr noundef nonnull @zram_remove_cb, ptr noundef null) #17
  %0 = load ptr, ptr @zram_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #17
  tail call void @idr_destroy(ptr noundef nonnull @zram_index_idr) #17
  %1 = load i32, ptr @zram_major, align 4
  tail call void @unregister_blkdev(i32 noundef %1, ptr noundef nonnull @.str) #17
  tail call void @__cpuhp_remove_state(i32 noundef 67, i1 noundef zeroext false) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zram_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 67, ptr noundef nonnull @.str.72, i1 noundef zeroext false, ptr noundef nonnull @zcomp_cpu_up_prepare, ptr noundef nonnull @zcomp_cpu_dead, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @zram_control_class, ptr noundef nonnull @zram_init.__key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #20
  tail call void @__cpuhp_remove_state(i32 noundef 67, i1 noundef zeroext false) #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i25 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #17
  store ptr %call.i25, ptr @zram_debugfs_root, align 4
  %call6 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #17
  store i32 %call6, ptr @zram_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %do.end11, label %while.condthread-pre-split

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #20
  tail call void @class_unregister(ptr noundef nonnull @zram_control_class) #17
  tail call void @__cpuhp_remove_state(i32 noundef 67, i1 noundef zeroext false) #17
  br label %cleanup

while.condthread-pre-split:                       ; preds = %if.end5
  %.pr = load i32, ptr @num_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.not26 = icmp eq i32 %.pr, 0
  br i1 %cmp15.not26, label %while.condthread-pre-split.cleanup_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  br label %while.body

while.condthread-pre-split.cleanup_crit_edge:     ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.condthread-pre-split.while.body_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @zram_index_mutex, i32 noundef 0) #17
  %call16 = tail call fastcc i32 @zram_add()
  tail call void @mutex_unlock(ptr noundef nonnull @zram_index_mutex) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %out_error, label %if.end19

if.end19:                                         ; preds = %while.body
  %0 = load i32, ptr @num_devices, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @num_devices, align 4
  %cmp15.not = icmp eq i32 %dec, 0
  br i1 %cmp15.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_error:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @destroy_devices()
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end19.cleanup_crit_edge, %while.condthread-pre-split.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -16, %do.end11 ], [ %call16, %out_error ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %while.condthread-pre-split.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zram_remove_cb(i32 noundef %id, ptr noundef %ptr, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zram_remove(ptr noundef %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @zram_remove_cb.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !245

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @zram_remove_cb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2118, i32 noundef 9, ptr noundef null) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hot_add_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @zram_index_mutex, i32 noundef 0) #17
  %call = tail call fastcc i32 @zram_add()
  tail call void @mutex_unlock(ptr noundef nonnull @zram_index_mutex) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zram_add() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 472) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @idr_alloc(ptr noundef nonnull @zram_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_free_dev_crit_edge, label %if.end3

if.end.out_free_dev_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_dev

if.end3:                                          ; preds = %if.end
  %init_lock = getelementptr inbounds %struct.zram, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %init_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @zram_add.__key) #17
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %wb_limit_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @zram_add.__key.7, i16 noundef signext 3) #17
  %call8 = tail call ptr @__blk_alloc_disk(i32 noundef -1, ptr noundef nonnull @zram_add.__key.9) #17
  %disk = getelementptr inbounds %struct.zram, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %disk, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call1) #20
  br label %out_free_idr

if.end17:                                         ; preds = %if.end3
  %2 = load i32, ptr @zram_major, align 4
  %3 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call8, align 8
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %first_minor, align 4
  %7 = load ptr, ptr %disk, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %minors, align 8
  %9 = load ptr, ptr %disk, align 4
  %flags = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 4
  store i32 %or, ptr %flags, align 4
  %12 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @zram_devops, ptr %fops, align 8
  %14 = load ptr, ptr %disk, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private_data, align 8
  %16 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 3
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %call1)
  %17 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk, align 4
  tail call void @set_capacity(ptr noundef %18, i64 noundef 0) #17
  %19 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %22) #17
  %23 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disk, align 4
  %queue29 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %queue29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue29, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %26) #17
  %27 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk, align 4
  %queue31 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %queue31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue31, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %30, i32 noundef 4096) #17
  %31 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk, align 4
  %queue33 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %queue33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue33, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %34, i32 noundef 4096) #17
  %35 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %disk, align 4
  %queue35 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %queue35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue35, align 4
  tail call void @blk_queue_io_min(ptr noundef %38, i32 noundef 4096) #17
  %39 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disk, align 4
  %queue37 = getelementptr inbounds %struct.gendisk, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %queue37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue37, align 4
  tail call void @blk_queue_io_opt(ptr noundef %42, i32 noundef 4096) #17
  %43 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disk, align 4
  %queue39 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %queue39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue39, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 37, i32 18
  %47 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4096, ptr %discard_granularity, align 4
  %48 = load ptr, ptr %disk, align 4
  %queue41 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %queue41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue41, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %50, i32 noundef -1) #17
  %51 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %disk, align 4
  %queue43 = getelementptr inbounds %struct.gendisk, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %queue43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue43, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %54) #17
  %55 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disk, align 4
  %queue45 = getelementptr inbounds %struct.gendisk, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %queue45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue45, align 4
  tail call void @blk_queue_max_write_zeroes_sectors(ptr noundef %58, i32 noundef -1) #17
  %59 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %disk, align 4
  %queue47 = getelementptr inbounds %struct.gendisk, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %queue47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %queue47, align 4
  tail call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %62) #17
  %63 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disk, align 4
  %call49 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %64, ptr noundef nonnull @zram_disk_groups) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %out_cleanup_disk

if.end52:                                         ; preds = %if.end17
  %compressor = getelementptr inbounds %struct.zram, ptr %call7.i.i, i32 0, i32 8
  %call54 = tail call i32 @strlcpy(ptr noundef %compressor, ptr noundef nonnull @.str.62, i32 noundef 128) #17
  %65 = load ptr, ptr @zram_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %if.end52.zram_debugfs_register.exit_crit_edge, label %if.end.i

if.end52.zram_debugfs_register.exit_crit_edge:    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %zram_debugfs_register.exit

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %disk, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 3
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef %disk_name.i, ptr noundef nonnull %65) #17
  %debugfs_dir.i = getelementptr inbounds %struct.zram, ptr %call7.i.i, i32 0, i32 17
  %68 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %debugfs_dir.i, align 4
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @proc_zram_block_state_op) #17
  br label %zram_debugfs_register.exit

zram_debugfs_register.exit:                       ; preds = %if.end.i, %if.end52.zram_debugfs_register.exit_crit_edge
  %69 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %disk, align 4
  %disk_name60 = getelementptr inbounds %struct.gendisk, ptr %70, i32 0, i32 3
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %disk_name60) #20
  br label %cleanup

out_cleanup_disk:                                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %72) #17
  br label %out_free_idr

out_free_idr:                                     ; preds = %out_cleanup_disk, %do.end14
  %ret.0 = phi i32 [ %call49, %out_cleanup_disk ], [ -12, %do.end14 ]
  %call64 = tail call ptr @idr_remove(ptr noundef nonnull @zram_index_idr, i32 noundef %call1) #17
  br label %out_free_dev

out_free_dev:                                     ; preds = %out_free_idr, %if.end.out_free_dev_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_free_dev_crit_edge ], [ %ret.0, %out_free_idr ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free_dev, %zram_debugfs_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free_dev ], [ %call1, %zram_debugfs_register.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zram_submit_bio(ptr noundef %bio) #1 align 64 {
entry:
  %bv.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  %and.i = and i64 %7, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %and3.i = and i32 %9, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond34.i = and i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond34.i, label %valid_io_request.exit, label %entry.if.then_crit_edge, !prof !246

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

valid_io_request.exit:                            ; preds = %entry
  %shr.i = lshr i32 %9, 9
  %conv.i = zext i32 %shr.i to i64
  %add.i = add i64 %7, %conv.i
  %disksize.i = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %disksize.i, align 8
  %shr13.i = lshr i64 %11, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shr13.i, i64 %7)
  %cmp.not.i = icmp ule i64 %shr13.i, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shr13.i)
  %cmp15.i = icmp ugt i64 %add.i, %shr13.i
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %7)
  %cmp17.i = icmp ult i64 %add.i, %7
  %spec.select.i = or i1 %cmp17.i, %or.cond.i
  br i1 %spec.select.i, label %valid_io_request.exit.if.then_crit_edge, label %if.end

valid_io_request.exit.if.then_crit_edge:          ; preds = %valid_io_request.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %valid_io_request.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %invalid_io = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 6, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %invalid_io, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %invalid_io) #17
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %12 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %bi_status.i, align 2
  br label %cleanup

if.end:                                           ; preds = %valid_io_request.exit
  %shr.i8 = lshr i64 %7, 3
  %conv.i9 = trunc i64 %shr.i8 to i32
  %.tr.i = trunc i64 %7 to i32
  %13 = shl i32 %.tr.i, 9
  %conv3.i = and i32 %13, 3584
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %15 to i8
  %16 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %sw.epilog.i [
    i8 3, label %if.end.sw.bb.i_crit_edge
    i8 9, label %if.end.sw.bb.i_crit_edge27
  ]

if.end.sw.bb.i_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool.not.i.i = icmp eq i32 %conv3.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end4.i.i_crit_edge, label %if.then.i.i

sw.bb.i.if.end4.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %sub.i.i = sub nuw nsw i32 4096, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub.i.i)
  %cmp.not.i.i = icmp ugt i32 %9, %sub.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub3.i.i = sub i32 %9, %sub.i.i
  %inc.i.i = add i32 %conv.i9, 1
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i, %sw.bb.i.if.end4.i.i_crit_edge
  %index.addr.0.i.i = phi i32 [ %inc.i.i, %if.end.i.i ], [ %conv.i9, %sw.bb.i.if.end4.i.i_crit_edge ]
  %n.0.i.i = phi i32 [ %sub3.i.i, %if.end.i.i ], [ %9, %sw.bb.i.if.end4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %n.0.i.i)
  %cmp526.i.i = icmp ugt i32 %n.0.i.i, 4095
  br i1 %cmp526.i.i, label %while.body.lr.ph.i.i, label %if.end4.i.i.cleanup_crit_edge

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.lr.ph.i.i:                             ; preds = %if.end4.i.i
  %notify_free.i.i = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 6, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %zram_slot_unlock.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %n.128.i.i = phi i32 [ %n.0.i.i, %while.body.lr.ph.i.i ], [ %sub7.i.i, %zram_slot_unlock.exit.i.i.while.body.i.i_crit_edge ]
  %index.addr.127.i.i = phi i32 [ %index.addr.0.i.i, %while.body.lr.ph.i.i ], [ %inc6.i.i, %zram_slot_unlock.exit.i.i.while.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %flags.i.i.i = getelementptr %struct.zram_table_entry, ptr %18, i32 %index.addr.127.i.i, i32 1
  %19 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %do.body14.i.i.i.i, %while.body.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i.i.i, i32 noundef 4) #17
  %23 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i.i, label %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !248

while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge:    ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i.i

test_and_set_bit_lock.exit.i.i.i.i:               ; preds = %while.cond.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %flags.i.i.i, i32 1, i32 3, i32 1) #17
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i.i.i, ptr %flags.i.i.i, i32 16777216, ptr elementtype(i32) %flags.i.i.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %26 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %phi.cmp.i.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %phi.cmp.i.not.i.i.i.i, label %zram_slot_lock.exit.i.i, label %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i.i

do.body2.i.i.i.i:                                 ; preds = %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %27 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %preempt_count.i.i2.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i2.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i2.i.i.i.i, align 4
  br label %do.body4.i.i.i.i

do.body4.i.i.i.i:                                 ; preds = %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge, %do.body2.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i.i.i, align 4
  %33 = and i32 %32, 16777216
  %tobool12.not.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool12.not.i.i.i.i, label %do.body14.i.i.i.i, label %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge

do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge:      ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i.i.i

do.body14.i.i.i.i:                                ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %34 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i3.i.i.i.i to ptr
  %preempt_count.i.i4.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i4.i.i.i.i, align 4
  %add.i5.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i5.i.i.i.i, ptr %preempt_count.i.i4.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i.i.i

zram_slot_lock.exit.i.i:                          ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  tail call fastcc void @zram_free_page(ptr noundef %5, i32 noundef %index.addr.127.i.i) #17
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 8
  %flags.i20.i.i = getelementptr %struct.zram_table_entry, ptr %39, i32 %index.addr.127.i.i, i32 1
  %40 = ptrtoint ptr %flags.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags.i20.i.i, align 4
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i21.i.i, label %zram_slot_unlock.exit.i.i, !prof !255

do.body4.i.i21.i.i:                               ; preds = %zram_slot_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit.i.i:                        ; preds = %zram_slot_lock.exit.i.i
  %call.i.i.i.i22.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i20.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags.i20.i.i, i32 1, i32 3, i32 1) #17
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i20.i.i, ptr %flags.i20.i.i, i32 16777216, ptr elementtype(i32) %flags.i20.i.i) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %44 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i23.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i23.i.i to ptr
  %preempt_count.i.i.i.i24.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i24.i.i, align 4
  %sub.i.i.i25.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i25.i.i, ptr %preempt_count.i.i.i.i24.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_free.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %notify_free.i.i) #17
  %inc6.i.i = add i32 %index.addr.127.i.i, 1
  %sub7.i.i = add i32 %n.128.i.i, -4096
  %cmp5.i.i = icmp ugt i32 %sub7.i.i, 4095
  br i1 %cmp5.i.i, label %zram_slot_unlock.exit.i.i.while.body.i.i_crit_edge, label %zram_slot_unlock.exit.i.i.cleanup_crit_edge

zram_slot_unlock.exit.i.i.cleanup_crit_edge:      ; preds = %zram_slot_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

zram_slot_unlock.exit.i.i.while.body.i.i_crit_edge: ; preds = %zram_slot_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

sw.epilog.i:                                      ; preds = %if.end
  %call.i = tail call i32 @bio_start_io_acct(ptr noundef %bio) #17
  %48 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not110.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not110.i, label %sw.epilog.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %50 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %51 = getelementptr inbounds %struct.bio_vec, ptr %bv.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.bio_vec, ptr %bv.i, i32 0, i32 2
  %bi_status.i10 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %iter.sroa.6.0115.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.0114.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.16.0113.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %index.0112.i = phi i32 [ %conv.i9, %land.rhs.lr.ph.i ], [ %index.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %offset.0111.i = phi i32 [ %conv3.i, %land.rhs.lr.ph.i ], [ %offset.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %53 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %54, i32 %iter.sroa.10.0114.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %54, i32 %iter.sroa.10.0114.i, i32 2
  %57 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_offset.i, align 4
  %add.i11 = add i32 %58, %iter.sroa.16.0113.i
  %div92.i = lshr i32 %add.i11, 12
  %add.ptr.i = getelementptr %struct.page, ptr %56, i32 %div92.i
  %bv_len14.i = getelementptr %struct.bio_vec, ptr %54, i32 %iter.sroa.10.0114.i, i32 1
  %59 = ptrtoint ptr %bv_len14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_len14.i, align 4
  %sub.i = sub i32 %60, %iter.sroa.16.0113.i
  %61 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0115.i, i32 %sub.i) #17
  %rem.i = and i32 %add.i11, 4095
  %sub23.i = sub nuw nsw i32 4096, %rem.i
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %sub23.i) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv.i) #17
  %63 = ptrtoint ptr %bv.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i, ptr %bv.i, align 4
  %64 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %rem.i, ptr %52, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %land.rhs.i
  %offset.1.i = phi i32 [ %offset.0111.i, %land.rhs.i ], [ %rem.i.i, %if.end.i.do.body.i_crit_edge ]
  %index.1.i = phi i32 [ %index.0112.i, %land.rhs.i ], [ %add1.i.i, %if.end.i.do.body.i_crit_edge ]
  %unwritten.0.i = phi i32 [ %62, %land.rhs.i ], [ %sub58.i, %if.end.i.do.body.i_crit_edge ]
  %sub40.i = sub i32 4096, %offset.1.i
  %65 = tail call i32 @llvm.umin.i32(i32 %sub40.i, i32 %unwritten.0.i) #17
  %66 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %51, align 4
  %67 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_opf.i, align 8
  %and50.i = and i32 %68, 255
  %call51.i = call fastcc i32 @zram_bvec_rw(ptr noundef %5, ptr noundef nonnull %bv.i, i32 noundef %index.1.i, i32 noundef %and50.i, ptr noundef %bio) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %bi_status.i10 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %bi_status.i10, align 2
  br label %do.end.i

if.end.i:                                         ; preds = %do.body.i
  %70 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %52, align 4
  %add56.i = add i32 %71, %65
  store i32 %add56.i, ptr %52, align 4
  %sub58.i = sub i32 %unwritten.0.i, %65
  %add.i.i = add i32 %65, %offset.1.i
  %div7.i.i = lshr i32 %add.i.i, 12
  %add1.i.i = add i32 %div7.i.i, %index.1.i
  %rem.i.i = and i32 %add.i.i, 4095
  %tobool59.not.i = icmp eq i32 %sub58.i, 0
  br i1 %tobool59.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.then.i
  %offset.2.i = phi i32 [ %offset.1.i, %if.then.i ], [ %rem.i.i, %if.end.i.do.end.i_crit_edge ]
  %index.2.i = phi i32 [ %index.1.i, %if.then.i ], [ %add1.i.i, %if.end.i.do.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv.i) #17
  %72 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bi_opf.i, align 8
  %and.i.i.i = and i32 %73, 255
  %74 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %74, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %do.end.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

do.end.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %75 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_io_vec.i, align 8
  %add.i.i.i = add i32 %62, %iter.sroa.16.0113.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %76, i32 %iter.sroa.10.0114.i, i32 1
  %77 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %78)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %78
  %spec.select.i12 = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select107.i = add i32 %iter.sroa.10.0114.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %do.end.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.0113.i, %do.end.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i12, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0114.i, %do.end.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select107.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.0115.i, %62
  %tobool.not.i13 = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i13, label %bio_advance_iter_single.exit.i.for.end.i_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

bio_advance_iter_single.exit.i.for.end.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %bio_advance_iter_single.exit.i.for.end.i_crit_edge, %sw.epilog.i.for.end.i_crit_edge
  %79 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bi_bdev, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef %bio, i32 noundef %call.i, ptr noundef %80) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %zram_slot_unlock.exit.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.then
  tail call void @bio_endio(ptr noundef %bio) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zram_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 13
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %open_mutex) #17
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !245

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1838, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %claim = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %claim to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %claim, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 -16
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zram_rw_page(ptr nocapture noundef readonly %bdev, i64 noundef %sector, ptr noundef %page, i32 noundef %op) #1 align 64 {
entry:
  %bv = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv) #17
  %0 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 2
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %and.i = and i64 %sector, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %valid_io_request.exit, label %entry.out.thread_crit_edge, !prof !246

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread

valid_io_request.exit:                            ; preds = %entry
  %add.i = add i64 %sector, 8
  %disksize.i = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %disksize.i, align 8
  %shr13.i = lshr i64 %7, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shr13.i, i64 %sector)
  %cmp.not.i = icmp ule i64 %shr13.i, %sector
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shr13.i)
  %cmp15.i = icmp ugt i64 %add.i, %shr13.i
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %sector)
  %cmp17.i = icmp ugt i64 %sector, -9
  %spec.select.i = or i1 %cmp17.i, %or.cond.i
  br i1 %spec.select.i, label %valid_io_request.exit.out.thread_crit_edge, label %out

valid_io_request.exit.out.thread_crit_edge:       ; preds = %valid_io_request.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread

out.thread:                                       ; preds = %valid_io_request.exit.out.thread_crit_edge, %entry.out.thread_crit_edge
  %invalid_io = getelementptr inbounds %struct.zram, ptr %5, i32 0, i32 6, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %invalid_io, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %invalid_io) #17
  br label %cleanup

out:                                              ; preds = %valid_io_request.exit
  %shr = lshr i64 %sector, 3
  %conv = trunc i64 %shr to i32
  %8 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %page, ptr %bv, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %call6 = tail call i32 @disk_start_io_acct(ptr noundef %3, i32 noundef 8, i32 noundef %op) #17
  %call7 = call fastcc i32 @zram_bvec_rw(ptr noundef %5, ptr noundef nonnull %bv, i32 noundef %conv, i32 noundef %op, ptr noundef null)
  %11 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_disk, align 8
  tail call void @disk_end_io_acct(ptr noundef %12, i32 noundef %op, i32 noundef %call6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %out.cleanup_crit_edge, label %if.end13, !prof !255

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %out
  %13 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %if.end13.cleanup_crit_edge
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %and.i57 = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.i = icmp ne i32 %and.i57, 0
  tail call void @page_endio(ptr noundef %page, i1 noundef zeroext %tobool.i, i32 noundef 0) #17
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1711, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %if.end13.cleanup_crit_edge, %out.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ %call7, %out.cleanup_crit_edge ], [ %call7, %do.end ], [ 0, %sw.bb ], [ 0, %if.end13.cleanup_crit_edge ], [ -22, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zram_slot_free_notify(ptr nocapture noundef readonly %bdev, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %notify_free = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_free, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %notify_free) #17
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %flags.i = getelementptr %struct.zram_table_entry, ptr %5, i32 %index, i32 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !261
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #17
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and.i.i.i.i = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %entry.if.then_crit_edge, !prof !248

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

test_and_set_bit_lock.exit.i.i:                   ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #17
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 16777216, ptr elementtype(i32) %flags.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp.i.not.i.i = icmp eq i32 %13, 0
  br i1 %phi.cmp.i.not.i.i, label %if.end, label %test_and_set_bit_lock.exit.i.i.if.then_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.if.then_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %test_and_set_bit_lock.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !262
  %14 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  %miss_free = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 13
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %miss_free, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %miss_free) #17
  br label %cleanup

if.end:                                           ; preds = %test_and_set_bit_lock.exit.i.i
  tail call fastcc void @zram_free_page(ptr noundef %3, i32 noundef %index)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %flags.i9 = getelementptr %struct.zram_table_entry, ptr %19, i32 %index, i32 1
  %20 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i9, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %zram_slot_unlock.exit, !prof !255

do.body4.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i9, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags.i9, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i9, ptr %flags.i9, i32 16777216, ptr elementtype(i32) %flags.i9) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i11 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i13 = add i32 %27, -1
  store volatile i32 %sub.i.i.i13, ptr %preempt_count.i.i.i.i12, align 4
  br label %cleanup

cleanup:                                          ; preds = %zram_slot_unlock.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_start_io_acct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zram_bvec_rw(ptr noundef %zram, ptr nocapture noundef readonly %bvec, i32 noundef %index, i32 noundef %op, ptr noundef %bio) unnamed_addr #1 align 64 {
entry:
  %comp_len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_reads = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_reads, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_reads) #17
  %call1 = tail call fastcc i32 @zram_bvec_read(ptr noundef %zram, ptr noundef %bvec, i32 noundef %index, ptr noundef %bio)
  %0 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bvec, align 4
  tail call void @flush_dcache_page(ptr noundef %1) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %num_writes = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 2
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_writes, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_writes) #17
  %2 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %vec.sroa.0.0.copyload.i = load ptr, ptr %bvec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_len.i.i) #17
  %3 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp_len.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i6.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %vec.sroa.0.0.copyload.i, i32 noundef %or.i.i.i) #17
  %15 = ptrtoint ptr %call.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i.i6.i.i, align 4
  %arrayidx1.i.i.i = getelementptr i32, ptr %call.i.i6.i.i, i32 1023
  %17 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i.i.i = icmp eq i32 %16, %18
  br i1 %cmp.not.i.i.i, label %if.else.for.body.i.i.i_crit_edge, label %if.else.do.end8.i.i_crit_edge

if.else.do.end8.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

if.else.for.body.i.i.i_crit_edge:                 ; preds = %if.else
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %pos.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1023
  br i1 %exitcond.not.i.i.i, label %do.end.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.else.for.body.i.i.i_crit_edge
  %pos.017.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %if.else.for.body.i.i.i_crit_edge ]
  %arrayidx3.i.i.i = getelementptr i32, ptr %call.i.i6.i.i, i32 %pos.017.i.i.i
  %19 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp4.not.i.i.i = icmp eq i32 %16, %20
  br i1 %cmp4.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.do.end8.i.i_crit_edge

for.body.i.i.i.do.end8.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i6.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %21 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %27 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %same_pages.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %same_pages.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %same_pages.i.i) #17
  br label %out.i.i

do.end8.i.i:                                      ; preds = %for.body.i.i.i.do.end8.i.i_crit_edge, %if.else.do.end8.i.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i6.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i7.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i7.i.i to ptr
  %task.i.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i8.i.i, align 8
  %pagefault_disabled.i.i.i9.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i.i9.i.i, align 8
  %dec.i.i.i10.i.i = add i32 %36, -1
  store i32 %dec.i.i.i10.i.i, ptr %pagefault_disabled.i.i.i9.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %37 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i11.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i12.i.i, align 4
  %sub.i.i13.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i13.i.i, ptr %preempt_count.i.i.i12.i.i, align 4
  %comp.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 2
  %mem_pool33.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %writestall.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 12
  br label %compress_again.i.i

compress_again.i.i:                               ; preds = %if.then37.i.i.compress_again.i.i_crit_edge, %do.end8.i.i
  %handle.0.i.i = phi i32 [ 0, %do.end8.i.i ], [ %call41.i.i, %if.then37.i.i.compress_again.i.i_crit_edge ]
  %41 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %comp.i.i, align 8
  %call11.i.i = call ptr @zcomp_stream_get(ptr noundef %42) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i14.i.i = or i32 %43, 512
  %44 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i15.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i15.i.i to ptr
  %preempt_count.i.i.i.i16.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i16.i.i, align 4
  %add.i.i.i17.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i17.i.i, ptr %preempt_count.i.i.i.i16.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %48 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i18.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i18.i.i to ptr
  %task.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i19.i.i, align 8
  %pagefault_disabled.i.i.i.i20.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i20.i.i, align 8
  %inc.i.i.i.i21.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i21.i.i, ptr %pagefault_disabled.i.i.i.i20.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i22.i.i = call ptr @__kmap_local_page_prot(ptr noundef %vec.sroa.0.0.copyload.i, i32 noundef %or.i14.i.i) #17
  %call13.i.i = call i32 @zcomp_compress(ptr noundef %call11.i.i, ptr noundef %call.i.i22.i.i, ptr noundef nonnull %comp_len.i.i) #17
  call void @kunmap_local_indexed(ptr noundef %call.i.i22.i.i) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %54 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i23.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i1.i23.i.i to ptr
  %task.i.i.i24.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i.i24.i.i, align 8
  %pagefault_disabled.i.i.i25.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 213
  %58 = ptrtoint ptr %pagefault_disabled.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pagefault_disabled.i.i.i25.i.i, align 8
  %dec.i.i.i26.i.i = add i32 %59, -1
  store i32 %dec.i.i.i26.i.i, ptr %pagefault_disabled.i.i.i25.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %60 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i27.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i27.i.i to ptr
  %preempt_count.i.i.i28.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i28.i.i, align 4
  %sub.i.i29.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i29.i.i, ptr %preempt_count.i.i.i28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.not.i.i, label %if.end28.i.i, label %if.then22.i.i, !prof !245

if.then22.i.i:                                    ; preds = %compress_again.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %64 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %comp.i.i, align 8
  call void @zcomp_stream_put(ptr noundef %65) #17
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call13.i.i) #20
  %66 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem_pool33.i.i, align 4
  call void @zs_free(ptr noundef %67, i32 noundef %handle.0.i.i) #17
  br label %zram_bvec_write.exit

if.end28.i.i:                                     ; preds = %compress_again.i.i
  %68 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %comp_len.i.i, align 4
  %70 = load i32, ptr @huge_class_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %70)
  %cmp.not.i.i = icmp ult i32 %69, %70
  br i1 %cmp.not.i.i, label %if.end28.i.i.if.end30.i.i_crit_edge, label %if.then29.i.i

if.end28.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4096, ptr %comp_len.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then29.i.i, %if.end28.i.i.if.end30.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle.0.i.i)
  %tobool31.not.i.i = icmp eq i32 %handle.0.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end35.i.i, label %if.end30.i.i.if.end45.i.i_crit_edge

if.end30.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i.i

if.end35.i.i:                                     ; preds = %if.end30.i.i
  %72 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mem_pool33.i.i, align 4
  %74 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %comp_len.i.i, align 4
  %call34.i.i = call i32 @zs_malloc(ptr noundef %73, i32 noundef %75, i32 noundef 10250) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool36.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then37.i.i, label %if.end35.i.i.if.end45.i.i_crit_edge

if.end35.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  %76 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %comp.i.i, align 8
  call void @zcomp_stream_put(ptr noundef %77) #17
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %writestall.i.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %writestall.i.i) #17
  %78 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem_pool33.i.i, align 4
  %80 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %comp_len.i.i, align 4
  %call41.i.i = call i32 @zs_malloc(ptr noundef %79, i32 noundef %81, i32 noundef 3082) #17
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then37.i.i.zram_bvec_write.exit_crit_edge, label %if.then37.i.i.compress_again.i.i_crit_edge

if.then37.i.i.compress_again.i.i_crit_edge:       ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %compress_again.i.i

if.then37.i.i.zram_bvec_write.exit_crit_edge:     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %zram_bvec_write.exit

if.end45.i.i:                                     ; preds = %if.end35.i.i.if.end45.i.i_crit_edge, %if.end30.i.i.if.end45.i.i_crit_edge
  %handle.172.i.i = phi i32 [ %call34.i.i, %if.end35.i.i.if.end45.i.i_crit_edge ], [ %handle.0.i.i, %if.end30.i.i.if.end45.i.i_crit_edge ]
  %82 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem_pool33.i.i, align 4
  %call47.i.i = call i32 @zs_get_total_pages(ptr noundef %83) #17
  %max_used_pages.i.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %max_used_pages.i.i.i, i32 noundef 4) #17
  %84 = ptrtoint ptr %max_used_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %max_used_pages.i.i.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end45.i.i
  %old_max.0.i.i.i = phi i32 [ %85, %if.end45.i.i ], [ %asmresult3.i.i.i.i.i.i.i, %do.cond.i.i.i.do.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %old_max.0.i.i.i, i32 %call47.i.i)
  %cmp.i.i.i = icmp ult i32 %old_max.0.i.i.i, %call47.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body.i.i.i.update_used_max.exit.i.i_crit_edge

do.body.i.i.i.update_used_max.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_used_max.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  %call.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %max_used_pages.i.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !267
  call void @llvm.prefetch.p0(ptr %max_used_pages.i.i.i, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i
  %86 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %max_used_pages.i.i.i, ptr %max_used_pages.i.i.i, i32 %old_max.0.i.i.i, i32 %call47.i.i, ptr elementtype(i32) %max_used_pages.i.i.i) #17, !srcloc !268
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.cond.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !269
  %cmp4.not.i30.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %old_max.0.i.i.i
  br i1 %cmp4.not.i30.i.i, label %do.cond.i.i.i.update_used_max.exit.i.i_crit_edge, label %do.cond.i.i.i.do.body.i.i.i_crit_edge

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

do.cond.i.i.i.update_used_max.exit.i.i_crit_edge: ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_used_max.exit.i.i

update_used_max.exit.i.i:                         ; preds = %do.cond.i.i.i.update_used_max.exit.i.i_crit_edge, %do.body.i.i.i.update_used_max.exit.i.i_crit_edge
  %limit_pages.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 5
  %87 = ptrtoint ptr %limit_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %limit_pages.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool48.not.i.i = icmp ne i32 %88, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call47.i.i, i32 %88)
  %cmp50.i.i = icmp ugt i32 %call47.i.i, %88
  %or.cond.i.i = and i1 %tobool48.not.i.i, %cmp50.i.i
  br i1 %or.cond.i.i, label %if.then51.i.i, label %if.end54.i.i

if.then51.i.i:                                    ; preds = %update_used_max.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %89 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %comp.i.i, align 8
  call void @zcomp_stream_put(ptr noundef %90) #17
  %91 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mem_pool33.i.i, align 4
  call void @zs_free(ptr noundef %92, i32 noundef %handle.172.i.i) #17
  br label %zram_bvec_write.exit

if.end54.i.i:                                     ; preds = %update_used_max.exit.i.i
  %93 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mem_pool33.i.i, align 4
  %call56.i.i = call ptr @zs_map_object(ptr noundef %94, i32 noundef %handle.172.i.i, i32 noundef 2) #17
  %buffer.i.i = getelementptr inbounds %struct.zcomp_strm, ptr %call11.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer.i.i, align 4
  %97 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %comp_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %98)
  %cmp57.i.i = icmp eq i32 %98, 4096
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end54.i.i.if.end60.i.i_crit_edge

if.end54.i.i.if.end60.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.i.i

if.then58.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %99 = load i32, ptr @pgprot_kernel, align 4
  %or.i31.i.i = or i32 %99, 512
  %100 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i32.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i32.i.i to ptr
  %preempt_count.i.i.i.i33.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i.i33.i.i, align 4
  %add.i.i.i34.i.i = add i32 %103, 1
  store volatile i32 %add.i.i.i34.i.i, ptr %preempt_count.i.i.i.i33.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %104 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i35.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i1.i.i35.i.i to ptr
  %task.i.i.i.i36.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i.i.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i.i.i.i36.i.i, align 8
  %pagefault_disabled.i.i.i.i37.i.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 213
  %108 = ptrtoint ptr %pagefault_disabled.i.i.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pagefault_disabled.i.i.i.i37.i.i, align 8
  %inc.i.i.i.i38.i.i = add i32 %109, 1
  store i32 %inc.i.i.i.i38.i.i, ptr %pagefault_disabled.i.i.i.i37.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i39.i.i = call ptr @__kmap_local_page_prot(ptr noundef %vec.sroa.0.0.copyload.i, i32 noundef %or.i31.i.i) #17
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.then58.i.i, %if.end54.i.i.if.end60.i.i_crit_edge
  %src.0.i.i = phi ptr [ %call.i.i39.i.i, %if.then58.i.i ], [ %96, %if.end54.i.i.if.end60.i.i_crit_edge ]
  %110 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %comp_len.i.i, align 4
  %112 = call ptr @memcpy(ptr %call56.i.i, ptr %src.0.i.i, i32 %111)
  %113 = load i32, ptr %comp_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %113)
  %cmp61.i.i = icmp eq i32 %113, 4096
  br i1 %cmp61.i.i, label %do.end66.i.i, label %if.end60.i.i.if.end69.i.i_crit_edge

if.end60.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i.i

do.end66.i.i:                                     ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kunmap_local_indexed(ptr noundef %src.0.i.i) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %114 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i40.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i1.i40.i.i to ptr
  %task.i.i.i41.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task.i.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task.i.i.i41.i.i, align 8
  %pagefault_disabled.i.i.i42.i.i = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 213
  %118 = ptrtoint ptr %pagefault_disabled.i.i.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pagefault_disabled.i.i.i42.i.i, align 8
  %dec.i.i.i43.i.i = add i32 %119, -1
  store i32 %dec.i.i.i43.i.i, ptr %pagefault_disabled.i.i.i42.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %120 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i44.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i44.i.i to ptr
  %preempt_count.i.i.i45.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i45.i.i, align 4
  %sub.i.i46.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i46.i.i, ptr %preempt_count.i.i.i45.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %do.end66.i.i, %if.end60.i.i.if.end69.i.i_crit_edge
  %124 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %comp.i.i, align 8
  call void @zcomp_stream_put(ptr noundef %125) #17
  %126 = ptrtoint ptr %mem_pool33.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mem_pool33.i.i, align 4
  call void @zs_unmap_object(ptr noundef %127, i32 noundef %handle.172.i.i) #17
  %128 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %comp_len.i.i, align 4
  %conv.i.i = zext i32 %129 to i64
  %stats72.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6
  %call.i.i2.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stats72.i.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %conv.i.i, ptr noundef %stats72.i.i) #17
  br label %out.i.i

out.i.i:                                          ; preds = %if.end69.i.i, %do.end.i.i
  %retval.0.i68.i.i = phi i1 [ true, %do.end.i.i ], [ false, %if.end69.i.i ]
  %element.066.i.i = phi i32 [ %16, %do.end.i.i ], [ 0, %if.end69.i.i ]
  %handle.2.i.i = phi i32 [ 0, %do.end.i.i ], [ %handle.172.i.i, %if.end69.i.i ]
  %flags.0.i.i = phi i32 [ 25, %do.end.i.i ], [ 0, %if.end69.i.i ]
  %130 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %zram, align 8
  %flags.i.i.i = getelementptr %struct.zram_table_entry, ptr %131, i32 %index, i32 1
  %132 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i47.i.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i47.i.i to ptr
  %preempt_count.i.i.i.i48.i.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i48.i.i, align 4
  %add.i.i.i49.i.i = add i32 %135, 1
  store volatile i32 %add.i.i.i49.i.i, ptr %preempt_count.i.i.i.i48.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %do.body14.i.i.i.i, %out.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i.i.i, i32 noundef 4) #17
  %136 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %flags.i.i.i, align 4
  %and.i.i.i.i50.i.i = and i32 %137, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i50.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i50.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i.i, label %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !248

while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge:    ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i.i

test_and_set_bit_lock.exit.i.i.i.i:               ; preds = %while.cond.i.i.i.i
  call void @llvm.prefetch.p0(ptr %flags.i.i.i, i32 1, i32 3, i32 1) #17
  %138 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i.i.i, ptr %flags.i.i.i, i32 16777216, ptr elementtype(i32) %flags.i.i.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %138, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %139 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %phi.cmp.i.not.i.i.i.i = icmp eq i32 %139, 0
  br i1 %phi.cmp.i.not.i.i.i.i, label %zram_slot_lock.exit.i.i, label %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i.i

do.body2.i.i.i.i:                                 ; preds = %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %140 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i51.i.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i1.i.i51.i.i to ptr
  %preempt_count.i.i2.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i2.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %143, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i2.i.i.i.i, align 4
  br label %do.body4.i.i.i.i

do.body4.i.i.i.i:                                 ; preds = %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge, %do.body2.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %144 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %flags.i.i.i, align 4
  %146 = and i32 %145, 16777216
  %tobool12.not.i.i.i.i = icmp eq i32 %146, 0
  br i1 %tobool12.not.i.i.i.i, label %do.body14.i.i.i.i, label %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge

do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge:      ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i.i.i

do.body14.i.i.i.i:                                ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %147 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i.i.i = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i3.i.i.i.i to ptr
  %preempt_count.i.i4.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %preempt_count.i.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %preempt_count.i.i4.i.i.i.i, align 4
  %add.i5.i.i.i.i = add i32 %150, 1
  store volatile i32 %add.i5.i.i.i.i, ptr %preempt_count.i.i4.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i.i.i

zram_slot_lock.exit.i.i:                          ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  call fastcc void @zram_free_page(ptr noundef %zram, i32 noundef %index) #17
  %151 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %comp_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %152)
  %cmp73.i.i = icmp eq i32 %152, 4096
  br i1 %cmp73.i.i, label %if.then75.i.i, label %zram_slot_lock.exit.i.i.if.end78.i.i_crit_edge

zram_slot_lock.exit.i.i.if.end78.i.i_crit_edge:   ; preds = %zram_slot_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78.i.i

if.then75.i.i:                                    ; preds = %zram_slot_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %153 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %zram, align 8
  %flags.i52.i.i = getelementptr %struct.zram_table_entry, ptr %154, i32 %index, i32 1
  %155 = ptrtoint ptr %flags.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i52.i.i, align 4
  %or.i53.i.i = or i32 %156, 268435456
  store i32 %or.i53.i.i, ptr %flags.i52.i.i, align 4
  %huge_pages.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 8
  %call.i.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %huge_pages.i.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %huge_pages.i.i) #17
  %huge_pages_since.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 9
  %call.i.i4.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %huge_pages_since.i.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %huge_pages_since.i.i) #17
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then75.i.i, %zram_slot_lock.exit.i.i.if.end78.i.i_crit_edge
  br i1 %retval.0.i68.i.i, label %if.then80.i.i, label %if.else.i.i

if.then80.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %shl.i.i.i = shl nuw i32 1, %flags.0.i.i
  %157 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %zram, align 8
  %flags.i54.i.i = getelementptr %struct.zram_table_entry, ptr %158, i32 %index, i32 1
  %159 = ptrtoint ptr %flags.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags.i54.i.i, align 4
  %or.i55.i.i = or i32 %160, %shl.i.i.i
  store i32 %or.i55.i.i, ptr %flags.i54.i.i, align 4
  %161 = load ptr, ptr %zram, align 8
  %arrayidx.i.i.i = getelementptr %struct.zram_table_entry, ptr %161, i32 %index
  %162 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %element.066.i.i, ptr %arrayidx.i.i.i, align 8
  br label %if.end81.i.i

if.else.i.i:                                      ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %163 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %zram, align 8
  %arrayidx.i56.i.i = getelementptr %struct.zram_table_entry, ptr %164, i32 %index
  %165 = ptrtoint ptr %arrayidx.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %handle.2.i.i, ptr %arrayidx.i56.i.i, align 8
  %166 = ptrtoint ptr %comp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %comp_len.i.i, align 4
  %168 = load ptr, ptr %zram, align 8
  %flags1.i.i.i = getelementptr %struct.zram_table_entry, ptr %168, i32 %index, i32 1
  %169 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags1.i.i.i, align 4
  %shr.i.i.i = and i32 %170, -16777216
  %or.i57.i.i = or i32 %shr.i.i.i, %167
  store i32 %or.i57.i.i, ptr %flags1.i.i.i, align 4
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.else.i.i, %if.then80.i.i
  %171 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %zram, align 8
  %flags.i58.i.i = getelementptr %struct.zram_table_entry, ptr %172, i32 %index, i32 1
  %173 = ptrtoint ptr %flags.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %flags.i58.i.i, align 4
  %175 = and i32 %174, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i.i.i.i = icmp eq i32 %175, 0
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i59.i.i, label %zram_slot_unlock.exit.i.i, !prof !255

do.body4.i.i59.i.i:                               ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit.i.i:                        ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i60.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i58.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i58.i.i, i32 1, i32 3, i32 1) #17
  %176 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i58.i.i, ptr %flags.i58.i.i, i32 16777216, ptr elementtype(i32) %flags.i58.i.i) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %177 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i61.i.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i.i.i61.i.i to ptr
  %preempt_count.i.i.i.i62.i.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %preempt_count.i.i.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %preempt_count.i.i.i.i62.i.i, align 4
  %sub.i.i.i63.i.i = add i32 %180, -1
  store volatile i32 %sub.i.i.i63.i.i, ptr %preempt_count.i.i.i.i62.i.i, align 4
  %pages_stored.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 10
  %call.i.i5.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pages_stored.i.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %pages_stored.i.i) #17
  br label %zram_bvec_write.exit

zram_bvec_write.exit:                             ; preds = %zram_slot_unlock.exit.i.i, %if.then51.i.i, %if.then37.i.i.zram_bvec_write.exit_crit_edge, %if.then22.i.i
  %retval.0.i.i = phi i32 [ 0, %zram_slot_unlock.exit.i.i ], [ %call13.i.i, %if.then22.i.i ], [ -12, %if.then51.i.i ], [ -12, %if.then37.i.i.zram_bvec_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_len.i.i) #17
  br label %if.end

if.end:                                           ; preds = %zram_bvec_write.exit, %if.then
  %ret.0 = phi i32 [ %retval.0.i.i, %zram_bvec_write.exit ], [ %call1, %if.then ]
  %181 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %zram, align 8
  %flags.i = getelementptr %struct.zram_table_entry, ptr %182, i32 %index, i32 1
  %183 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %186, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %if.end
  %call.i.i.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #17
  %187 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %flags.i, align 4
  %and.i.i.i.i = and i32 %188, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i5 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i5, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !248

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #17
  %189 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 16777216, ptr elementtype(i32) %flags.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %189, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %190 = and i32 %asmresult.i.i.i.i.i.i.i6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %phi.cmp.i.not.i.i = icmp eq i32 %190, 0
  br i1 %phi.cmp.i.not.i.i, label %zram_slot_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %191 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %194, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %195 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %flags.i, align 4
  %197 = and i32 %196, 16777216
  %tobool12.not.i.i = icmp eq i32 %197, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %198 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %201, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i

zram_slot_lock.exit:                              ; preds = %test_and_set_bit_lock.exit.i.i
  %202 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %zram, align 8
  %flags.i.i = getelementptr %struct.zram_table_entry, ptr %203, i32 %index, i32 1
  %204 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %205, -536870913
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %call.i.i7 = call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %206 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %zram, align 8
  %ac_time.i = getelementptr %struct.zram_table_entry, ptr %207, i32 %index, i32 2
  %208 = ptrtoint ptr %ac_time.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %call.i.i7, ptr %ac_time.i, align 8
  %209 = load ptr, ptr %zram, align 8
  %flags.i8 = getelementptr %struct.zram_table_entry, ptr %209, i32 %index, i32 1
  %210 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %flags.i8, align 4
  %212 = and i32 %211, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool.not.i.i9 = icmp eq i32 %212, 0
  br i1 %tobool.not.i.i9, label %do.body4.i.i10, label %zram_slot_unlock.exit, !prof !255

do.body4.i.i10:                                   ; preds = %zram_slot_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit:                            ; preds = %zram_slot_lock.exit
  %call.i.i.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i8, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i8, i32 1, i32 3, i32 1) #17
  %213 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i8, ptr %flags.i8, i32 16777216, ptr elementtype(i32) %flags.i8) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %214 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i12 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i14 = add i32 %217, -1
  store volatile i32 %sub.i.i.i14, ptr %preempt_count.i.i.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.then5, label %zram_slot_unlock.exit.if.end12_crit_edge, !prof !255

zram_slot_unlock.exit.if.end12_crit_edge:         ; preds = %zram_slot_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then5:                                         ; preds = %zram_slot_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %failed_reads = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 3
  %failed_writes = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 4
  %failed_reads.sink35 = select i1 %tobool.i.not, ptr %failed_reads, ptr %failed_writes
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %failed_reads.sink35, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %failed_reads.sink35) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %zram_slot_unlock.exit.if.end12_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zram_slot_lock(ptr nocapture noundef readonly %zram, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zram, align 8
  %flags = getelementptr %struct.zram_table_entry, ptr %1, i32 %index, i32 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #17
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and.i.i.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !248

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 16777216, ptr elementtype(i32) %flags) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %9 = and i32 %asmresult.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp.i.not.i = icmp eq i32 %9, 0
  br i1 %phi.cmp.i.not.i, label %bit_spin_lock.exit, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %10 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 16777216
  %tobool12.not.i = icmp eq i32 %16, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %20, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i

bit_spin_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zram_free_page(ptr noundef %zram, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zram, align 8
  %ac_time = getelementptr %struct.zram_table_entry, ptr %1, i32 %index, i32 2
  %2 = ptrtoint ptr %ac_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ac_time, align 8
  %3 = load ptr, ptr %zram, align 8
  %flags.i = getelementptr %struct.zram_table_entry, ptr %3, i32 %index, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and.i101 = and i32 %5, -536870913
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i101, ptr %flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zram, align 8
  %flags.i102 = getelementptr %struct.zram_table_entry, ptr %8, i32 %index, i32 1
  %9 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i102, align 4
  %and.i103 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.i104.not = icmp eq i32 %and.i103, 0
  br i1 %tobool.i104.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %and.i106 = and i32 %10, -268435457
  %11 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i106, ptr %flags.i102, align 4
  %huge_pages = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %huge_pages, i32 noundef 8) #17
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %huge_pages) #17
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %12 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zram, align 8
  %flags.i107 = getelementptr %struct.zram_table_entry, ptr %13, i32 %index, i32 1
  %14 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i107, align 4
  %and.i108 = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.i109.not = icmp eq i32 %and.i108, 0
  br i1 %tobool.i109.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %and.i111 = and i32 %15, -67108865
  %16 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i111, ptr %flags.i107, align 4
  %17 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %zram, align 8
  %arrayidx.i = getelementptr %struct.zram_table_entry, ptr %18, i32 %index
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 8
  %bitmap.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 15
  %21 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap.i, align 4
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %20, ptr noundef %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then5.free_block_bdev.exit_crit_edge

if.then5.free_block_bdev.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_block_bdev.exit

land.rhs.i:                                       ; preds = %if.then5
  %.b40.i = load i1, ptr @free_block_bdev.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.free_block_bdev.exit_crit_edge, label %if.then.i, !prof !245

land.rhs.i.free_block_bdev.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_block_bdev.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @free_block_bdev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 599, i32 noundef 9, ptr noundef null) #17
  br label %free_block_bdev.exit

free_block_bdev.exit:                             ; preds = %if.then.i, %land.rhs.i.free_block_bdev.exit_crit_edge, %if.then5.free_block_bdev.exit_crit_edge
  %bd_count.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bd_count.i, i32 noundef 8) #17
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %bd_count.i) #17
  br label %out

if.end7:                                          ; preds = %if.end3
  %and.i113 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.i114.not = icmp eq i32 %and.i113, 0
  br i1 %tobool.i114.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %and.i116 = and i32 %15, -33554433
  %23 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i116, ptr %flags.i107, align 4
  %same_pages = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 7
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %same_pages, i32 noundef 8) #17
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %same_pages) #17
  br label %out

if.end11:                                         ; preds = %if.end7
  %arrayidx.i117 = getelementptr %struct.zram_table_entry, ptr %13, i32 %index
  %24 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %mem_pool = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %26 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem_pool, align 4
  tail call void @zs_free(ptr noundef %27, i32 noundef %25) #17
  %28 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %zram, align 8
  %flags.i118 = getelementptr %struct.zram_table_entry, ptr %29, i32 %index, i32 1
  %30 = ptrtoint ptr %flags.i118 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i118, align 4
  %and.i119 = and i32 %31, 16777215
  %conv = zext i32 %and.i119 to i64
  %stats16 = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6
  %call.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats16, i32 noundef 8) #17
  tail call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef %stats16) #17
  br label %out

out:                                              ; preds = %if.end14, %if.then9, %free_block_bdev.exit
  %pages_stored = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 10
  %call.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_stored, i32 noundef 8) #17
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_stored) #17
  %32 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %zram, align 8
  %arrayidx.i120 = getelementptr %struct.zram_table_entry, ptr %33, i32 %index
  %34 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx.i120, align 8
  %35 = load ptr, ptr %zram, align 8
  %flags1.i = getelementptr %struct.zram_table_entry, ptr %35, i32 %index, i32 1
  %36 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags1.i, align 4
  %shr.i = and i32 %37, -16777216
  store i32 %shr.i, ptr %flags1.i, align 4
  %38 = load ptr, ptr %zram, align 8
  %flags = getelementptr %struct.zram_table_entry, ptr %38, i32 %index, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, -150994945
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %out.cleanup_crit_edge, label %land.rhs

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.rhs:                                         ; preds = %out
  %.b96 = load i1, ptr @zram_free_page.__already_done, align 1
  br i1 %.b96, label %land.rhs.cleanup_crit_edge, label %if.then29, !prof !245

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @zram_free_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1254, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.rhs.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zram_slot_unlock(ptr nocapture noundef readonly %zram, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zram, align 8
  %flags = getelementptr %struct.zram_table_entry, ptr %1, i32 %index, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !255

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

bit_spin_unlock.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #17
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 16777216, ptr elementtype(i32) %flags) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %6 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @zs_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zram_bvec_read(ptr noundef %zram, ptr nocapture noundef readonly %bvec, i32 noundef %index, ptr noundef %bio) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bvec, align 4
  %2 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zram, align 8
  %flags.i.i = getelementptr %struct.zram_table_entry, ptr %3, i32 %index, i32 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i.i, i32 noundef 4) #17
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %and.i.i.i.i.i = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !248

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  tail call void @llvm.prefetch.p0(ptr %flags.i.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i.i, ptr %flags.i.i, i32 16777216, ptr elementtype(i32) %flags.i.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %11 = and i32 %asmresult.i.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not.i.i.i, label %zram_slot_lock.exit.i, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %12 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %18 = and i32 %17, 16777216
  %tobool12.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %22, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i.i

zram_slot_lock.exit.i:                            ; preds = %test_and_set_bit_lock.exit.i.i.i
  %23 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zram, align 8
  %flags.i1.i = getelementptr %struct.zram_table_entry, ptr %24, i32 %index, i32 1
  %25 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i1.i, align 4
  %and.i.i = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %zram_slot_lock.exit.i
  %27 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i1.i, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i3.i, label %zram_slot_unlock.exit.i, !prof !255

do.body4.i.i3.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit.i:                          ; preds = %if.then.i
  %call.i.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i1.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags.i1.i, i32 1, i32 3, i32 1) #17
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i1.i, ptr %flags.i1.i, i32 16777216, ptr elementtype(i32) %flags.i1.i) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %31 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i5.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i5.i to ptr
  %preempt_count.i.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i6.i, align 4
  %sub.i.i.i7.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i7.i, ptr %preempt_count.i.i.i.i6.i, align 4
  %35 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zram, align 8
  %arrayidx.i.i = getelementptr %struct.zram_table_entry, ptr %36, i32 %index
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 8
  %bd_reads.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bd_reads.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %bd_reads.i.i) #17
  %call.i.i1.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #17
  %tobool.not.i.i8.i = icmp eq ptr %call.i.i1.i.i, null
  br i1 %tobool.not.i.i8.i, label %zram_slot_unlock.exit.i.out_crit_edge, label %if.end.i.i.i

zram_slot_unlock.exit.i.out_crit_edge:            ; preds = %zram_slot_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end.i.i.i:                                     ; preds = %zram_slot_unlock.exit.i
  %mul.i.i.i = shl i32 %38, 3
  %conv.i.i.i = zext i32 %mul.i.i.i to i64
  %bi_iter.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %bi_iter.i.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i.i.i, ptr %bi_iter.i.i.i, align 8
  %bdev.i.i.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 14
  %40 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev.i.i.i, align 8
  %bi_flags.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bi_flags.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = and i16 %43, -2049
  store i16 %conv1.i.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  %bi_bdev.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bi_bdev.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %45, %41
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.bio_set_dev.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.bio_set_dev.exit.i.i.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_set_dev.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv1.i8.i.i.i.i = and i16 %43, -2177
  %46 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv1.i8.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i.i

bio_set_dev.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %if.end.i.i.i.bio_set_dev.exit.i.i.i_crit_edge
  %47 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %bi_bdev.i.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i1.i.i) #17
  %call2.i.i.i = tail call i32 @bio_add_page(ptr noundef nonnull %call.i.i1.i.i, ptr noundef %1, i32 noundef 4096, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.then4.i.i.i, label %if.end5.i.i.i

if.then4.i.i.i:                                   ; preds = %bio_set_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @bio_put(ptr noundef nonnull %call.i.i1.i.i) #17
  br label %out

if.end5.i.i.i:                                    ; preds = %bio_set_dev.exit.i.i.i
  %tobool6.not.i.i.i = icmp eq ptr %bio, null
  br i1 %tobool6.not.i.i.i, label %if.then7.i.i.i, label %if.else.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bi_opf.i.i.i, align 8
  %bi_end_io.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %bi_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @zram_page_end_io, ptr %bi_end_io.i.i.i, align 8
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %bi_opf8.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %50 = ptrtoint ptr %bi_opf8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_opf8.i.i.i, align 8
  %bi_opf9.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i1.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %bi_opf9.i.i.i, align 8
  tail call void @bio_chain(ptr noundef nonnull %call.i.i1.i.i, ptr noundef nonnull %bio) #17
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then7.i.i.i
  tail call void @submit_bio(ptr noundef nonnull %call.i.i1.i.i) #17
  br label %out

if.end.i:                                         ; preds = %zram_slot_lock.exit.i
  %arrayidx.i9.i = getelementptr %struct.zram_table_entry, ptr %24, i32 %index
  %53 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool4.not.i = icmp eq i32 %54, 0
  %and.i11.i = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.i12.i = icmp ne i32 %and.i11.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool.i12.i
  br i1 %or.cond.i, label %cond.end.i, label %if.end13.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %55 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %55, 512
  %56 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i14.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %add.i.i.i16.i = add i32 %59, 1
  store volatile i32 %add.i.i.i16.i, ptr %preempt_count.i.i.i.i15.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %60 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i17.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i1.i.i17.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 213
  %64 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i.i) #17
  %call.i.i.i18.i = tail call ptr @__memset32(ptr noundef %call.i.i.i, i32 noundef %54, i32 noundef 4096) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %66 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 213
  %70 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %71, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %72 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i19.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %76 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %zram, align 8
  %flags.i20.i = getelementptr %struct.zram_table_entry, ptr %77, i32 %index, i32 1
  %78 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i20.i, align 4
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i21.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i21.i, label %do.body4.i.i22.i, label %zram_slot_unlock.exit27.i, !prof !255

do.body4.i.i22.i:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit27.i:                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i23.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i20.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags.i20.i, i32 1, i32 3, i32 1) #17
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i20.i, ptr %flags.i20.i, i32 16777216, ptr elementtype(i32) %flags.i20.i) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %82 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i24.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i26.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i26.i, ptr %preempt_count.i.i.i.i25.i, align 4
  br label %out

if.end13.i:                                       ; preds = %if.end.i
  %and.i29.i = and i32 %26, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i29.i)
  %cmp.not.i = icmp eq i32 %and.i29.i, 4096
  br i1 %cmp.not.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %mem_pool71.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %86 = ptrtoint ptr %mem_pool71.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem_pool71.i, align 4
  %call1872.i = tail call ptr @zs_map_object(ptr noundef %87, i32 noundef %54, i32 noundef 1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %88 = load i32, ptr @pgprot_kernel, align 4
  %or.i30.i = or i32 %88, 512
  %89 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i31.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i31.i to ptr
  %preempt_count.i.i.i.i32.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i32.i, align 4
  %add.i.i.i33.i = add i32 %92, 1
  store volatile i32 %add.i.i.i33.i, ptr %preempt_count.i.i.i.i32.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %93 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i34.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i1.i.i34.i to ptr
  %task.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task.i.i.i.i35.i, align 8
  %pagefault_disabled.i.i.i.i36.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 213
  %97 = ptrtoint ptr %pagefault_disabled.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pagefault_disabled.i.i.i.i36.i, align 8
  %inc.i.i.i.i37.i = add i32 %98, 1
  store i32 %inc.i.i.i.i37.i, ptr %pagefault_disabled.i.i.i.i36.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i38.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i30.i) #17
  %99 = call ptr @memcpy(ptr %call.i.i38.i, ptr %call1872.i, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i38.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %100 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i39.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i1.i39.i to ptr
  %task.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i.i.i40.i, align 8
  %pagefault_disabled.i.i.i41.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 213
  %104 = ptrtoint ptr %pagefault_disabled.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pagefault_disabled.i.i.i41.i, align 8
  %dec.i.i.i42.i = add i32 %105, -1
  store i32 %dec.i.i.i42.i, ptr %pagefault_disabled.i.i.i41.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %106 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i43.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i43.i to ptr
  %preempt_count.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i44.i, align 4
  %sub.i.i45.i = add i32 %109, -1
  store volatile i32 %sub.i.i45.i, ptr %preempt_count.i.i.i44.i, align 4
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %comp.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 2
  %110 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %comp.i, align 8
  %call16.i = tail call ptr @zcomp_stream_get(ptr noundef %111) #17
  %mem_pool.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %112 = ptrtoint ptr %mem_pool.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem_pool.i, align 4
  %call18.i = tail call ptr @zs_map_object(ptr noundef %113, i32 noundef %54, i32 noundef 1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %114 = load i32, ptr @pgprot_kernel, align 4
  %or.i46.i = or i32 %114, 512
  %115 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i47.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i48.i, align 4
  %add.i.i.i49.i = add i32 %118, 1
  store volatile i32 %add.i.i.i49.i, ptr %preempt_count.i.i.i.i48.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !263
  %119 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i50.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i1.i.i50.i to ptr
  %task.i.i.i.i51.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task.i.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task.i.i.i.i51.i, align 8
  %pagefault_disabled.i.i.i.i52.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 213
  %123 = ptrtoint ptr %pagefault_disabled.i.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pagefault_disabled.i.i.i.i52.i, align 8
  %inc.i.i.i.i53.i = add i32 %124, 1
  store i32 %inc.i.i.i.i53.i, ptr %pagefault_disabled.i.i.i.i52.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !264
  %call.i.i54.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i46.i) #17
  %call29.i = tail call i32 @zcomp_decompress(ptr noundef %call16.i, ptr noundef %call18.i, i32 noundef %and.i29.i, ptr noundef %call.i.i54.i) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i54.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !265
  %125 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i55.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i1.i55.i to ptr
  %task.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i.i.i56.i, align 8
  %pagefault_disabled.i.i.i57.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 213
  %129 = ptrtoint ptr %pagefault_disabled.i.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pagefault_disabled.i.i.i57.i, align 8
  %dec.i.i.i58.i = add i32 %130, -1
  store i32 %dec.i.i.i58.i, ptr %pagefault_disabled.i.i.i57.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  %131 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i59.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i59.i to ptr
  %preempt_count.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i60.i, align 4
  %sub.i.i61.i = add i32 %134, -1
  store volatile i32 %sub.i.i61.i, ptr %preempt_count.i.i.i60.i, align 4
  %135 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %comp.i, align 8
  tail call void @zcomp_stream_put(ptr noundef %136) #17
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then20.i
  %mem_pool73.i = phi ptr [ %mem_pool71.i, %if.then20.i ], [ %mem_pool.i, %if.else.i ]
  %ret.0.i = phi i32 [ 0, %if.then20.i ], [ %call29.i, %if.else.i ]
  %137 = ptrtoint ptr %mem_pool73.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mem_pool73.i, align 4
  tail call void @zs_unmap_object(ptr noundef %138, i32 noundef %54) #17
  %139 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %zram, align 8
  %flags.i62.i = getelementptr %struct.zram_table_entry, ptr %140, i32 %index, i32 1
  %141 = ptrtoint ptr %flags.i62.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %flags.i62.i, align 4
  %143 = and i32 %142, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i.i63.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i.i63.i, label %do.body4.i.i64.i, label %zram_slot_unlock.exit69.i, !prof !255

do.body4.i.i64.i:                                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit69.i:                        ; preds = %if.end37.i
  %call.i.i.i.i65.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i62.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %flags.i62.i, i32 1, i32 3, i32 1) #17
  %144 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i62.i, ptr %flags.i62.i, i32 16777216, ptr elementtype(i32) %flags.i62.i) #17, !srcloc !258
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %145 = tail call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i66.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i66.i to ptr
  %preempt_count.i.i.i.i67.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i.i67.i, align 4
  %sub.i.i.i68.i = add i32 %148, -1
  store volatile i32 %sub.i.i.i68.i, ptr %preempt_count.i.i.i.i67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool39.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool39.not.i, label %zram_slot_unlock.exit69.i.out_crit_edge, label %do.end51.i, !prof !245

zram_slot_unlock.exit69.i.out_crit_edge:          ; preds = %zram_slot_unlock.exit69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end51.i:                                       ; preds = %zram_slot_unlock.exit69.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1314, i32 noundef 9, ptr noundef null) #17
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %ret.0.i, i32 noundef %index) #20
  br label %out

out:                                              ; preds = %do.end51.i, %zram_slot_unlock.exit69.i.out_crit_edge, %zram_slot_unlock.exit27.i, %if.end10.i.i.i, %if.then4.i.i.i, %zram_slot_unlock.exit.i.out_crit_edge
  %retval.0.i3 = phi i32 [ 0, %zram_slot_unlock.exit27.i ], [ 0, %zram_slot_unlock.exit69.i.out_crit_edge ], [ -12, %zram_slot_unlock.exit.i.out_crit_edge ], [ -5, %if.then4.i.i.i ], [ 1, %if.end10.i.i.i ], [ %ret.0.i, %do.end51.i ]
  ret i32 %retval.0.i3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zcomp_stream_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zs_map_object(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zcomp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zcomp_stream_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zs_unmap_object(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zram_page_end_io(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %0 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_flags.i.i.i, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not.i.i = icmp eq i16 %2, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i, !prof !245

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_first_page_all.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 248, i32 noundef 9, ptr noundef null) #17
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bi_status, align 2
  %call2 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %10) #17
  tail call void @page_endio(ptr noundef %6, i1 noundef zeroext %tobool.i, i32 noundef %call2) #17
  tail call void @bio_put(ptr noundef %bio) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zcomp_compress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zs_malloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zs_get_total_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_end_io_acct_remapped(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_start_io_acct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_end_io_acct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disksize_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disksize = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disksize to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.24, i64 noundef %5) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disksize_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %call1 = tail call i64 @memparse(ptr noundef %buf, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.i.not = icmp eq i64 %5, 0
  br i1 %tobool.i.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #20
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %add = add i64 %call1, 4095
  %and = and i64 %add, -4096
  %shr.i = lshr i64 %add, 12
  %conv.i = trunc i64 %shr.i to i32
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv.i, i32 16) #17
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i.i = select i1 %7, i32 -1, i32 %8
  %call1.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #22
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup.sink.split_crit_edge, label %if.end.i

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end5
  %disk.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 3
  %call3.i = tail call ptr @zs_create_pool(ptr noundef %disk_name.i) #17
  %mem_pool.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %mem_pool.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %mem_pool.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  tail call void @vfree(ptr noundef %14) #17
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %if.end.i
  %15 = load i32, ptr @huge_class_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end8.i.if.end8_crit_edge

if.end8.i.if.end8_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %call12.i = tail call i32 @zs_huge_class_size(ptr noundef nonnull %call3.i) #17
  store i32 %call12.i, ptr @huge_class_size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then10.i, %if.end8.i.if.end8_crit_edge
  %compressor = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 8
  %call9 = tail call ptr @zcomp_create(ptr noundef %compressor) #17
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end20

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %compressor) #20
  %16 = ptrtoint ptr %call9 to i32
  tail call fastcc void @zram_meta_free(ptr noundef %3, i64 noundef %and)
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %comp21 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %comp21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %comp21, align 8
  %18 = ptrtoint ptr %disksize.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %and, ptr %disksize.i, align 8
  %19 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk.i, align 4
  %shr = lshr exact i64 %and, 9
  %call24 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %20, i64 noundef %shr) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %do.end14, %if.then6.i, %if.end5.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ %len, %if.end20 ], [ -16, %do.end ], [ %16, %do.end14 ], [ -12, %if.end5.cleanup.sink.split_crit_edge ], [ -12, %if.then6.i ]
  tail call void @up_write(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zcomp_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zram_meta_free(ptr noundef %zram, i64 noundef %disksize) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %disksize, 12
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp6.not = icmp eq i32 %conv, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %index.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @zram_free_page(ptr noundef %zram, i32 noundef %index.07)
  %inc = add nuw i32 %index.07, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mem_pool = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %0 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_pool, align 4
  tail call void @zs_destroy_pool(ptr noundef %1) #17
  %2 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zram, align 8
  tail call void @vfree(ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zs_create_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zs_huge_class_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @zs_destroy_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @initstate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.i = icmp ne i64 %5, 0
  %conv = zext i1 %tobool.i to i32
  tail call void @up_read(ptr noundef %init_lock) #17
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %conv) #17
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %do_reset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %do_reset) #17
  %0 = ptrtoint ptr %do_reset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %do_reset, align 2, !annotation !270
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %do_reset) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %do_reset to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %do_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %3 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 8
  %disk = getelementptr inbounds %struct.zram, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_disk, align 8
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #17
  %bd_openers = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %bd_openers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd_openers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end3
  %claim = getelementptr inbounds %struct.zram, ptr %6, i32 0, i32 9
  %15 = ptrtoint ptr %claim to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %claim, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.end10, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %claim to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %claim, align 8
  %18 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_disk, align 8
  %open_mutex13 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 13
  call void @mutex_unlock(ptr noundef %open_mutex13) #17
  %call14 = call i32 @sync_blockdev(ptr noundef %10) #17
  call fastcc void @zram_reset_device(ptr noundef %6)
  %20 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_disk, align 8
  %open_mutex16 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %open_mutex16, i32 noundef 0) #17
  %22 = ptrtoint ptr %claim to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %claim, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %if.end10 ], [ -16, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -16, %if.end3.cleanup.sink.split_crit_edge ]
  %23 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_disk, align 8
  %open_mutex19 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 13
  call void @mutex_unlock(ptr noundef %open_mutex19) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %do_reset) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zram_reset_device(ptr noundef %zram) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %init_lock = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 4
  tail call void @down_write(ptr noundef %init_lock) #17
  %limit_pages = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 5
  %0 = ptrtoint ptr %limit_pages to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %limit_pages, align 8
  %disksize.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 7
  %1 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.i.not = icmp eq i64 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %comp2 = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 2
  %3 = ptrtoint ptr %comp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %comp2, align 8
  %5 = ptrtoint ptr %disksize.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %disksize.i, align 8
  %disk = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 3
  %6 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk, align 4
  %call5 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %7, i64 noundef 0) #17
  %call1.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %8)
  %cmp2.i = icmp ult i32 %call1.i, %8
  br i1 %cmp2.i, label %do.body.lr.ph.i, label %if.end.part_stat_set_all.exit_crit_edge

if.end.part_stat_set_all.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %part_stat_set_all.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0, align 4
  %bd_stats.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call3.i = phi i32 [ %call1.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %13 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_stats.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %15
  %18 = inttoptr i32 %add.i to ptr
  %19 = call ptr @memset(ptr %18, i32 0, i32 96)
  %call.i = tail call i32 @cpumask_next(i32 noundef %call3.i, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %20
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.part_stat_set_all.exit_crit_edge

do.body.i.part_stat_set_all.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %part_stat_set_all.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

part_stat_set_all.exit:                           ; preds = %do.body.i.part_stat_set_all.exit_crit_edge, %if.end.part_stat_set_all.exit_crit_edge
  %shr.i = lshr i64 %2, 12
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %conv.i, 0
  br i1 %cmp6.not.i, label %part_stat_set_all.exit.zram_meta_free.exit_crit_edge, label %part_stat_set_all.exit.for.body.i_crit_edge

part_stat_set_all.exit.for.body.i_crit_edge:      ; preds = %part_stat_set_all.exit
  br label %for.body.i

part_stat_set_all.exit.zram_meta_free.exit_crit_edge: ; preds = %part_stat_set_all.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %zram_meta_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %part_stat_set_all.exit.for.body.i_crit_edge
  %index.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %part_stat_set_all.exit.for.body.i_crit_edge ]
  tail call fastcc void @zram_free_page(ptr noundef %zram, i32 noundef %index.07.i) #17
  %inc.i = add nuw i32 %index.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.zram_meta_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.zram_meta_free.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %zram_meta_free.exit

zram_meta_free.exit:                              ; preds = %for.body.i.zram_meta_free.exit_crit_edge, %part_stat_set_all.exit.zram_meta_free.exit_crit_edge
  %mem_pool.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 1
  %21 = ptrtoint ptr %mem_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem_pool.i, align 4
  tail call void @zs_destroy_pool(ptr noundef %22) #17
  %23 = ptrtoint ptr %zram to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zram, align 8
  tail call void @vfree(ptr noundef %24) #17
  %stats = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 6
  %25 = call ptr @memset(ptr %stats, i32 0, i32 136)
  tail call void @zcomp_destroy(ptr noundef %4) #17
  %backing_dev.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 10
  %26 = ptrtoint ptr %backing_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %backing_dev.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %zram_meta_free.exit.cleanup_crit_edge, label %if.end.i

zram_meta_free.exit.cleanup_crit_edge:            ; preds = %zram_meta_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %zram_meta_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  %bdev1.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 14
  %28 = ptrtoint ptr %bdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev1.i, align 8
  tail call void @blkdev_put(ptr noundef %29, i32 noundef 131) #17
  %30 = ptrtoint ptr %backing_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %backing_dev.i, align 4
  %call.i21 = tail call i32 @filp_close(ptr noundef %31, ptr noundef null) #17
  %32 = ptrtoint ptr %backing_dev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %backing_dev.i, align 4
  %33 = ptrtoint ptr %bdev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %bdev1.i, align 8
  %34 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk, align 4
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @zram_devops, ptr %fops.i, align 8
  %bitmap.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 15
  %37 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap.i, align 4
  tail call void @kvfree(ptr noundef %38) #17
  %39 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bitmap.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %zram_meta_free.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @up_write(ptr noundef %init_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zcomp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_bdev(ptr nocapture noundef %zram) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %backing_dev = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 10
  %0 = ptrtoint ptr %backing_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backing_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bdev1 = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 14
  %2 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev1, align 8
  tail call void @blkdev_put(ptr noundef %3, i32 noundef 131) #17
  %4 = ptrtoint ptr %backing_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backing_dev, align 4
  %call = tail call i32 @filp_close(ptr noundef %5, ptr noundef null) #17
  %6 = ptrtoint ptr %backing_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %backing_dev, align 4
  %7 = ptrtoint ptr %bdev1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bdev1, align 8
  %disk = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 3
  %8 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @zram_devops, ptr %fops, align 8
  %bitmap = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 15
  %11 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bitmap, align 4
  tail call void @kvfree(ptr noundef %12) #17
  %13 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compact_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.i.not = icmp eq i64 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mem_pool = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_pool, align 4
  %call3 = tail call i32 @zs_compact(ptr noundef %7) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zs_compact(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #17
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !270
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %1 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 8
  %call1 = call i64 @memparse(ptr noundef %buf, ptr noundef nonnull %tmp) #17
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp, align 4
  %cmp = icmp eq ptr %6, %buf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %init_lock = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 4
  call void @down_write(ptr noundef %init_lock) #17
  %add = add i64 %call1, 4095
  %shr = lshr i64 %add, 12
  %conv = trunc i64 %shr to i32
  %limit_pages = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %limit_pages to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %limit_pages, align 8
  call void @up_write(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_used_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !270
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %1 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %init_lock = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 4
  call void @down_read(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.i.not = icmp eq i64 %8, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %max_used_pages = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 6, i32 11
  %mem_pool = getelementptr inbounds %struct.zram, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_pool, align 4
  %call4 = call i32 @zs_get_total_pages(ptr noundef %10) #17
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %max_used_pages, i32 noundef 4) #17
  %11 = ptrtoint ptr %max_used_pages to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %call4, ptr %max_used_pages, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @up_read(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %age_sec = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.37) #17
  br i1 %call1, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %age_sec) #17
  %4 = ptrtoint ptr %age_sec to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %age_sec, align 8, !annotation !270
  %call2 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %age_sec) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %5 = ptrtoint ptr %age_sec to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %age_sec, align 8
  %mul.neg = mul i64 %6, -1000000000
  %sub = add i64 %mul.neg, %call.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %age_sec) #17
  br label %if.end6

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %age_sec) #17
  br label %cleanup11

if.end6:                                          ; preds = %cleanup.thread, %entry.if.end6_crit_edge
  %cutoff_time.1 = phi i64 [ 0, %entry.if.end6_crit_edge ], [ %sub, %cleanup.thread ]
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  call void @down_read(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.i.not = icmp eq i64 %8, 0
  br i1 %tobool.i.not, label %if.end6.out_unlock_crit_edge, label %if.end9

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end9:                                          ; preds = %if.end6
  %shr.i = lshr i64 %8, 12
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp31.not.i = icmp eq i32 %conv.i, 0
  br i1 %cmp31.not.i, label %if.end9.out_unlock_crit_edge, label %for.body.lr.ph.i

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.body.lr.ph.i:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cutoff_time.1)
  %tobool.not.i = icmp eq i64 %cutoff_time.1, 0
  br label %for.body.i

for.body.i:                                       ; preds = %zram_slot_unlock.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %zram_slot_unlock.exit.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %flags.i.i = getelementptr %struct.zram_table_entry, ptr %10, i32 %index.032.i, i32 1
  %11 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %for.body.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i.i, i32 noundef 4) #17
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i, align 4
  %and.i.i.i.i.i = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !248

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  call void @llvm.prefetch.p0(ptr %flags.i.i, i32 1, i32 3, i32 1) #17
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i.i, ptr %flags.i.i, i32 16777216, ptr elementtype(i32) %flags.i.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %18 = and i32 %asmresult.i.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %phi.cmp.i.not.i.i.i, label %zram_slot_lock.exit.i, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %19 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i.i, align 4
  %25 = and i32 %24, 16777216
  %tobool12.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %29, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i.i

zram_slot_lock.exit.i:                            ; preds = %test_and_set_bit_lock.exit.i.i.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %flags.i.i.i = getelementptr %struct.zram_table_entry, ptr %31, i32 %index.032.i, i32 1
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i.i, align 4
  %34 = and i32 %33, 117440511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  %and.i.i = and i32 %33, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %or.cond.i = or i1 %35, %tobool.i.i
  br i1 %or.cond.i, label %zram_slot_lock.exit.i.if.end8.i_crit_edge, label %if.then.i

zram_slot_lock.exit.i.if.end8.i_crit_edge:        ; preds = %zram_slot_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then.i:                                        ; preds = %zram_slot_lock.exit.i
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %lor.rhs.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i

lor.rhs.i:                                        ; preds = %if.then.i
  %ac_time.i = getelementptr %struct.zram_table_entry, ptr %31, i32 %index.032.i, i32 2
  %36 = ptrtoint ptr %ac_time.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ac_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %cutoff_time.1)
  %cmp3.i.i.i = icmp slt i64 %37, %cutoff_time.1
  br i1 %cmp3.i.i.i, label %lor.rhs.i.if.then7.i_crit_edge, label %lor.rhs.i.if.end8.i_crit_edge

lor.rhs.i.if.end8.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

lor.rhs.i.if.then7.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.rhs.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %or.i.i = or i32 %33, 536870912
  %38 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i, ptr %flags.i.i.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %lor.rhs.i.if.end8.i_crit_edge, %zram_slot_lock.exit.i.if.end8.i_crit_edge
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %flags.i25.i = getelementptr %struct.zram_table_entry, ptr %40, i32 %index.032.i, i32 1
  %41 = ptrtoint ptr %flags.i25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i25.i, align 4
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i26.i, label %zram_slot_unlock.exit.i, !prof !255

do.body4.i.i26.i:                                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit.i:                          ; preds = %if.end8.i
  %call.i.i.i.i27.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i25.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i25.i, i32 1, i32 3, i32 1) #17
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i25.i, ptr %flags.i25.i, i32 16777216, ptr elementtype(i32) %flags.i25.i) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %45 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i28.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %sub.i.i.i30.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i30.i, ptr %preempt_count.i.i.i.i29.i, align 4
  %inc.i = add nuw i32 %index.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %zram_slot_unlock.exit.i.out_unlock_crit_edge, label %zram_slot_unlock.exit.i.for.body.i_crit_edge

zram_slot_unlock.exit.i.for.body.i_crit_edge:     ; preds = %zram_slot_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

zram_slot_unlock.exit.i.out_unlock_crit_edge:     ; preds = %zram_slot_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

out_unlock:                                       ; preds = %zram_slot_unlock.exit.i.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge
  %rv.0 = phi i32 [ -22, %if.end6.out_unlock_crit_edge ], [ %len, %if.end9.out_unlock_crit_edge ], [ %len, %zram_slot_unlock.exit.i.out_unlock_crit_edge ]
  call void @up_read(ptr noundef %init_lock) #17
  br label %cleanup11

cleanup11:                                        ; preds = %out_unlock, %cleanup
  %rv.1 = phi i32 [ %rv.0, %out_unlock ], [ -22, %cleanup ]
  ret i32 %rv.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_comp_streams_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %0) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max_comp_streams_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %len) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_algorithm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %compressor = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 8
  %call1 = tail call i32 @zcomp_available_show(ptr noundef %compressor, ptr noundef %buf) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_algorithm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %compressor = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %compressor) #17
  %4 = call ptr @memset(ptr %compressor, i32 255, i32 128)
  %call1 = call i32 @strlcpy(ptr noundef nonnull %compressor, ptr noundef %buf, i32 noundef 128) #17
  %call3 = call i32 @strlen(ptr noundef nonnull %compressor) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub = add i32 %call3, -1
  %arrayidx = getelementptr [128 x i8], ptr %compressor, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp4 = icmp eq i8 %6, 10
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = call zeroext i1 @zcomp_available_algorithm(ptr noundef nonnull %compressor) #17
  br i1 %call9, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  call void @down_write(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.i.not = icmp eq i64 %9, 0
  br i1 %tobool.i.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  call void @up_write(ptr noundef %init_lock) #17
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #20
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %compressor17 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 8
  %call20 = call ptr @strcpy(ptr noundef %compressor17, ptr noundef nonnull %compressor) #24
  call void @up_write(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ %len, %if.end16 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %compressor) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zcomp_available_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zcomp_available_algorithm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backing_dev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %backing_dev = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %backing_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backing_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 5)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @file_path(ptr noundef nonnull %5, ptr noundef %buf, i32 noundef 4095) #17
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 @strlen(ptr noundef %call2) #24
  %8 = call ptr @memmove(ptr %buf, ptr %call2, i32 %call7)
  %inc = add i32 %call7, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %call7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 5, %if.then ], [ %7, %if.then4 ], [ %inc, %if.end6 ]
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @backing_dev_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4096) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.i.not = icmp eq i64 %6, 0
  br i1 %tobool.i.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #20
  br label %out.thread

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i, ptr noundef %buf, i32 noundef 4096) #17
  %call7 = tail call i32 @strlen(ptr noundef nonnull %call7.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %sub = add i32 %call7, -1
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp8 = icmp eq i8 %8, 10
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %call14 = tail call ptr @filp_open(ptr noundef nonnull %call7.i, i32 noundef 131074, i16 noundef zeroext 0) #17
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %call14 to i32
  br label %out.thread

if.end18:                                         ; preds = %if.end13
  %f_mapping = getelementptr inbounds %struct.file, ptr %call14, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %17)
  %cmp20 = icmp eq i16 %17, 24576
  br i1 %cmp20, label %if.end23, label %if.end18.out.thread_crit_edge

if.end18.out.thread_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.thread

if.end23:                                         ; preds = %if.end18
  %i_rdev = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 13
  %18 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_rdev, align 8
  %call24 = tail call ptr @blkdev_get_by_dev(i32 noundef %19, i32 noundef 131, ptr noundef %3) #17
  %cmp.i99 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %call24 to i32
  br label %out.thread

if.end28:                                         ; preds = %if.end23
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end28
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !271
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %22 = tail call ptr @llvm.returnaddress(i32 0) #17
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %23) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %23) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %24 = tail call ptr @llvm.returnaddress(i32 0) #17
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %25) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %25) #17
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !272
  %and.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !255

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #17, !srcloc !273
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !274
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !275
  %29 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %30, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %28, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %30, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !276
  %31 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !277
  %33 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %34, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %35 = lshr i64 %32, 12
  %conv30 = trunc i64 %35 to i32
  %sub31 = add i32 %conv30, 31
  %36 = lshr i32 %sub31, 3
  %mul = and i32 %36, 536870908
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3520, i32 noundef -1) #22
  %tobool33.not = icmp eq ptr %call.i.i, null
  br i1 %tobool33.not, label %out, label %if.end35

if.end35:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @reset_bdev(ptr noundef %3)
  %bdev36 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 14
  %37 = ptrtoint ptr %bdev36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call24, ptr %bdev36, align 8
  %backing_dev37 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %backing_dev37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call14, ptr %backing_dev37, align 4
  %bitmap38 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 15
  %39 = ptrtoint ptr %bitmap38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %bitmap38, align 4
  %nr_pages39 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 16
  %40 = ptrtoint ptr %nr_pages39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv30, ptr %nr_pages39, align 8
  %disk = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @zram_wb_devops, ptr %fops, align 8
  tail call void @up_write(ptr noundef %init_lock) #17
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %call7.i) #20
  br label %cleanup.sink.split

out.thread:                                       ; preds = %if.then26, %if.end18.out.thread_crit_edge, %if.then16, %do.end
  %backing_dev.0.ph = phi ptr [ %call14, %if.end18.out.thread_crit_edge ], [ %call14, %if.then26 ], [ null, %if.then16 ], [ null, %do.end ]
  %err.0.ph = phi i32 [ -15, %if.end18.out.thread_crit_edge ], [ %20, %if.then26 ], [ %10, %if.then16 ], [ -16, %do.end ]
  tail call void @kvfree(ptr noundef null) #17
  br label %if.end48

out:                                              ; preds = %i_size_read.exit
  tail call void @kvfree(ptr noundef null) #17
  %tobool46.not = icmp eq ptr %call24, null
  br i1 %tobool46.not, label %out.if.end48_crit_edge, label %if.then47

out.if.end48_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then47:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blkdev_put(ptr noundef nonnull %call24, i32 noundef 131) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %out.if.end48_crit_edge, %out.thread
  %err.0105 = phi i32 [ %err.0.ph, %out.thread ], [ -12, %if.then47 ], [ -12, %out.if.end48_crit_edge ]
  %backing_dev.0104 = phi ptr [ %backing_dev.0.ph, %out.thread ], [ %call14, %if.then47 ], [ %call14, %out.if.end48_crit_edge ]
  %tobool49.not = icmp eq ptr %backing_dev.0104, null
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %call51 = tail call i32 @filp_close(ptr noundef nonnull %backing_dev.0104, ptr noundef null) #17
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  tail call void @up_write(ptr noundef %init_lock) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end52, %if.end35
  %retval.0.ph = phi i32 [ %len, %if.end35 ], [ %err.0105, %if.end52 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writeback_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %index = alloca i32, align 4
  %bio = alloca %struct.bio, align 8
  %bio_vec = alloca %struct.bio_vec, align 4
  %bvec = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disksize = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %disksize to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize, align 8
  %shr = lshr i64 %5, 12
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #17
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio) #17
  %7 = call ptr @memset(ptr %bio, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bio_vec) #17
  %8 = ptrtoint ptr %bio_vec to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bio_vec, align 4, !annotation !270
  %9 = getelementptr inbounds %struct.bio_vec, ptr %bio_vec, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !270
  %11 = getelementptr inbounds %struct.bio_vec, ptr %bio_vec, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !270
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.36) #17
  br i1 %call1, label %entry.if.end14_crit_edge, label %if.else

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.50) #17
  br i1 %call2, label %if.else.if.end14_crit_edge, label %if.else4

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(12) @.str.51, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.else4.cleanup101_crit_edge

if.else4.cleanup101_crit_edge:                    ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup101

if.end:                                           ; preds = %if.else4
  %add.ptr7 = getelementptr i8, ptr %buf, i32 11
  %call.i = call i32 @_kstrtol(ptr noundef %add.ptr7, i32 noundef 10, ptr noundef nonnull %index) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end.cleanup101_crit_edge

if.end.cleanup101_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup101

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp.not = icmp ult i32 %14, %conv
  br i1 %cmp.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.cleanup101_crit_edge

lor.lhs.false.cleanup101_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup101

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %nr_pages.0 = phi i32 [ %conv, %entry.if.end14_crit_edge ], [ %conv, %if.else.if.end14_crit_edge ], [ 1, %lor.lhs.false.if.end14_crit_edge ]
  %cmp60 = phi i1 [ true, %entry.if.end14_crit_edge ], [ false, %if.else.if.end14_crit_edge ], [ true, %lor.lhs.false.if.end14_crit_edge ]
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  call void @down_read(ptr noundef %init_lock) #17
  %15 = ptrtoint ptr %disksize to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %disksize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.i.not = icmp eq i64 %16, 0
  br i1 %tobool.i.not, label %if.end14.release_init_lock_crit_edge, label %if.end17

if.end14.release_init_lock_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %release_init_lock

if.end17:                                         ; preds = %if.end14
  %backing_dev = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %backing_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backing_dev, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.end17.release_init_lock_crit_edge, label %if.end20

if.end17.release_init_lock_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %release_init_lock

if.end20:                                         ; preds = %if.end17
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool22.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool22.not, label %if.end20.release_init_lock_crit_edge, label %for.cond.preheader

if.end20.release_init_lock_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %release_init_lock

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages.0)
  %cmp25.not294 = icmp eq i32 %nr_pages.0, 0
  br i1 %cmp25.not294, label %for.cond.preheader.if.end99_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end99_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %19 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1
  %20 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 11
  %wb_limit_enable = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 12
  %bd_wb_limit = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 13
  %bitmap.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 15
  %nr_pages.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 16
  %bd_count.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 14
  %call1.not = xor i1 %call1, true
  %bdev = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 14
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %bd_writes = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 16
  %pages_stored = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blk_idx.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %blk_idx.3, %for.inc.for.body_crit_edge ]
  %ret.0296 = phi i32 [ %len, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %nr_pages.1295 = phi i32 [ %nr_pages.0, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec) #17
  %21 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38.i.i.i, ptr %bvec, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %19, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %20, align 4
  call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %24 = ptrtoint ptr %wb_limit_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wb_limit_enable, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %for.body.if.end32_crit_edge, label %land.lhs.true

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %26 = ptrtoint ptr %bd_wb_limit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bd_wb_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool29.not = icmp eq i64 %27, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  br label %cleanup.thread

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %for.body.if.end32_crit_edge
  call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blk_idx.0298)
  %tobool34.not = icmp eq i32 %blk_idx.0298, 0
  br i1 %tobool34.not, label %if.end32.retry.i_crit_edge, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end32.retry.i_crit_edge:                       ; preds = %if.end32
  br label %retry.i

retry.i:                                          ; preds = %if.end.i.retry.i_crit_edge, %if.end32.retry.i_crit_edge
  %blk_idx.0.i = phi i32 [ %call.i174, %if.end.i.retry.i_crit_edge ], [ 1, %if.end32.retry.i_crit_edge ]
  %28 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmap.i, align 4
  %30 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_pages.i, align 8
  %call.i174 = call i32 @_find_next_zero_bit_be(ptr noundef %29, i32 noundef %31, i32 noundef %blk_idx.0.i) #17
  %32 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i174, i32 %33)
  %cmp.i = icmp eq i32 %call.i174, %33
  br i1 %cmp.i, label %retry.i.cleanup.thread_crit_edge, label %if.end.i

retry.i.cleanup.thread_crit_edge:                 ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end.i:                                         ; preds = %retry.i
  %34 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmap.i, align 4
  %call3.i = call i32 @_test_and_set_bit(i32 noundef %call.i174, ptr noundef %35) #17
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %alloc_block_bdev.exit, label %if.end.i.retry.i_crit_edge

if.end.i.retry.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %retry.i

alloc_block_bdev.exit:                            ; preds = %if.end.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bd_count.i, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %bd_count.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool37.not = icmp eq i32 %call.i174, 0
  br i1 %tobool37.not, label %alloc_block_bdev.exit.cleanup.thread_crit_edge, label %alloc_block_bdev.exit.if.end40_crit_edge

alloc_block_bdev.exit.if.end40_crit_edge:         ; preds = %alloc_block_bdev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

alloc_block_bdev.exit.cleanup.thread_crit_edge:   ; preds = %alloc_block_bdev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end40:                                         ; preds = %alloc_block_bdev.exit.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  %blk_idx.1 = phi i32 [ %blk_idx.0298, %if.end32.if.end40_crit_edge ], [ %call.i174, %alloc_block_bdev.exit.if.end40_crit_edge ]
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %flags.i = getelementptr %struct.zram_table_entry, ptr %39, i32 %37, i32 1
  %40 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %if.end40
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #17
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i, align 4
  %and.i.i.i.i = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !248

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #17
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 16777216, ptr elementtype(i32) %flags.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %47 = and i32 %asmresult.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %phi.cmp.i.not.i.i = icmp eq i32 %47, 0
  br i1 %phi.cmp.i.not.i.i, label %zram_slot_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %48 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %54 = and i32 %53, 16777216
  %tobool12.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %58, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i

zram_slot_lock.exit:                              ; preds = %test_and_set_bit_lock.exit.i.i
  %59 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  %flags.i.i = getelementptr %struct.zram_table_entry, ptr %62, i32 %60, i32 1
  %63 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i.i, align 4
  %65 = and i32 %64, 117440511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  %and.i = and i32 %64, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i176 = icmp ne i32 %and.i, 0
  %or.cond = or i1 %66, %tobool.i176
  %and.i178 = and i32 %64, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.i179 = icmp ne i32 %and.i178, 0
  %or.cond270 = select i1 %or.cond, i1 true, i1 %tobool.i179
  %and.i181 = and i32 %64, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.i182 = icmp ne i32 %and.i181, 0
  %or.cond271 = select i1 %or.cond270, i1 true, i1 %tobool.i182
  br i1 %or.cond271, label %zram_slot_lock.exit.next_crit_edge, label %if.end53

zram_slot_lock.exit.next_crit_edge:               ; preds = %zram_slot_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %next

if.end53:                                         ; preds = %zram_slot_lock.exit
  %and.i184 = and i32 %64, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %tobool.i185 = icmp ne i32 %and.i184, 0
  %or.cond272 = select i1 %call1.not, i1 true, i1 %tobool.i185
  br i1 %or.cond272, label %if.end59, label %if.end53.next_crit_edge

if.end53.next_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %next

if.end59:                                         ; preds = %if.end53
  %and.i187 = and i32 %64, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.i188 = icmp ne i32 %and.i187, 0
  %or.cond273 = select i1 %cmp60, i1 true, i1 %tobool.i188
  br i1 %or.cond273, label %if.end65, label %if.end59.next_crit_edge

if.end59.next_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %next

if.end65:                                         ; preds = %if.end59
  %or.i = or i32 %64, 134217728
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i, ptr %flags.i.i, align 4
  %68 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index, align 4
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 8
  %flags.i190 = getelementptr %struct.zram_table_entry, ptr %71, i32 %69, i32 1
  %72 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i190, align 4
  %or.i191 = or i32 %73, 536870912
  store i32 %or.i191, ptr %flags.i190, align 4
  %74 = load i32, ptr %index, align 4
  %75 = load ptr, ptr %3, align 8
  %flags.i192 = getelementptr %struct.zram_table_entry, ptr %75, i32 %74, i32 1
  %76 = ptrtoint ptr %flags.i192 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i192, align 4
  %78 = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i193, label %zram_slot_unlock.exit, !prof !255

do.body4.i.i193:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit:                            ; preds = %if.end65
  %call.i.i.i.i194 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i192, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i192, i32 1, i32 3, i32 1) #17
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i192, ptr %flags.i192, i32 16777216, ptr elementtype(i32) %flags.i192) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %80 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i195 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i197 = add i32 %83, -1
  store volatile i32 %sub.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  %84 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index, align 4
  %call66 = call fastcc i32 @zram_bvec_read(ptr noundef %3, ptr noundef nonnull %bvec, i32 noundef %85, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %zram_slot_unlock.exit
  %86 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index, align 4
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 8
  %flags.i198 = getelementptr %struct.zram_table_entry, ptr %89, i32 %87, i32 1
  %90 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i199 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i199 to ptr
  %preempt_count.i.i.i.i200 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i200, align 4
  %add.i.i.i201 = add i32 %93, 1
  store volatile i32 %add.i.i.i201, ptr %preempt_count.i.i.i.i200, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i205

while.cond.i.i205:                                ; preds = %do.body14.i.i218, %if.then68
  %call.i.i.i.i202 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i198, i32 noundef 4) #17
  %94 = ptrtoint ptr %flags.i198 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i198, align 4
  %and.i.i.i.i203 = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i203)
  %tobool.not.i.i.i.i204 = icmp eq i32 %and.i.i.i.i203, 0
  br i1 %tobool.not.i.i.i.i204, label %test_and_set_bit_lock.exit.i.i208, label %while.cond.i.i205.do.body2.i.i212_crit_edge, !prof !248

while.cond.i.i205.do.body2.i.i212_crit_edge:      ; preds = %while.cond.i.i205
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i212

test_and_set_bit_lock.exit.i.i208:                ; preds = %while.cond.i.i205
  call void @llvm.prefetch.p0(ptr %flags.i198, i32 1, i32 3, i32 1) #17
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i198, ptr %flags.i198, i32 16777216, ptr elementtype(i32) %flags.i198) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i206 = extractvalue { i32, i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %97 = and i32 %asmresult.i.i.i.i.i.i.i206, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %phi.cmp.i.not.i.i207 = icmp eq i32 %97, 0
  br i1 %phi.cmp.i.not.i.i207, label %zram_slot_lock.exit219, label %test_and_set_bit_lock.exit.i.i208.do.body2.i.i212_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i208.do.body2.i.i212_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i208
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i212

do.body2.i.i212:                                  ; preds = %test_and_set_bit_lock.exit.i.i208.do.body2.i.i212_crit_edge, %while.cond.i.i205.do.body2.i.i212_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %98 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i209 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i1.i.i209 to ptr
  %preempt_count.i.i2.i.i210 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i2.i.i210 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i2.i.i210, align 4
  %sub.i.i.i211 = add i32 %101, -1
  store volatile i32 %sub.i.i.i211, ptr %preempt_count.i.i2.i.i210, align 4
  br label %do.body4.i.i214

do.body4.i.i214:                                  ; preds = %do.body4.i.i214.do.body4.i.i214_crit_edge, %do.body2.i.i212
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %102 = ptrtoint ptr %flags.i198 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags.i198, align 4
  %104 = and i32 %103, 16777216
  %tobool12.not.i.i213 = icmp eq i32 %104, 0
  br i1 %tobool12.not.i.i213, label %do.body14.i.i218, label %do.body4.i.i214.do.body4.i.i214_crit_edge

do.body4.i.i214.do.body4.i.i214_crit_edge:        ; preds = %do.body4.i.i214
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i214

do.body14.i.i218:                                 ; preds = %do.body4.i.i214
  call void @__sanitizer_cov_trace_pc() #19
  %105 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i215 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i3.i.i215 to ptr
  %preempt_count.i.i4.i.i216 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i4.i.i216 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i4.i.i216, align 4
  %add.i5.i.i217 = add i32 %108, 1
  store volatile i32 %add.i5.i.i217, ptr %preempt_count.i.i4.i.i216, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i205

zram_slot_lock.exit219:                           ; preds = %test_and_set_bit_lock.exit.i.i208
  %109 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %3, align 8
  %flags.i220 = getelementptr %struct.zram_table_entry, ptr %112, i32 %110, i32 1
  %113 = ptrtoint ptr %flags.i220 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i220, align 4
  %and.i221 = and i32 %114, -134217729
  store i32 %and.i221, ptr %flags.i220, align 4
  %115 = load i32, ptr %index, align 4
  %116 = load ptr, ptr %3, align 8
  %flags.i222 = getelementptr %struct.zram_table_entry, ptr %116, i32 %115, i32 1
  %117 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i222, align 4
  %and.i223 = and i32 %118, -536870913
  store i32 %and.i223, ptr %flags.i222, align 4
  %119 = load i32, ptr %index, align 4
  %120 = load ptr, ptr %3, align 8
  %flags.i224 = getelementptr %struct.zram_table_entry, ptr %120, i32 %119, i32 1
  %121 = ptrtoint ptr %flags.i224 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %flags.i224, align 4
  %123 = and i32 %122, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i225 = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i225, label %do.body4.i.i226, label %zram_slot_unlock.exit231, !prof !255

do.body4.i.i226:                                  ; preds = %zram_slot_lock.exit219
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit231:                         ; preds = %zram_slot_lock.exit219
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i227 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i224, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i224, i32 1, i32 3, i32 1) #17
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i224, ptr %flags.i224, i32 16777216, ptr elementtype(i32) %flags.i224) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %125 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i228 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i228 to ptr
  %preempt_count.i.i.i.i229 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i.i.i229, align 4
  %sub.i.i.i230 = add i32 %128, -1
  store volatile i32 %sub.i.i.i230, ptr %preempt_count.i.i.i.i229, align 4
  br label %for.inc

if.end69:                                         ; preds = %zram_slot_unlock.exit
  call void @bio_init(ptr noundef nonnull %bio, ptr noundef nonnull %bio_vec, i16 noundef zeroext 1) #17
  %129 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bdev, align 8
  %131 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %132, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %133 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %134, %130
  br i1 %cmp.not.i, label %if.end69.bio_set_dev.exit_crit_edge, label %if.then.i

if.end69.bio_set_dev.exit_crit_edge:              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %conv1.i8.i = and i16 %132, -2177
  %135 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end69.bio_set_dev.exit_crit_edge
  %136 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %130, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio) #17
  %mul = shl i32 %blk_idx.1, 3
  %conv70 = zext i32 %mul to i64
  %137 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv70, ptr %bi_iter, align 8
  %138 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2049, ptr %bi_opf, align 8
  %call74 = call i32 @bio_add_page(ptr noundef nonnull %bio, ptr noundef nonnull %call38.i.i.i, i32 noundef 4096, i32 noundef 0) #17
  %call75 = call i32 @submit_bio_wait(ptr noundef nonnull %bio) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  %139 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %index, align 4
  call fastcc void @zram_slot_lock(ptr noundef %3, i32 noundef %140)
  %141 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %index, align 4
  %143 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %3, align 8
  %flags.i233 = getelementptr %struct.zram_table_entry, ptr %144, i32 %142, i32 1
  %145 = ptrtoint ptr %flags.i233 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags.i233, align 4
  %and.i234 = and i32 %146, -134217729
  store i32 %and.i234, ptr %flags.i233, align 4
  %147 = load i32, ptr %index, align 4
  %148 = load ptr, ptr %3, align 8
  %flags.i235 = getelementptr %struct.zram_table_entry, ptr %148, i32 %147, i32 1
  %149 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i235, align 4
  %and.i236 = and i32 %150, -536870913
  store i32 %and.i236, ptr %flags.i235, align 4
  %151 = load i32, ptr %index, align 4
  call fastcc void @zram_slot_unlock(ptr noundef %3, i32 noundef %151)
  br label %for.inc

if.end78:                                         ; preds = %bio_set_dev.exit
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bd_writes, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %bd_writes) #17
  %152 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %index, align 4
  call fastcc void @zram_slot_lock(ptr noundef %3, i32 noundef %153)
  %154 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %index, align 4
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %3, align 8
  %flags.i.i237 = getelementptr %struct.zram_table_entry, ptr %157, i32 %155, i32 1
  %158 = ptrtoint ptr %flags.i.i237 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags.i.i237, align 4
  %160 = and i32 %159, 117440511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %161 = icmp ne i32 %160, 0
  %and.i239 = and i32 %159, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239)
  %tobool.i240 = icmp ne i32 %and.i239, 0
  %or.cond274 = and i1 %161, %tobool.i240
  br i1 %or.cond274, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %and.i242 = and i32 %159, -134217729
  %162 = ptrtoint ptr %flags.i.i237 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and.i242, ptr %flags.i.i237, align 4
  %163 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %index, align 4
  %165 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %3, align 8
  %flags.i243 = getelementptr %struct.zram_table_entry, ptr %166, i32 %164, i32 1
  %167 = ptrtoint ptr %flags.i243 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags.i243, align 4
  %and.i244 = and i32 %168, -536870913
  store i32 %and.i244, ptr %flags.i243, align 4
  br label %next

if.end83:                                         ; preds = %if.end78
  call fastcc void @zram_free_page(ptr noundef %3, i32 noundef %155)
  %169 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %index, align 4
  %171 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %3, align 8
  %flags.i245 = getelementptr %struct.zram_table_entry, ptr %172, i32 %170, i32 1
  %173 = ptrtoint ptr %flags.i245 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags.i245, align 4
  %and.i246 = and i32 %174, -134217729
  store i32 %and.i246, ptr %flags.i245, align 4
  %175 = load i32, ptr %index, align 4
  %176 = load ptr, ptr %3, align 8
  %flags.i247 = getelementptr %struct.zram_table_entry, ptr %176, i32 %175, i32 1
  %177 = ptrtoint ptr %flags.i247 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags.i247, align 4
  %or.i248 = or i32 %178, 67108864
  store i32 %or.i248, ptr %flags.i247, align 4
  %179 = load i32, ptr %index, align 4
  %180 = load ptr, ptr %3, align 8
  %arrayidx.i = getelementptr %struct.zram_table_entry, ptr %180, i32 %179
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %blk_idx.1, ptr %arrayidx.i, align 8
  %call.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef %pages_stored, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %pages_stored) #17
  call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %182 = ptrtoint ptr %wb_limit_enable to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %wb_limit_enable, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool87.not = icmp eq i8 %183, 0
  br i1 %tobool87.not, label %if.end83.if.end95_crit_edge, label %land.lhs.true89

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

land.lhs.true89:                                  ; preds = %if.end83
  %184 = ptrtoint ptr %bd_wb_limit to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %bd_wb_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %185)
  %cmp91.not = icmp eq i64 %185, 0
  br i1 %cmp91.not, label %land.lhs.true89.if.end95_crit_edge, label %if.then93

land.lhs.true89.if.end95_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add i64 %185, -1
  %186 = ptrtoint ptr %bd_wb_limit to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %sub, ptr %bd_wb_limit, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %land.lhs.true89.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  br label %next

next:                                             ; preds = %if.end95, %if.then82, %if.end59.next_crit_edge, %if.end53.next_crit_edge, %zram_slot_lock.exit.next_crit_edge
  %blk_idx.2 = phi i32 [ 0, %if.end95 ], [ %blk_idx.1, %if.then82 ], [ %blk_idx.1, %zram_slot_lock.exit.next_crit_edge ], [ %blk_idx.1, %if.end53.next_crit_edge ], [ %blk_idx.1, %if.end59.next_crit_edge ]
  %187 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %index, align 4
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %3, align 8
  %flags.i249 = getelementptr %struct.zram_table_entry, ptr %190, i32 %188, i32 1
  %191 = ptrtoint ptr %flags.i249 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %flags.i249, align 4
  %193 = and i32 %192, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i.i250 = icmp eq i32 %193, 0
  br i1 %tobool.not.i.i250, label %do.body4.i.i251, label %zram_slot_unlock.exit256, !prof !255

do.body4.i.i251:                                  ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

zram_slot_unlock.exit256:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i252 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i249, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i249, i32 1, i32 3, i32 1) #17
  %194 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i249, ptr %flags.i249, i32 16777216, ptr elementtype(i32) %flags.i249) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %195 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i253 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i253 to ptr
  %preempt_count.i.i.i.i254 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i.i254, align 4
  %sub.i.i.i255 = add i32 %198, -1
  store volatile i32 %sub.i.i.i255, ptr %preempt_count.i.i.i.i254, align 4
  br label %for.inc

cleanup.thread:                                   ; preds = %alloc_block_bdev.exit.cleanup.thread_crit_edge, %retry.i.cleanup.thread_crit_edge, %if.then30
  %ret.1.ph = phi i32 [ -5, %if.then30 ], [ -28, %retry.i.cleanup.thread_crit_edge ], [ -28, %alloc_block_bdev.exit.cleanup.thread_crit_edge ]
  %blk_idx.3.ph = phi i32 [ %blk_idx.0298, %if.then30 ], [ 0, %retry.i.cleanup.thread_crit_edge ], [ 0, %alloc_block_bdev.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #17
  br label %for.end

for.inc:                                          ; preds = %zram_slot_unlock.exit256, %if.then77, %zram_slot_unlock.exit231
  %ret.1 = phi i32 [ %ret.0296, %zram_slot_unlock.exit256 ], [ %ret.0296, %zram_slot_unlock.exit231 ], [ %call75, %if.then77 ]
  %blk_idx.3 = phi i32 [ %blk_idx.2, %zram_slot_unlock.exit256 ], [ %blk_idx.1, %zram_slot_unlock.exit231 ], [ %blk_idx.1, %if.then77 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #17
  %199 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %index, align 4
  %inc = add i32 %200, 1
  store i32 %inc, ptr %index, align 4
  %dec = add i32 %nr_pages.1295, -1
  %cmp25.not = icmp eq i32 %dec, 0
  br i1 %cmp25.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup.thread ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %blk_idx.4 = phi i32 [ %blk_idx.3.ph, %cleanup.thread ], [ %blk_idx.3, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blk_idx.4)
  %tobool97.not = icmp eq i32 %blk_idx.4, 0
  br i1 %tobool97.not, label %for.end.if.end99_crit_edge, label %if.then98

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.then98:                                        ; preds = %for.end
  %bitmap.i257 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 15
  %201 = ptrtoint ptr %bitmap.i257 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bitmap.i257, align 4
  %call.i258 = call i32 @_test_and_clear_bit(i32 noundef %blk_idx.4, ptr noundef %202) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool.not.i259 = icmp eq i32 %call.i258, 0
  br i1 %tobool.not.i259, label %land.rhs.i, label %if.then98.free_block_bdev.exit_crit_edge

if.then98.free_block_bdev.exit_crit_edge:         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_block_bdev.exit

land.rhs.i:                                       ; preds = %if.then98
  %.b40.i = load i1, ptr @free_block_bdev.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.free_block_bdev.exit_crit_edge, label %if.then.i260, !prof !245

land.rhs.i.free_block_bdev.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_block_bdev.exit

if.then.i260:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @free_block_bdev.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 599, i32 noundef 9, ptr noundef null) #17
  br label %free_block_bdev.exit

free_block_bdev.exit:                             ; preds = %if.then.i260, %land.rhs.i.free_block_bdev.exit_crit_edge, %if.then98.free_block_bdev.exit_crit_edge
  %bd_count.i261 = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 14
  %call.i.i.i262 = call zeroext i1 @__kasan_check_write(ptr noundef %bd_count.i261, i32 noundef 8) #17
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %bd_count.i261) #17
  br label %if.end99

if.end99:                                         ; preds = %free_block_bdev.exit, %for.end.if.end99_crit_edge, %for.cond.preheader.if.end99_crit_edge
  %ret.2312 = phi i32 [ %ret.2, %free_block_bdev.exit ], [ %ret.2, %for.end.if.end99_crit_edge ], [ %len, %for.cond.preheader.if.end99_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #17
  br label %release_init_lock

release_init_lock:                                ; preds = %if.end99, %if.end20.release_init_lock_crit_edge, %if.end17.release_init_lock_crit_edge, %if.end14.release_init_lock_crit_edge
  %ret.3 = phi i32 [ %ret.2312, %if.end99 ], [ -22, %if.end14.release_init_lock_crit_edge ], [ -19, %if.end17.release_init_lock_crit_edge ], [ -12, %if.end20.release_init_lock_crit_edge ]
  call void @up_read(ptr noundef %init_lock) #17
  br label %cleanup101

cleanup101:                                       ; preds = %release_init_lock, %lor.lhs.false.cleanup101_crit_edge, %if.end.cleanup101_crit_edge, %if.else4.cleanup101_crit_edge
  %retval.0 = phi i32 [ %ret.3, %release_init_lock ], [ -22, %if.else4.cleanup101_crit_edge ], [ -22, %lor.lhs.false.cleanup101_crit_edge ], [ -22, %if.end.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bio_vec) #17
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writeback_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %bd_wb_limit = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %bd_wb_limit to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_wb_limit, align 8
  tail call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.24, i64 noundef %5) #17
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writeback_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #17
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %val, align 8, !annotation !270
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  call void @down_read(ptr noundef %init_lock) #17
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  %bd_wb_limit = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %bd_wb_limit to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %bd_wb_limit, align 8
  call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  call void @up_read(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writeback_limit_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %wb_limit_enable = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wb_limit_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wb_limit_enable, align 4, !range !260
  tail call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  %6 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %6) #17
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writeback_limit_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #17
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %val, align 8, !annotation !270
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  call void @down_read(ptr noundef %init_lock) #17
  %wb_limit_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %wb_limit_lock) #17
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool2 = icmp ne i64 %6, 0
  %wb_limit_enable = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 12
  %frombool = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %wb_limit_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %wb_limit_enable, align 4
  call void @_raw_spin_unlock(ptr noundef %wb_limit_lock) #17
  call void @up_read(ptr noundef %init_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_stat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %failed_reads = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %failed_reads, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %failed_reads) #17
  %failed_writes = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 4
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %failed_writes, i32 noundef 8) #17
  %call.i16 = tail call i64 @generic_atomic64_read(ptr noundef %failed_writes) #17
  %invalid_io = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 5
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %invalid_io, i32 noundef 8) #17
  %call.i18 = tail call i64 @generic_atomic64_read(ptr noundef %invalid_io) #17
  %notify_free = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 6
  %call.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %notify_free, i32 noundef 8) #17
  %call.i20 = tail call i64 @generic_atomic64_read(ptr noundef %notify_free) #17
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.55, i64 noundef %call.i, i64 noundef %call.i16, i64 noundef %call.i18, i64 noundef %call.i20) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mm_stat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  %pool_stats = alloca %struct.zs_pool_stats, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pool_stats) #17
  %4 = ptrtoint ptr %pool_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pool_stats, align 4
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %disksize.i = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %disksize.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %disksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.i.not = icmp eq i64 %6, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mem_pool = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_pool, align 4
  %call2 = tail call i32 @zs_get_total_pages(ptr noundef %8) #17
  %conv = zext i32 %call2 to i64
  %9 = ptrtoint ptr %mem_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_pool, align 4
  call void @zs_pool_stats(ptr noundef %10, ptr noundef nonnull %pool_stats) #17
  %phi.bo = shl nuw nsw i64 %conv, 12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mem_used.0 = phi i64 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %stats = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6
  %pages_stored = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pages_stored, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %pages_stored) #17
  %max_used_pages = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 11
  %call.i.i32 = call zeroext i1 @__kasan_check_read(ptr noundef %max_used_pages, i32 noundef 4) #17
  %11 = ptrtoint ptr %max_used_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %max_used_pages, align 4
  %shl = shl i64 %call.i, 12
  %call.i.i33 = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 8) #17
  %call.i34 = call i64 @generic_atomic64_read(ptr noundef %stats) #17
  %limit_pages = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %limit_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %limit_pages, align 8
  %shl10 = shl i32 %14, 12
  %shl11 = shl i32 %12, 12
  %same_pages = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 7
  %call.i.i35 = call zeroext i1 @__kasan_check_read(ptr noundef %same_pages, i32 noundef 8) #17
  %call.i36 = call i64 @generic_atomic64_read(ptr noundef %same_pages) #17
  %call.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pool_stats, i32 noundef 4) #17
  %15 = ptrtoint ptr %pool_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %pool_stats, align 4
  %huge_pages = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 8
  %call.i.i38 = call zeroext i1 @__kasan_check_read(ptr noundef %huge_pages, i32 noundef 8) #17
  %call.i39 = call i64 @generic_atomic64_read(ptr noundef %huge_pages) #17
  %huge_pages_since = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 9
  %call.i.i40 = call zeroext i1 @__kasan_check_read(ptr noundef %huge_pages_since, i32 noundef 8) #17
  %call.i41 = call i64 @generic_atomic64_read(ptr noundef %huge_pages_since) #17
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.57, i64 noundef %shl, i64 noundef %call.i34, i64 noundef %mem_used.0, i32 noundef %shl10, i32 noundef %shl11, i64 noundef %call.i36, i32 noundef %16, i64 noundef %call.i39, i64 noundef %call.i41) #17
  call void @up_read(ptr noundef %init_lock) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pool_stats) #17
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zs_pool_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd_stat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %bd_count = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bd_count, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %bd_count) #17
  %bd_reads = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 15
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bd_reads, i32 noundef 8) #17
  %call.i15 = tail call i64 @generic_atomic64_read(ptr noundef %bd_reads) #17
  %bd_writes = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 16
  %call.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bd_writes, i32 noundef 8) #17
  %call.i17 = tail call i64 @generic_atomic64_read(ptr noundef %bd_writes) #17
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.59, i64 noundef %call.i, i64 noundef %call.i15, i64 noundef %call.i17) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_stat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %init_lock = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %writestall = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writestall, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %writestall) #17
  %miss_free = getelementptr inbounds %struct.zram, ptr %3, i32 0, i32 6, i32 13
  %call.i.i9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %miss_free, i32 noundef 8) #17
  %call.i10 = tail call i64 @generic_atomic64_read(ptr noundef %miss_free) #17
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.61, i32 noundef 1, i64 noundef %call.i, i64 noundef %call.i10) #17
  tail call void @up_read(ptr noundef %init_lock) #17
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_block_state(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disksize = getelementptr inbounds %struct.zram, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disksize to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %disksize, align 8
  %shr = lshr i64 %3, 12
  %conv = trunc i64 %shr to i32
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %count, i32 noundef 3264, i32 noundef -1) #22
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup32

if.end:                                           ; preds = %entry
  %init_lock = getelementptr inbounds %struct.zram, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %init_lock) #17
  %4 = ptrtoint ptr %disksize to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %disksize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.i.not = icmp eq i64 %5, 0
  br i1 %tobool.i.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @up_read(ptr noundef %init_lock) #17
  tail call void @kvfree(ptr noundef nonnull %call.i) #17
  br label %cleanup32

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %conv5 = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv)
  %cmp114 = icmp ult i32 %conv5, %conv
  br i1 %cmp114, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %ts.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %written.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %written.1, %for.inc.for.body_crit_edge ]
  %index.0116 = phi i32 [ %conv5, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %count.addr.0115 = phi i32 [ %count, %for.body.lr.ph ], [ %count.addr.1, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %flags.i = getelementptr %struct.zram_table_entry, ptr %9, i32 %index.0116, i32 1
  %10 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %for.body
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #17
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and.i.i.i.i = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !248

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #17
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 16777216, ptr elementtype(i32) %flags.i) #17, !srcloc !249
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !250
  %17 = and i32 %asmresult.i.i.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %phi.cmp.i.not.i.i = icmp eq i32 %17, 0
  br i1 %phi.cmp.i.not.i.i, label %zram_slot_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !245

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !251
  %18 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i1.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !252
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !253
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 16777216
  %tobool12.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i3.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %28, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
  br label %while.cond.i.i

zram_slot_lock.exit:                              ; preds = %test_and_set_bit_lock.exit.i.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %flags.i.i = getelementptr %struct.zram_table_entry, ptr %30, i32 %index.0116, i32 1
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %33 = and i32 %32, 117440511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %zram_slot_lock.exit.next_crit_edge, label %if.end9

zram_slot_lock.exit.next_crit_edge:               ; preds = %zram_slot_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %next

if.end9:                                          ; preds = %zram_slot_lock.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #17
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %ac_time = getelementptr %struct.zram_table_entry, ptr %35, i32 %index.0116, i32 2
  %36 = ptrtoint ptr %ac_time to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ac_time, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %37) #17
  %38 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %38)
  %ts.sroa.0.0.copyload40 = load i64, ptr %tmp, align 8
  %39 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %ts.sroa.5.0.copyload41 = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #17
  %add.ptr = getelementptr i8, ptr %call.i, i32 %written.0118
  %div = sdiv i32 %ts.sroa.5.0.copyload41, 1000
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %flags.i78 = getelementptr %struct.zram_table_entry, ptr %41, i32 %index.0116, i32 1
  %42 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i78, align 4
  %and.i = and i32 %43, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i79.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i79.not, i32 46, i32 115
  %and.i81 = and i32 %43, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.i82.not = icmp eq i32 %and.i81, 0
  %cond14 = select i1 %tobool.i82.not, i32 46, i32 119
  %and.i84 = and i32 %43, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i85.not = icmp eq i32 %and.i84, 0
  %cond17 = select i1 %tobool.i85.not, i32 46, i32 104
  %and.i87 = and i32 %43, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.i88.not = icmp eq i32 %and.i87, 0
  %cond20 = select i1 %tobool.i88.not, i32 46, i32 105
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %count.addr.0115, ptr noundef nonnull @.str.64, i32 noundef %index.0116, i64 noundef %ts.sroa.0.0.copyload40, i32 noundef %div, i32 noundef %cond, i32 noundef %cond14, i32 noundef %cond17, i32 noundef %cond20)
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0115, i32 %call21)
  %cmp22.not = icmp ugt i32 %count.addr.0115, %call21
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %flags.i89 = getelementptr %struct.zram_table_entry, ptr %45, i32 %index.0116, i32 1
  %46 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i89, align 4
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i90, label %cleanup, !prof !255

do.body4.i.i90:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

if.end25:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %call21, %written.0118
  %sub = sub i32 %count.addr.0115, %call21
  br label %next

next:                                             ; preds = %if.end25, %zram_slot_lock.exit.next_crit_edge
  %count.addr.1 = phi i32 [ %sub, %if.end25 ], [ %count.addr.0115, %zram_slot_lock.exit.next_crit_edge ]
  %written.1 = phi i32 [ %add, %if.end25 ], [ %written.0118, %zram_slot_lock.exit.next_crit_edge ]
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %flags.i95 = getelementptr %struct.zram_table_entry, ptr %50, i32 %index.0116, i32 1
  %51 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i95, align 4
  %53 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i96 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i96, label %do.body4.i.i97, label %for.inc, !prof !255

do.body4.i.i97:                                   ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !256
  unreachable

cleanup:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i91 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i89, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i89, i32 1, i32 3, i32 1) #17
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i89, ptr %flags.i89, i32 16777216, ptr elementtype(i32) %flags.i89) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %55 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i92 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i94 = add i32 %58, -1
  store volatile i32 %sub.i.i.i94, ptr %preempt_count.i.i.i.i93, align 4
  br label %for.end

for.inc:                                          ; preds = %next
  %call.i.i.i.i98 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i95, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  call void @llvm.prefetch.p0(ptr %flags.i95, i32 1, i32 3, i32 1) #17
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i95, ptr %flags.i95, i32 16777216, ptr elementtype(i32) %flags.i95) #17, !srcloc !258
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !259
  %60 = call i32 @llvm.read_register.i32(metadata !235) #17
  %and.i.i.i.i.i99 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i99 to ptr
  %preempt_count.i.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i100, align 4
  %sub.i.i.i101 = add i32 %63, -1
  store volatile i32 %sub.i.i.i101, ptr %preempt_count.i.i.i.i100, align 4
  %64 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ppos, align 8
  %add26 = add i64 %65, 1
  store i64 %add26, ptr %ppos, align 8
  %inc = add nuw i32 %index.0116, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end4.for.end_crit_edge
  %written.0111 = phi i32 [ %written.0118, %cleanup ], [ 0, %if.end4.for.end_crit_edge ], [ %written.1, %for.inc.for.end_crit_edge ]
  call void @up_read(ptr noundef %init_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0111)
  %cmp9.i.i = icmp slt i32 %written.0111, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !245

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %for.end
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %written.0111, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #17
  %call.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %written.0111, i32 -1226833920) #25, !srcloc !278
  %asmresult.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef %written.0111) #17
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call.i, i32 noundef %written.0111) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %written.0111, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %written.0111, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool29.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool29.not, i32 %written.0111, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %67 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kvfree(ptr noundef nonnull %call.i) #17
  br label %cleanup32

cleanup32:                                        ; preds = %copy_to_user.exit.thread, %if.then2, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ %67, %copy_to_user.exit.thread ], [ -22, %if.then2 ], [ -12, %entry.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hot_remove_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %dev_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_id) #17
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev_id, align 4, !annotation !270
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %dev_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @zram_index_mutex, i32 noundef 0) #17
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_id, align 4
  %call3 = call ptr @idr_find(ptr noundef nonnull @zram_index_idr, i32 noundef %4) #17
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup.sink.split_crit_edge, label %if.then5

if.end2.cleanup.sink.split_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.then5:                                         ; preds = %if.end2
  %call6 = call fastcc i32 @zram_remove(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %5, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

5:                                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id, align 4
  %call9 = call ptr @idr_remove(ptr noundef nonnull @zram_index_idr, i32 noundef %7) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %5, %if.then5.cleanup.sink.split_crit_edge, %if.end2.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %5 ], [ -19, %if.end2.cleanup.sink.split_crit_edge ], [ %call6, %if.then5.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @zram_index_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_id) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zram_remove(ptr noundef %zram) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 3
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #17
  %bd_openers = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %bd_openers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_openers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk, align 8
  %open_mutex2 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex2) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %claim = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 9
  %10 = ptrtoint ptr %claim to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %claim, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then5, label %do.end.critedge

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %claim to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %claim, align 8
  %13 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_disk, align 8
  %open_mutex9.c = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex9.c) #17
  %debugfs_dir.i = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 17
  %15 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %16) #17
  %call = tail call i32 @sync_blockdev(ptr noundef %3) #17
  tail call fastcc void @zram_reset_device(ptr noundef %zram)
  %17 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk, align 4
  %disk_name.c85 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %call14.c86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %disk_name.c85) #20
  %19 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %20) #17
  br label %if.end55

do.end.critedge:                                  ; preds = %if.end
  %21 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_disk, align 8
  %open_mutex9.c84 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex9.c84) #17
  %debugfs_dir.i88 = getelementptr inbounds %struct.zram, ptr %zram, i32 0, i32 17
  %23 = ptrtoint ptr %debugfs_dir.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_dir.i88, align 4
  tail call void @debugfs_remove(ptr noundef %24) #17
  %25 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disk, align 4
  %disk_name.c = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 3
  %call14.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %disk_name.c) #20
  %27 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %28) #17
  %29 = ptrtoint ptr %claim to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %claim, align 8, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  br i1 %tobool18.not, label %do.end.critedge.if.end55_crit_edge, label %land.rhs22

do.end.critedge.if.end55_crit_edge:               ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

land.rhs22:                                       ; preds = %do.end.critedge
  %.b83 = load i1, ptr @zram_remove.__already_done, align 1
  br i1 %.b83, label %land.rhs22.if.end55_crit_edge, label %if.then29, !prof !245

land.rhs22.if.end55_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.then29:                                        ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @zram_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2033, i32 noundef 9, ptr noundef null) #17
  br label %if.end55

if.end55:                                         ; preds = %if.then29, %land.rhs22.if.end55_crit_edge, %do.end.critedge.if.end55_crit_edge, %if.then5
  tail call fastcc void @zram_reset_device(ptr noundef %zram)
  %31 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %32) #17
  tail call void @kfree(ptr noundef %zram) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zcomp_cpu_up_prepare(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zcomp_cpu_dead(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !45, !47, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82, !84, !85, !87, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !153, !155, !157, !159, !160, !162, !163, !165, !166, !168, !170, !171, !173, !175, !176, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !204, !205, !207, !208, !209, !210, !212, !214, !215, !217, !219, !221, !223, !225, !226, !227, !228, !230, !231, !232, !233}
!llvm.named.register.sp = !{!235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @__initcall__kmod_zram__302_2178_zram_init6, !1, !"__initcall__kmod_zram__302_2178_zram_init6", i1 false, i1 false}
!1 = !{!"../drivers/block/zram/zram_drv.c", i32 2178, i32 1}
!2 = !{ptr @__exitcall_zram_exit, !3, !"__exitcall_zram_exit", i1 false, i1 false}
!3 = !{!"../drivers/block/zram/zram_drv.c", i32 2179, i32 1}
!4 = !{ptr @__param_num_devices, !5, !"__param_num_devices", i1 false, i1 false}
!5 = !{!"../drivers/block/zram/zram_drv.c", i32 2181, i32 1}
!6 = !{ptr @__UNIQUE_ID_num_devicestype303, !5, !"__UNIQUE_ID_num_devicestype303", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_num_devices304, !8, !"__UNIQUE_ID_num_devices304", i1 false, i1 false}
!8 = !{!"../drivers/block/zram/zram_drv.c", i32 2182, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../drivers/block/zram/zram_drv.c", i32 2184, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author307, !13, !"__UNIQUE_ID_author307", i1 false, i1 false}
!13 = !{!"../drivers/block/zram/zram_drv.c", i32 2185, i32 1}
!14 = !{ptr @__UNIQUE_ID_description308, !15, !"__UNIQUE_ID_description308", i1 false, i1 false}
!15 = !{!"../drivers/block/zram/zram_drv.c", i32 2186, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/zram/zram_drv.c", i32 2128, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/block/zram/zram_drv.c", i32 2111, i32 11}
!20 = !{ptr @zram_control_class, !21, !"zram_control_class", i1 false, i1 false}
!21 = !{!"../drivers/block/zram/zram_drv.c", i32 2110, i32 21}
!22 = !{ptr @zram_control_class_groups, !23, !"zram_control_class_groups", i1 false, i1 false}
!23 = !{!"../drivers/block/zram/zram_drv.c", i32 2108, i32 1}
!24 = !{ptr @zram_control_class_group, !23, !"zram_control_class_group", i1 false, i1 false}
!25 = !{ptr @zram_control_class_attrs, !26, !"zram_control_class_attrs", i1 false, i1 false}
!26 = !{!"../drivers/block/zram/zram_drv.c", i32 2103, i32 26}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/zram/zram_drv.c", i32 2070, i32 2}
!29 = !{ptr @class_attr_hot_add, !30, !"class_attr_hot_add", i1 false, i1 false}
!30 = !{!"../drivers/block/zram/zram_drv.c", i32 2069, i32 31}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/zram/zram_drv.c", i32 2067, i32 35}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/zram/zram_drv.c", i32 42, i32 8}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @zram_index_mutex, !34, !"zram_index_mutex", i1 false, i1 false}
!37 = !{ptr @zram_add.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/block/zram/zram_drv.c", i32 1926, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @zram_add.__key.7, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/block/zram/zram_drv.c", i32 1928, i32 2}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @zram_add.__key.9, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/block/zram/zram_drv.c", i32 1932, i32 15}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/zram/zram_drv.c", i32 1934, i32 3}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @zram_add._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @zram_add._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/block/zram/zram_drv.c", i32 1946, i32 38}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/block/zram/zram_drv.c", i32 1986, i32 2}
!55 = !{ptr @zram_add._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @zram_add._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @zram_devops, !58, !"zram_devops", i1 false, i1 false}
!58 = !{!"../drivers/block/zram/zram_drv.c", i32 1848, i32 45}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/block/zram/zram_drv.c", i32 1253, i32 2}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/block/zram/zram_drv.c", i32 599, i32 2}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/block/zram/zram_drv.c", i32 1315, i32 3}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__zram_bvec_read._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @__zram_bvec_read._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/bio.h", i32 248, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/block/zram/zram_drv.c", i32 208, i32 2}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/block/zram/zram_drv.c", i32 1384, i32 3}
!77 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__zram_bvec_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @__zram_bvec_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @huge_class_size, !81, !"huge_class_size", i1 false, i1 false}
!81 = !{!"../drivers/block/zram/zram_drv.c", i32 53, i32 15}
!82 = !{ptr @zram_disk_groups, !83, !"zram_disk_groups", i1 false, i1 false}
!83 = !{!"../drivers/block/zram/zram_drv.c", i32 1906, i32 1}
!84 = !{ptr @zram_disk_group, !83, !"zram_disk_group", i1 false, i1 false}
!85 = !{ptr @zram_disk_attrs, !86, !"zram_disk_attrs", i1 false, i1 false}
!86 = !{!"../drivers/block/zram/zram_drv.c", i32 1881, i32 26}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/block/zram/zram_drv.c", i32 1866, i32 8}
!89 = !{ptr @dev_attr_disksize, !88, !"dev_attr_disksize", i1 false, i1 false}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/block/zram/zram_drv.c", i32 252, i32 35}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/block/zram/zram_drv.c", i32 1760, i32 3}
!94 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @disksize_store._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @disksize_store._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/block/zram/zram_drv.c", i32 1773, i32 3}
!99 = !{ptr @disksize_store._entry.27, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @disksize_store._entry_ptr.29, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/block/zram/zram_drv.c", i32 1867, i32 8}
!103 = !{ptr @dev_attr_initstate, !102, !"dev_attr_initstate", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/block/zram/zram_drv.c", i32 244, i32 35}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/block/zram/zram_drv.c", i32 1868, i32 8}
!108 = !{ptr @dev_attr_reset, !107, !"dev_attr_reset", i1 false, i1 false}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/zram/zram_drv.c", i32 1865, i32 8}
!111 = !{ptr @dev_attr_compact, !110, !"dev_attr_compact", i1 false, i1 false}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/zram/zram_drv.c", i32 1869, i32 8}
!114 = !{ptr @dev_attr_mem_limit, !113, !"dev_attr_mem_limit", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/zram/zram_drv.c", i32 1870, i32 8}
!117 = !{ptr @dev_attr_mem_used_max, !116, !"dev_attr_mem_used_max", i1 false, i1 false}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/block/zram/zram_drv.c", i32 1871, i32 8}
!120 = !{ptr @dev_attr_idle, !119, !"dev_attr_idle", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/zram/zram_drv.c", i32 329, i32 24}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/zram/zram_drv.c", i32 1872, i32 8}
!125 = !{ptr @dev_attr_max_comp_streams, !124, !"dev_attr_max_comp_streams", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/zram/zram_drv.c", i32 1873, i32 8}
!128 = !{ptr @dev_attr_comp_algorithm, !127, !"dev_attr_comp_algorithm", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/block/zram/zram_drv.c", i32 1047, i32 3}
!131 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @comp_algorithm_store._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @comp_algorithm_store._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/zram/zram_drv.c", i32 1875, i32 8}
!136 = !{ptr @dev_attr_backing_dev, !135, !"dev_attr_backing_dev", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/zram/zram_drv.c", i32 457, i32 15}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/zram/zram_drv.c", i32 496, i32 3}
!141 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @backing_dev_store._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @backing_dev_store._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/block/zram/zram_drv.c", i32 558, i32 2}
!146 = !{ptr @backing_dev_store._entry.46, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @backing_dev_store._entry_ptr.48, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @zram_wb_devops, !149, !"zram_wb_devops", i1 false, i1 false}
!149 = !{!"../drivers/block/zram/zram_drv.c", i32 1857, i32 45}
!150 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/zram/zram_drv.c", i32 1876, i32 8}
!152 = !{ptr @dev_attr_writeback, !151, !"dev_attr_writeback", i1 false, i1 false}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/block/zram/zram_drv.c", i32 665, i32 28}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/zram/zram_drv.c", i32 668, i32 20}
!157 = !{ptr @.str.52, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/block/zram/zram_drv.c", i32 1877, i32 8}
!159 = !{ptr @dev_attr_writeback_limit, !158, !"dev_attr_writeback_limit", i1 false, i1 false}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/zram/zram_drv.c", i32 1878, i32 8}
!162 = !{ptr @dev_attr_writeback_limit_enable, !161, !"dev_attr_writeback_limit_enable", i1 false, i1 false}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/zram/zram_drv.c", i32 1165, i32 8}
!165 = !{ptr @dev_attr_io_stat, !164, !"dev_attr_io_stat", i1 false, i1 false}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/block/zram/zram_drv.c", i32 1081, i32 4}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/zram/zram_drv.c", i32 1166, i32 8}
!170 = !{ptr @dev_attr_mm_stat, !169, !"dev_attr_mm_stat", i1 false, i1 false}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/zram/zram_drv.c", i32 1112, i32 4}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/zram/zram_drv.c", i32 1168, i32 8}
!175 = !{ptr @dev_attr_bd_stat, !174, !"dev_attr_bd_stat", i1 false, i1 false}
!176 = !{ptr @.str.59, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/block/zram/zram_drv.c", i32 1137, i32 3}
!178 = !{ptr @.str.60, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/zram/zram_drv.c", i32 1170, i32 8}
!180 = !{ptr @dev_attr_debug_stat, !179, !"dev_attr_debug_stat", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/block/zram/zram_drv.c", i32 1156, i32 4}
!183 = !{ptr @.str.62, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/zram/zram_drv.c", i32 45, i32 41}
!185 = distinct !{null, !186, !"default_compressor", i1 false, i1 false}
!186 = !{!"../drivers/block/zram/zram_drv.c", i32 45, i32 20}
!187 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/block/zram/zram_drv.c", i32 975, i32 22}
!189 = !{ptr @zram_debugfs_root, !190, !"zram_debugfs_root", i1 false, i1 false}
!190 = !{!"../drivers/block/zram/zram_drv.c", i32 888, i32 23}
!191 = !{ptr @proc_zram_block_state_op, !192, !"proc_zram_block_state_op", i1 false, i1 false}
!192 = !{!"../drivers/block/zram/zram_drv.c", i32 962, i32 37}
!193 = !{ptr @.str.64, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/block/zram/zram_drv.c", i32 935, i32 4}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!197 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!200 = !{ptr @.str.67, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/zram/zram_drv.c", i32 2101, i32 8}
!204 = !{ptr @class_attr_hot_remove, !203, !"class_attr_hot_remove", i1 false, i1 false}
!205 = !{ptr @.str.69, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/block/zram/zram_drv.c", i32 2028, i32 2}
!207 = !{ptr @.str.70, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @zram_remove._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @zram_remove._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../drivers/block/zram/zram_drv.c", i32 2033, i32 2}
!212 = !{ptr @.str.71, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/zram/zram_drv.c", i32 40, i32 8}
!214 = !{ptr @zram_index_idr, !213, !"zram_index_idr", i1 false, i1 false}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../drivers/block/zram/zram_drv.c", i32 2118, i32 2}
!217 = !{ptr @zram_major, !218, !"zram_major", i1 false, i1 false}
!218 = !{!"../drivers/block/zram/zram_drv.c", i32 44, i32 12}
!219 = !{ptr @.str.72, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/block/zram/zram_drv.c", i32 2136, i32 53}
!221 = !{ptr @zram_init.__key, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/block/zram/zram_drv.c", i32 2141, i32 8}
!223 = !{ptr @.str.73, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/block/zram/zram_drv.c", i32 2143, i32 3}
!225 = !{ptr @.str.74, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @zram_init._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @zram_init._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.76, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/block/zram/zram_drv.c", i32 2151, i32 3}
!230 = !{ptr @zram_init._entry.75, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @zram_init._entry_ptr.77, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @__param_str_num_devices, !5, !"__param_str_num_devices", i1 false, i1 false}
!233 = !{ptr @num_devices, !234, !"num_devices", i1 false, i1 false}
!234 = !{!"../drivers/block/zram/zram_drv.c", i32 48, i32 21}
!235 = !{!"sp"}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{!"branch_weights", i32 4000000, i32 4001}
!247 = !{i64 2151960873}
!248 = !{!"branch_weights", i32 2146410443, i32 1073205}
!249 = !{i64 2148399991, i64 2148400023, i64 2148400052, i64 2148400086, i64 2148400117, i64 2148400140}
!250 = !{i64 2148489096}
!251 = !{i64 2151961033}
!252 = !{i64 2151961310}
!253 = !{i64 2151961152}
!254 = !{i64 2151961515}
!255 = !{!"branch_weights", i32 1, i32 2000}
!256 = !{i64 2151962578, i64 2151963070, i64 2151962615, i64 2151962671, i64 2151962705, i64 2151962729, i64 2151962770, i64 2151962791, i64 2151962819, i64 2151962853}
!257 = !{i64 2148487983}
!258 = !{i64 2148398378, i64 2148398410, i64 2148398439, i64 2148398473, i64 2148398504, i64 2148398527}
!259 = !{i64 2151963973}
!260 = !{i8 0, i8 2}
!261 = !{i64 2151961837}
!262 = !{i64 2151961997}
!263 = !{i64 2153856158}
!264 = !{i64 2152517793}
!265 = !{i64 2152518000}
!266 = !{i64 2153858929}
!267 = !{i64 2148492980}
!268 = !{i64 875666, i64 875690, i64 875711, i64 875728, i64 875745}
!269 = !{i64 2148493206}
!270 = !{!"auto-init"}
!271 = !{i64 794833, i64 794894}
!272 = !{i64 797565}
!273 = !{i64 797850}
!274 = !{i64 2152813582}
!275 = !{i64 2152813424}
!276 = !{i64 2152813752}
!277 = !{i64 2150022959}
!278 = !{i64 2152515657, i64 2152515682}
