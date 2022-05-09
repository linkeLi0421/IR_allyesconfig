; ModuleID = '/llk/IR_all_yes/drivers/block/brd.c_pt.bc'
source_filename = "../drivers/block/brd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.brd_device = type { i32, ptr, %struct.list_head, %struct.spinlock, %struct.xarray, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_rd_nr = internal constant [10 x i8] c"brd.rd_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rd_nr = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_rd_nr = internal constant %struct.kernel_param { ptr @__param_str_rd_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.74 { ptr @rd_nr } }, section "__param", align 4
@__UNIQUE_ID_rd_nrtype300 = internal constant [23 x i8] c"brd.parmtype=rd_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rd_nr301 = internal constant [45 x i8] c"brd.parm=rd_nr:Maximum number of brd devices\00", section ".modinfo", align 1
@rd_size = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_str_rd_size = internal constant [12 x i8] c"brd.rd_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rd_size = internal constant %struct.kernel_param { ptr @__param_str_rd_size, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.74 { ptr @rd_size } }, section "__param", align 4
@__UNIQUE_ID_rd_sizetype302 = internal constant [27 x i8] c"brd.parmtype=rd_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_rd_size303 = internal constant [50 x i8] c"brd.parm=rd_size:Size of each RAM disk in kbytes.\00", section ".modinfo", align 1
@__param_str_max_part = internal constant [13 x i8] c"brd.max_part\00", align 1
@max_part = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_max_part = internal constant %struct.kernel_param { ptr @__param_str_max_part, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.74 { ptr @max_part } }, section "__param", align 4
@__UNIQUE_ID_max_parttype304 = internal constant [26 x i8] c"brd.parmtype=max_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_part305 = internal constant [56 x i8] c"brd.parm=max_part:Num Minors to reserve between devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [27 x i8] c"brd.file=drivers/block/brd\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [16 x i8] c"brd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [26 x i8] c"brd.alias=block-major-1-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [13 x i8] c"brd.alias=rd\00", section ".modinfo", align 1
@__setup_str_ramdisk_size = internal constant [14 x i8] c"ramdisk_size=\00", section ".init.rodata", align 1
@__setup_ramdisk_size = internal global %struct.obs_kernel_param { ptr @__setup_str_ramdisk_size, ptr @ramdisk_size, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ramdisk\00", [24 x i8] zeroinitializer }, align 32
@brd_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016brd: module unloaded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brd_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/block/brd.c\00", [44 x i8] zeroinitializer }, align 32
@brd_exit._entry_ptr = internal global ptr @brd_exit._entry, section ".printk_index", align 4
@__initcall__kmod_brd__310_521_brd_init6 = internal global ptr @brd_init, section ".initcall6.init", align 4
@__exitcall_brd_exit = internal global ptr @brd_exit, section ".exitcall.exit", align 4
@brd_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@brd_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @brd_devices, ptr @brd_devices }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ramdisk_pages\00", [18 x i8] zeroinitializer }, align 32
@brd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016brd: module loaded\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brd_init\00", [23 x i8] zeroinitializer }, align 32
@brd_init._entry_ptr = internal global ptr @brd_init._entry, section ".printk_index", align 4
@brd_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016brd: module NOT loaded !!!\0A\00", [34 x i8] zeroinitializer }, align 32
@brd_init._entry_ptr.9 = internal global ptr @brd_init._entry.7, section ".printk_index", align 4
@brd_check_and_reset_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016brd: max_part can't be larger than %d, reset max_part = %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brd_check_and_reset_par\00", [40 x i8] zeroinitializer }, align 32
@brd_check_and_reset_par._entry_ptr = internal global ptr @brd_check_and_reset_par._entry, section ".printk_index", align 4
@brd_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&brd->brd_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ram%d\00", [26 x i8] zeroinitializer }, align 32
@brd_alloc.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@brd_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @brd_submit_bio, ptr null, ptr null, ptr @brd_rw_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@brd_submit_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"rd_nr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 334, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"rd_size\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 338, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"max_part\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 342, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 515, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 518, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"brd_debugfs_dir\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 365, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"brd_devices\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 364, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 474, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 502, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 508, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 462, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 383, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 386, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 391, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"brd_fops\00", align 1
@___asan_gen_.93 = private constant [23 x i8] c"../drivers/block/brd.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 325, i32 45 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 378, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 695, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 723, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 36, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_max_part305, ptr @__UNIQUE_ID_max_parttype304, ptr @__UNIQUE_ID_rd_nr301, ptr @__UNIQUE_ID_rd_nrtype300, ptr @__UNIQUE_ID_rd_size303, ptr @__UNIQUE_ID_rd_sizetype302, ptr @__exitcall_brd_exit, ptr @__initcall__kmod_brd__310_521_brd_init6, ptr @__param_max_part, ptr @__param_rd_nr, ptr @__param_rd_size, ptr @__setup_ramdisk_size, ptr @brd_check_and_reset_par._entry, ptr @brd_check_and_reset_par._entry_ptr, ptr @brd_exit, ptr @brd_exit._entry, ptr @brd_exit._entry_ptr, ptr @brd_init._entry, ptr @brd_init._entry.7, ptr @brd_init._entry_ptr, ptr @brd_init._entry_ptr.9, ptr @rd_nr, ptr @rd_size, ptr @max_part, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @brd_debugfs_dir, ptr @brd_devices, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @brd_alloc.__key, ptr @.str.12, ptr @.str.13, ptr @brd_alloc.__key.14, ptr @brd_fops, ptr @xa_init_flags.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_part to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_check_and_reset_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_alloc.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brd_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ramdisk_size(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %str, ptr noundef null, i32 noundef 0) #11
  store i32 %call, ptr @rd_size, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_blkdev(i32 noundef 1, ptr noundef nonnull @.str) #11
  tail call fastcc void @brd_cleanup()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brd_cleanup() unnamed_addr #2 align 64 {
entry:
  %pages.i = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @brd_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  %1 = load ptr, ptr @brd_devices, align 4
  %cmp.not24 = icmp eq ptr %1, @brd_devices
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %brd.0 = getelementptr i8, ptr %.pn.in25, i32 -8
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 8
  %brd_disk = getelementptr i8, ptr %.pn.in25, i32 -4
  %3 = ptrtoint ptr %brd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %brd_disk, align 4
  call void @del_gendisk(ptr noundef %4) #11
  %5 = ptrtoint ptr %brd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %brd_disk, align 4
  call void @blk_cleanup_disk(ptr noundef %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages.i) #11
  %7 = call ptr @memset(ptr %pages.i, i32 255, i32 64)
  %brd_pages.i = getelementptr i8, ptr %.pn.in25, i32 52
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %for.body
  %pos.0.i = phi i32 [ 0, %for.body ], [ %inc35.i, %for.end.i.do.body.i_crit_edge ]
  %call.i = call i32 @radix_tree_gang_lookup(ptr noundef %brd_pages.i, ptr noundef nonnull %pages.i, i32 noundef %pos.0.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp53.i = icmp sgt i32 %call.i, 0
  br i1 %cmp53.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %do.end33.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %pos.155.i = phi i32 [ %11, %do.end33.i.for.body.i_crit_edge ], [ %pos.0.i, %do.body.i.for.body.i_crit_edge ]
  %i.054.i = phi i32 [ %inc.i, %do.end33.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr %pages.i, i32 0, i32 %i.054.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pos.155.i)
  %cmp2.i = icmp ult i32 %11, %pos.155.i
  br i1 %cmp2.i, label %do.body4.i, label %do.end9.i, !prof !103

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

do.end9.i:                                        ; preds = %for.body.i
  %call13.i = call ptr @radix_tree_delete(ptr noundef %brd_pages.i, i32 noundef %11) #11
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %do.end9.i.do.body25.i_crit_edge, label %lor.rhs.i, !prof !103

do.end9.i.do.body25.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

lor.rhs.i:                                        ; preds = %do.end9.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp17.not.i = icmp eq ptr %call13.i, %13
  br i1 %cmp17.not.i, label %do.end33.i, label %lor.rhs.i.do.body25.i_crit_edge, !prof !105

lor.rhs.i.do.body25.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

do.body25.i:                                      ; preds = %lor.rhs.i.do.body25.i_crit_edge, %do.end9.i.do.body25.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

do.end33.i:                                       ; preds = %lor.rhs.i
  call void @__free_pages(ptr noundef nonnull %call13.i, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %do.end33.i.for.end.i_crit_edge, label %do.end33.i.for.body.i_crit_edge

do.end33.i.for.body.i_crit_edge:                  ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end33.i.for.end.i_crit_edge:                   ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %do.end33.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %pos.1.lcssa.i = phi i32 [ %pos.0.i, %do.body.i.for.end.i_crit_edge ], [ %11, %do.end33.i.for.end.i_crit_edge ]
  %inc35.i = add i32 %pos.1.lcssa.i, 1
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 160, i32 noundef 0) #11
  %call.i.i = call i32 @__cond_resched() #11
  %cmp38.i = icmp eq i32 %call.i, 16
  br i1 %cmp38.i, label %for.end.i.do.body.i_crit_edge, label %brd_free_pages.exit

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

brd_free_pages.exit:                              ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages.i) #11
  %call.i.i21 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #11
  br i1 %call.i.i21, label %if.end.i.i, label %brd_free_pages.exit.list_del.exit_crit_edge

brd_free_pages.exit.list_del.exit_crit_edge:      ; preds = %brd_free_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %brd_free_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %brd_free_pages.exit.list_del.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %brd.0) #11
  %cmp.not = icmp eq ptr %.pn, @brd_devices
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge, !prof !103

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @max_part, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %1 = load i32, ptr @max_part, align 4
  %rem.i = urem i32 1048576, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #11, !range !107
  %sub.i.i = sub nuw nsw i32 32, %2
  %sub.i.op.i = shl nuw i32 1, %sub.i.i
  %shl.i = select i1 %tobool.not.i.i, i32 1, i32 %sub.i.op.i
  store i32 %shl.i, ptr @max_part, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %3 = phi i32 [ %shl.i, %if.then4.i ], [ %1, %if.end.i.if.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 256
  br i1 %cmp6.i, label %do.end.i, label %if.end5.i.brd_check_and_reset_par.exit_crit_edge

if.end5.i.brd_check_and_reset_par.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brd_check_and_reset_par.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 256, i32 noundef 256) #14
  store i32 256, ptr @max_part, align 4
  br label %brd_check_and_reset_par.exit

brd_check_and_reset_par.exit:                     ; preds = %do.end.i, %if.end5.i.brd_check_and_reset_par.exit_crit_edge
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #11
  store ptr %call, ptr @brd_debugfs_dir, align 4
  %4 = load i32, ptr @rd_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16 = icmp sgt i32 %4, 0
  br i1 %cmp16, label %brd_check_and_reset_par.exit.for.body_crit_edge, label %brd_check_and_reset_par.exit.for.end_crit_edge

brd_check_and_reset_par.exit.for.end_crit_edge:   ; preds = %brd_check_and_reset_par.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

brd_check_and_reset_par.exit.for.body_crit_edge:  ; preds = %brd_check_and_reset_par.exit
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.017, 1
  %5 = load i32, ptr @rd_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %brd_check_and_reset_par.exit.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %brd_check_and_reset_par.exit.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @brd_alloc(i32 noundef %i.017)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond, label %for.body.out_free_crit_edge

for.body.out_free_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %brd_check_and_reset_par.exit.for.end_crit_edge
  %call2 = tail call i32 @__register_blkdev(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @brd_probe) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.end.cleanup_crit_edge, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_free:                                         ; preds = %for.end.out_free_crit_edge, %for.body.out_free_crit_edge
  %err.0 = phi i32 [ -5, %for.end.out_free_crit_edge ], [ %call1, %for.body.out_free_crit_edge ]
  tail call fastcc void @brd_cleanup()
  br label %cleanup

cleanup:                                          ; preds = %out_free, %for.end.cleanup_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %out_free ], [ @.str.5, %for.end.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %for.end.cleanup_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brd_alloc(i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @brd_devices, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @brd_devices
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %brd.0 = getelementptr i8, ptr %.pn, i32 -8
  %2 = ptrtoint ptr %brd.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brd.0, align 8
  %cmp1 = icmp eq i32 %3, %i
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i, ptr %call7.i.i, align 8
  %brd_list9 = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 2
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brd_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %brd_list9, ptr noundef %6, ptr noundef nonnull @brd_devices) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %brd_list9, ptr getelementptr inbounds (%struct.list_head, ptr @brd_devices, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %brd_list9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @brd_devices, ptr %brd_list9, align 8
  %prev3.i.i = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %brd_list9, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %brd_lock = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %brd_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @brd_alloc.__key, i16 noundef signext 3) #11
  %brd_pages = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %brd_pages, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2592, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i)
  %12 = load ptr, ptr @brd_debugfs_dir, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %list_add_tail.exit.if.end15_crit_edge, label %if.then13

list_add_tail.exit.if.end15_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %brd_nr_pages = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 5
  call void @debugfs_create_u64(ptr noundef nonnull %buf, i16 noundef zeroext 292, ptr noundef nonnull %12, ptr noundef %brd_nr_pages) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %list_add_tail.exit.if.end15_crit_edge
  %call17 = call ptr @__blk_alloc_disk(i32 noundef -1, ptr noundef nonnull @brd_alloc.__key.14) #11
  %brd_disk = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %brd_disk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %brd_disk, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.out_free_dev_crit_edge, label %if.end20

if.end15.out_free_dev_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.end20:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call17, align 8
  %15 = load i32, ptr @max_part, align 4
  %mul = mul i32 %15, %i
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 1
  %16 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 2
  %17 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 8
  %18 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @brd_fops, ptr %fops, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 10
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %private_data, align 8
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 3
  %call23 = call i32 @strlcpy(ptr noundef %disk_name, ptr noundef nonnull %buf, i32 noundef 32) #11
  %20 = load i32, ptr @rd_size, align 4
  %mul24 = shl i32 %20, 1
  %conv = zext i32 %mul24 to i64
  call void @set_capacity(ptr noundef nonnull %call17, i64 noundef %conv) #11
  %queue = getelementptr inbounds %struct.gendisk, ptr %call17, i32 0, i32 9
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue, align 4
  call void @blk_queue_physical_block_size(ptr noundef %22, i32 noundef 4096) #11
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %24) #11
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue, align 4
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %26) #11
  %call.i = call i32 @device_add_disk(ptr noundef null, ptr noundef nonnull %call17, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end20.cleanup_crit_edge, label %out_cleanup_disk

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_cleanup_disk:                                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_cleanup_disk(ptr noundef nonnull %call17) #11
  br label %out_free_dev

out_free_dev:                                     ; preds = %out_cleanup_disk, %if.end15.out_free_dev_crit_edge
  %err.0 = phi i32 [ %call.i, %out_cleanup_disk ], [ -12, %if.end15.out_free_dev_crit_edge ]
  %call.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef %brd_list9) #11
  br i1 %call.i.i63, label %if.end.i.i64, label %out_free_dev.list_del.exit_crit_edge

out_free_dev.list_del.exit_crit_edge:             ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i64:                                     ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %brd_list9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %brd_list9, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i64, %out_free_dev.list_del.exit_crit_edge
  %33 = ptrtoint ptr %brd_list9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %brd_list9, align 8
  %prev.i = getelementptr inbounds %struct.brd_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end20.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %list_del.exit ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -17, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brd_probe(i32 noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev, 1048575
  %0 = load i32, ptr @max_part, align 4
  %div = udiv i32 %and, %0
  %call = tail call fastcc i32 @brd_alloc(i32 noundef %div)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brd_submit_bio(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not126 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not126, label %entry.cleanup85_crit_edge, label %land.rhs.lr.ph

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

land.rhs.lr.ph:                                   ; preds = %entry
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %9 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bi_iter, align 8
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %sector.0130 = phi i64 [ %10, %land.rhs.lr.ph ], [ %add82, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0129 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0128 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0127 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.0128
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.0128, i32 2
  %15 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_offset, align 4
  %add = add i32 %16, %iter.sroa.16.0127
  %div114 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %14, i32 %div114
  %bv_len10 = getelementptr %struct.bio_vec, ptr %12, i32 %iter.sroa.10.0128, i32 1
  %17 = ptrtoint ptr %bv_len10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_len10, align 4
  %sub = sub i32 %18, %iter.sroa.16.0127
  %19 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0129, i32 %sub)
  %rem = and i32 %add, 4095
  %sub18 = sub nuw nsw i32 4096, %rem
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub18)
  %and = and i32 %add, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp ne i32 %and, 0
  %and36 = and i32 %20, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %21 = select i1 %tobool35.not, i1 true, i1 %tobool37
  br i1 %21, label %land.rhs40, label %land.rhs.if.end68_crit_edge

land.rhs.if.end68_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.rhs40:                                       ; preds = %land.rhs
  %.b115 = load i1, ptr @brd_submit_bio.__already_done, align 1
  br i1 %.b115, label %land.rhs40.if.end68_crit_edge, label %if.then, !prof !105

land.rhs40.if.end68_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then:                                          ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @brd_submit_bio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 298, i32 noundef 9, ptr noundef null) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then, %land.rhs40.if.end68_crit_edge, %land.rhs.if.end68_crit_edge
  %22 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bi_opf, align 8
  %and78 = and i32 %23, 255
  %call = tail call fastcc i32 @brd_do_bvec(ptr noundef %5, ptr noundef %add.ptr, i32 noundef %20, i32 noundef %rem, i32 noundef %and78, i64 noundef %sector.0130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool79.not = icmp eq i32 %call, 0
  br i1 %tobool79.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %24 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %bi_status.i, align 2
  br label %cleanup85

for.inc:                                          ; preds = %if.end68
  %shr = lshr i32 %20, 9
  %conv = zext i32 %shr to i64
  %add82 = add i64 %sector.0130, %conv
  %25 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_opf, align 8
  %and.i.i = and i32 %26, 255
  %27 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %27, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %20, %iter.sroa.16.0127
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %29, i32 %iter.sroa.10.0128, i32 1
  %30 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %31)
  %cmp.i.i = icmp eq i32 %add.i.i, %31
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select125 = add i32 %iter.sroa.10.0128, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0127, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0128, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select125, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0129, %20
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.cleanup85_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

bio_advance_iter_single.exit.cleanup85_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

cleanup85:                                        ; preds = %bio_advance_iter_single.exit.cleanup85_crit_edge, %cleanup, %entry.cleanup85_crit_edge
  tail call void @bio_endio(ptr noundef %bio) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brd_rw_page(ptr nocapture noundef readonly %bdev, i64 noundef %sector, ptr noundef %page, i32 noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call1 = tail call fastcc i32 @brd_do_bvec(ptr noundef %3, ptr noundef %page, i32 noundef 4096, i32 noundef 0, i32 noundef %op, i64 noundef %sector)
  %and.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  tail call void @page_endio(ptr noundef %page, i1 noundef zeroext %tobool.i, i32 noundef %call1) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brd_do_bvec(ptr noundef %brd, ptr noundef %page, i32 noundef %len, i32 noundef %off, i32 noundef %op, i64 noundef %sector) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %sector.tr.i = trunc i64 %sector to i32
  %0 = shl i32 %sector.tr.i, 9
  %conv.i = and i32 %0, 3584
  %sub.i = sub nuw nsw i32 4096, %conv.i
  %1 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #11
  %call.i = tail call fastcc ptr @brd_insert_page(ptr noundef %brd, i64 noundef %sector) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.end.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp2.i = icmp ult i32 %sub.i, %len
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %1, 9
  %conv5.i = zext i32 %shr.i to i64
  %add.i = add i64 %conv5.i, %sector
  %call6.i = tail call fastcc ptr @brd_insert_page(ptr noundef %brd, i64 noundef %add.i) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then4.i.out_crit_edge, label %if.then4.i.if.end3_crit_edge

if.then4.i.if.end3_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then4.i.out_crit_edge:                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end3:                                          ; preds = %if.then4.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %7 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  br i1 %tobool.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %off
  %sector.tr.i27 = trunc i64 %sector to i32
  %13 = shl i32 %sector.tr.i27, 9
  %conv.i28 = and i32 %13, 3584
  %sub.i29 = sub nuw nsw i32 4096, %conv.i28
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i29, i32 %len) #11
  %call.i30 = tail call fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %sector) #11
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %20 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i30, i32 noundef %or.i.i) #11
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %conv.i28
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %14)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %27 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i32 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i32 to ptr
  %task.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i33, align 8
  %pagefault_disabled.i.i.i.i34 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i34, align 8
  %dec.i.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i34, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %33 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i35 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  br label %if.end.i37

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %37 = call ptr @memset(ptr %add.ptr, i32 0, i32 %14)
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.else.i, %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i29, i32 %len)
  %cmp6.i = icmp ult i32 %sub.i29, %len
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i37.copy_from_brd.exit_crit_edge

if.end.i37.copy_from_brd.exit_crit_edge:          ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_brd.exit

if.then8.i:                                       ; preds = %if.end.i37
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i32 %14
  %shr.i38 = lshr i32 %14, 9
  %conv10.i = zext i32 %shr.i38 to i64
  %add.i39 = add i64 %conv10.i, %sector
  %sub11.i = sub i32 %len, %14
  %call12.i = tail call fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %add.i39) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.else22.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i51.i = or i32 %38, 512
  %39 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i52.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i52.i to ptr
  %preempt_count.i.i.i.i53.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i53.i, align 4
  %add.i.i.i54.i = add i32 %42, 1
  store volatile i32 %add.i.i.i54.i, ptr %preempt_count.i.i.i.i53.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %43 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i55.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i55.i to ptr
  %task.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i56.i, align 8
  %pagefault_disabled.i.i.i.i57.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i57.i, align 8
  %inc.i.i.i.i58.i = add i32 %48, 1
  store i32 %inc.i.i.i.i58.i, ptr %pagefault_disabled.i.i.i.i57.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call.i.i59.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call12.i, i32 noundef %or.i51.i) #11
  %49 = call ptr @memcpy(ptr %add.ptr9.i, ptr %call.i.i59.i, i32 %sub11.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i59.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %50 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i60.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i60.i to ptr
  %task.i.i.i61.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i61.i, align 8
  %pagefault_disabled.i.i.i62.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i62.i, align 8
  %dec.i.i.i63.i = add i32 %55, -1
  store i32 %dec.i.i.i63.i, ptr %pagefault_disabled.i.i.i62.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %56 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i64.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i64.i to ptr
  %preempt_count.i.i.i65.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i65.i, align 4
  %sub.i.i66.i = add i32 %59, -1
  store volatile i32 %sub.i.i66.i, ptr %preempt_count.i.i.i65.i, align 4
  br label %copy_from_brd.exit

if.else22.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = call ptr @memset(ptr %add.ptr9.i, i32 0, i32 %sub11.i)
  br label %copy_from_brd.exit

copy_from_brd.exit:                               ; preds = %if.else22.i, %if.then14.i, %if.end.i37.copy_from_brd.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef %page) #11
  br label %do.end

if.else:                                          ; preds = %if.end3
  tail call void @flush_dcache_page(ptr noundef %page) #11
  %add.ptr7 = getelementptr i8, ptr %call.i.i, i32 %off
  %sector.tr.i40 = trunc i64 %sector to i32
  %61 = shl i32 %sector.tr.i40, 9
  %conv.i41 = and i32 %61, 3584
  %sub.i42 = sub nuw nsw i32 4096, %conv.i41
  %62 = tail call i32 @llvm.umin.i32(i32 %sub.i42, i32 %len) #11
  %call.i43 = tail call fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %sector) #11
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %do.body5.i, label %do.end10.i, !prof !103

do.body5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #11, !srcloc !112
  unreachable

do.end10.i:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %63 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i45 = or i32 %63, 512
  %64 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i.i46 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i.i47, align 4
  %add.i.i.i.i48 = add i32 %67, 1
  store volatile i32 %add.i.i.i.i48, ptr %preempt_count.i.i.i.i.i47, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %68 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i.i49 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i1.i.i.i49 to ptr
  %task.i.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.i.i.i.i50, align 8
  %pagefault_disabled.i.i.i.i.i51 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 213
  %72 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pagefault_disabled.i.i.i.i.i51, align 8
  %inc.i.i.i.i.i52 = add i32 %73, 1
  store i32 %inc.i.i.i.i.i52, ptr %pagefault_disabled.i.i.i.i.i51, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call.i.i.i53 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i43, i32 noundef %or.i.i45) #11
  %add.ptr.i54 = getelementptr i8, ptr %call.i.i.i53, i32 %conv.i41
  %74 = call ptr @memcpy(ptr %add.ptr.i54, ptr %add.ptr7, i32 %62)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i53) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %75 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i55 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i1.i.i55 to ptr
  %task.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i.i.i.i56, align 8
  %pagefault_disabled.i.i.i.i57 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 213
  %79 = ptrtoint ptr %pagefault_disabled.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pagefault_disabled.i.i.i.i57, align 8
  %dec.i.i.i.i58 = add i32 %80, -1
  store i32 %dec.i.i.i.i58, ptr %pagefault_disabled.i.i.i.i57, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %81 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i59 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i61 = add i32 %84, -1
  store volatile i32 %sub.i.i.i61, ptr %preempt_count.i.i.i.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i42, i32 %len)
  %cmp18.i = icmp ult i32 %sub.i42, %len
  br i1 %cmp18.i, label %if.then20.i, label %do.end10.i.do.end_crit_edge

do.end10.i.do.end_crit_edge:                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then20.i:                                      ; preds = %do.end10.i
  %shr.i62 = lshr i32 %62, 9
  %conv22.i = zext i32 %shr.i62 to i64
  %add.i63 = add i64 %conv22.i, %sector
  %call24.i = tail call fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %add.i63) #11
  %tobool26.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool26.not.i, label %do.body36.i, label %do.end44.i, !prof !103

do.body36.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

do.end44.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub23.i = sub i32 %len, %62
  %add.ptr21.i = getelementptr i8, ptr %add.ptr7, i32 %62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %85 = load i32, ptr @pgprot_kernel, align 4
  %or.i75.i = or i32 %85, 512
  %86 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i76.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i76.i to ptr
  %preempt_count.i.i.i.i77.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i77.i, align 4
  %add.i.i.i78.i = add i32 %89, 1
  store volatile i32 %add.i.i.i78.i, ptr %preempt_count.i.i.i.i77.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %90 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i.i79.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i.i79.i to ptr
  %task.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i.i80.i, align 8
  %pagefault_disabled.i.i.i.i81.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i.i81.i, align 8
  %inc.i.i.i.i82.i = add i32 %95, 1
  store i32 %inc.i.i.i.i82.i, ptr %pagefault_disabled.i.i.i.i81.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call.i.i83.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call24.i, i32 noundef %or.i75.i) #11
  %96 = call ptr @memcpy(ptr %call.i.i83.i, ptr %add.ptr21.i, i32 %sub23.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i83.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %97 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i84.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i84.i to ptr
  %task.i.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i85.i, align 8
  %pagefault_disabled.i.i.i86.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i86.i, align 8
  %dec.i.i.i87.i = add i32 %102, -1
  store i32 %dec.i.i.i87.i, ptr %pagefault_disabled.i.i.i86.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %103 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i88.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i88.i to ptr
  %preempt_count.i.i.i89.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i89.i, align 4
  %sub.i.i90.i = add i32 %106, -1
  store volatile i32 %sub.i.i90.i, ptr %preempt_count.i.i.i89.i, align 4
  br label %do.end

do.end:                                           ; preds = %do.end44.i, %do.end10.i.do.end_crit_edge, %copy_from_brd.exit
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %107 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i1.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 213
  %111 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %112, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %113 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %out

out:                                              ; preds = %do.end, %if.then4.i.out_crit_edge, %if.then.out_crit_edge
  %err.1 = phi i32 [ 0, %do.end ], [ -28, %if.then.out_crit_edge ], [ -28, %if.then4.i.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brd_insert_page(ptr noundef %brd, i64 noundef %sector) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %sector)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3330, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool2.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @radix_tree_preload(i32 noundef 3072) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %brd_lock = getelementptr inbounds %struct.brd_device, ptr %brd, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %brd_lock) #11
  %shr = lshr i64 %sector, 3
  %conv = trunc i64 %shr to i32
  %index = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %index, align 4
  %brd_pages = getelementptr inbounds %struct.brd_device, ptr %brd, i32 0, i32 4
  %call9 = tail call i32 @radix_tree_insert(ptr noundef %brd_pages, i32 noundef %conv, ptr noundef nonnull %call38.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  %call13 = tail call ptr @radix_tree_lookup(ptr noundef %brd_pages, i32 noundef %conv) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.body19, label %do.body26, !prof !103

do.body19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #11, !srcloc !114
  unreachable

do.body26:                                        ; preds = %if.then11
  %index27 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp eq i32 %2, %conv
  br i1 %cmp.not, label %do.body26.if.end45_crit_edge, label %do.body36, !prof !105

do.body26.if.end45_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.body36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #11, !srcloc !115
  unreachable

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %brd_nr_pages = getelementptr inbounds %struct.brd_device, ptr %brd, i32 0, i32 5
  %3 = ptrtoint ptr %brd_nr_pages to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %brd_nr_pages, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %brd_nr_pages, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %do.body26.if.end45_crit_edge
  %page.0 = phi ptr [ %call13, %do.body26.if.end45_crit_edge ], [ %call38.i.i.i, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %brd_lock) #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @radix_tree_preloads to i32)
  %11 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %11) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %12 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %page.0, %if.end45 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brd_lookup_page(ptr noundef %brd, i64 noundef %sector) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %shr = lshr i64 %sector, 3
  %conv = trunc i64 %shr to i32
  %brd_pages = getelementptr inbounds %struct.brd_device, ptr %brd, i32 0, i32 4
  %call = tail call ptr @radix_tree_lookup(ptr noundef %brd_pages, i32 noundef %conv) #11
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i13, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %rcu_read_lock.exit
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %4 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i20 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.do.end9_crit_edge, label %land.rhs

rcu_read_unlock.exit.do.end9_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.rhs:                                         ; preds = %rcu_read_unlock.exit
  %index = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp.not = icmp eq i32 %9, %conv
  br i1 %cmp.not, label %land.rhs.do.end9_crit_edge, label %do.body4, !prof !105

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body4:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #11, !srcloc !119
  unreachable

do.end9:                                          ; preds = %land.rhs.do.end9_crit_edge, %rcu_read_unlock.exit.do.end9_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !105

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !41, !42, !43, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !73, !75, !76, !78, !80, !82, !83, !84, !86, !87, !89, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_rd_nr, !1, !"__param_rd_nr", i1 false, i1 false}
!1 = !{!"../drivers/block/brd.c", i32 335, i32 1}
!2 = !{ptr @__UNIQUE_ID_rd_nrtype300, !1, !"__UNIQUE_ID_rd_nrtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rd_nr301, !4, !"__UNIQUE_ID_rd_nr301", i1 false, i1 false}
!4 = !{!"../drivers/block/brd.c", i32 336, i32 1}
!5 = !{ptr @rd_size, !6, !"rd_size", i1 false, i1 false}
!6 = !{!"../drivers/block/brd.c", i32 338, i32 15}
!7 = !{ptr @__param_rd_size, !8, !"__param_rd_size", i1 false, i1 false}
!8 = !{!"../drivers/block/brd.c", i32 339, i32 1}
!9 = !{ptr @__UNIQUE_ID_rd_sizetype302, !8, !"__UNIQUE_ID_rd_sizetype302", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_rd_size303, !11, !"__UNIQUE_ID_rd_size303", i1 false, i1 false}
!11 = !{!"../drivers/block/brd.c", i32 340, i32 1}
!12 = !{ptr @__param_max_part, !13, !"__param_max_part", i1 false, i1 false}
!13 = !{!"../drivers/block/brd.c", i32 343, i32 1}
!14 = !{ptr @__UNIQUE_ID_max_parttype304, !13, !"__UNIQUE_ID_max_parttype304", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_max_part305, !16, !"__UNIQUE_ID_max_part305", i1 false, i1 false}
!16 = !{!"../drivers/block/brd.c", i32 344, i32 1}
!17 = !{ptr @__UNIQUE_ID_file306, !18, !"__UNIQUE_ID_file306", i1 false, i1 false}
!18 = !{!"../drivers/block/brd.c", i32 346, i32 1}
!19 = !{ptr @__UNIQUE_ID_license307, !18, !"__UNIQUE_ID_license307", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias308, !21, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!21 = !{!"../drivers/block/brd.c", i32 347, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias309, !23, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!23 = !{!"../drivers/block/brd.c", i32 348, i32 1}
!24 = !{ptr @__setup_ramdisk_size, !25, !"__setup_ramdisk_size", i1 false, i1 false}
!25 = !{!"../drivers/block/brd.c", i32 357, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/block/brd.c", i32 515, i32 35}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/brd.c", i32 518, i32 2}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @brd_exit._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @brd_exit._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_brd__310_521_brd_init6, !35, !"__initcall__kmod_brd__310_521_brd_init6", i1 false, i1 false}
!35 = !{!"../drivers/block/brd.c", i32 521, i32 1}
!36 = !{ptr @__exitcall_brd_exit, !37, !"__exitcall_brd_exit", i1 false, i1 false}
!37 = !{!"../drivers/block/brd.c", i32 522, i32 1}
!38 = !{ptr @__param_str_rd_nr, !1, !"__param_str_rd_nr", i1 false, i1 false}
!39 = !{ptr @rd_nr, !40, !"rd_nr", i1 false, i1 false}
!40 = !{!"../drivers/block/brd.c", i32 334, i32 12}
!41 = !{ptr @__param_str_rd_size, !8, !"__param_str_rd_size", i1 false, i1 false}
!42 = !{ptr @__param_str_max_part, !13, !"__param_str_max_part", i1 false, i1 false}
!43 = !{ptr @max_part, !44, !"max_part", i1 false, i1 false}
!44 = !{!"../drivers/block/brd.c", i32 342, i32 12}
!45 = !{ptr @__setup_str_ramdisk_size, !25, !"__setup_str_ramdisk_size", i1 false, i1 false}
!46 = !{ptr @brd_debugfs_dir, !47, !"brd_debugfs_dir", i1 false, i1 false}
!47 = !{!"../drivers/block/brd.c", i32 365, i32 23}
!48 = !{ptr @brd_devices, !49, !"brd_devices", i1 false, i1 false}
!49 = !{!"../drivers/block/brd.c", i32 364, i32 8}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/brd.c", i32 474, i32 39}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/brd.c", i32 502, i32 2}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @brd_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @brd_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/block/brd.c", i32 508, i32 2}
!59 = !{ptr @brd_init._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @brd_init._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/block/brd.c", i32 462, i32 3}
!63 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @brd_check_and_reset_par._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @brd_check_and_reset_par._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @brd_alloc.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/block/brd.c", i32 383, i32 2}
!68 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/brd.c", i32 386, i32 31}
!71 = !{ptr @brd_alloc.__key.14, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/block/brd.c", i32 391, i32 25}
!73 = !{ptr @xa_init_flags.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!75 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @brd_fops, !77, !"brd_fops", i1 false, i1 false}
!77 = !{!"../drivers/block/brd.c", i32 325, i32 45}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/block/brd.c", i32 297, i32 3}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!82 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!86 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!91 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2154781379, i64 2154781863, i64 2154781416, i64 2154781472, i64 2154781506, i64 2154781530, i64 2154781571, i64 2154781592, i64 2154781620, i64 2154781654}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2154782981, i64 2154783465, i64 2154783018, i64 2154783074, i64 2154783108, i64 2154783132, i64 2154783173, i64 2154783194, i64 2154783222, i64 2154783256}
!107 = !{i32 0, i32 33}
!108 = !{i64 2153843730}
!109 = !{i64 2152510874}
!110 = !{i64 2152511081}
!111 = !{i64 2153846501}
!112 = !{i64 2154788720, i64 2154789204, i64 2154788757, i64 2154788813, i64 2154788847, i64 2154788871, i64 2154788912, i64 2154788933, i64 2154788961, i64 2154788995}
!113 = !{i64 2154791974, i64 2154792458, i64 2154792011, i64 2154792067, i64 2154792101, i64 2154792125, i64 2154792166, i64 2154792187, i64 2154792215, i64 2154792249}
!114 = !{i64 2154778183, i64 2154778667, i64 2154778220, i64 2154778276, i64 2154778310, i64 2154778334, i64 2154778375, i64 2154778396, i64 2154778424, i64 2154778458}
!115 = !{i64 2154779775, i64 2154780259, i64 2154779812, i64 2154779868, i64 2154779902, i64 2154779926, i64 2154779967, i64 2154779988, i64 2154780016, i64 2154780050}
!116 = !{i64 2151441372}
!117 = !{i64 2149367868}
!118 = !{i64 2149368134}
!119 = !{i64 2154776194, i64 2154776677, i64 2154776231, i64 2154776287, i64 2154776321, i64 2154776345, i64 2154776386, i64 2154776407, i64 2154776435, i64 2154776469}
