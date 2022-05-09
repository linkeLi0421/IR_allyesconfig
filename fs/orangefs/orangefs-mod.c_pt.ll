; ModuleID = '/llk/IR_all_yes/fs/orangefs/orangefs-mod.c_pt.bc'
source_filename = "../fs/orangefs/orangefs-mod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.orangefs_stats = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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

@hash_table_size = dso_local global { i32, [28 x i8] } { i32 509, [28 x i8] zeroinitializer }, align 32
@op_timeout_secs = dso_local global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@slot_timeout_secs = dso_local global { i32, [28 x i8] } { i32 900, [28 x i8] zeroinitializer }, align 32
@orangefs_cache_timeout_msecs = dso_local global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@orangefs_dcache_timeout_msecs = dso_local global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@orangefs_getattr_timeout_msecs = dso_local global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file275 = internal constant [35 x i8] c"orangefs.file=fs/orangefs/orangefs\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [21 x i8] c"orangefs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [42 x i8] c"orangefs.author=ORANGEFS Development Team\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [64 x i8] c"orangefs.description=The Linux Kernel VFS interface to ORANGEFS\00", section ".modinfo", align 1
@__UNIQUE_ID_module_parm_debug_mask279 = internal constant [87 x i8] c"orangefs.parm=module_parm_debug_mask:debugging level (see orangefs-debug.h for values)\00", section ".modinfo", align 1
@__UNIQUE_ID_op_timeout_secs280 = internal constant [59 x i8] c"orangefs.parm=op_timeout_secs:Operation timeout in seconds\00", section ".modinfo", align 1
@__UNIQUE_ID_slot_timeout_secs281 = internal constant [56 x i8] c"orangefs.parm=slot_timeout_secs:Slot timeout in seconds\00", section ".modinfo", align 1
@__UNIQUE_ID_hash_table_size282 = internal constant [76 x i8] c"orangefs.parm=hash_table_size:size of hash table for operations in progress\00", section ".modinfo", align 1
@__param_str_hash_table_size = internal constant [25 x i8] c"orangefs.hash_table_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_hash_table_size = internal constant %struct.kernel_param { ptr @__param_str_hash_table_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @hash_table_size } }, section "__param", align 4
@__UNIQUE_ID_hash_table_sizetype283 = internal constant [38 x i8] c"orangefs.parmtype=hash_table_size:int\00", section ".modinfo", align 1
@__param_str_module_parm_debug_mask = internal constant [32 x i8] c"orangefs.module_parm_debug_mask\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@module_parm_debug_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_module_parm_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_module_parm_debug_mask, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @module_parm_debug_mask } }, section "__param", align 4
@__UNIQUE_ID_module_parm_debug_masktype284 = internal constant [47 x i8] c"orangefs.parmtype=module_parm_debug_mask:ulong\00", section ".modinfo", align 1
@__param_str_op_timeout_secs = internal constant [25 x i8] c"orangefs.op_timeout_secs\00", align 1
@__param_op_timeout_secs = internal constant %struct.kernel_param { ptr @__param_str_op_timeout_secs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @op_timeout_secs } }, section "__param", align 4
@__UNIQUE_ID_op_timeout_secstype285 = internal constant [38 x i8] c"orangefs.parmtype=op_timeout_secs:int\00", section ".modinfo", align 1
@__param_str_slot_timeout_secs = internal constant [27 x i8] c"orangefs.slot_timeout_secs\00", align 1
@__param_slot_timeout_secs = internal constant %struct.kernel_param { ptr @__param_str_slot_timeout_secs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @slot_timeout_secs } }, section "__param", align 4
@__UNIQUE_ID_slot_timeout_secstype286 = internal constant [40 x i8] c"orangefs.parmtype=slot_timeout_secs:int\00", section ".modinfo", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"orangefs_request_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@orangefs_request_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @orangefs_request_mutex, i64 52), ptr getelementptr (i8, ptr @orangefs_request_mutex, i64 52) }, ptr @orangefs_request_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"orangefs_request_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"orangefs_htable_ops_in_progress_lock\00", [59 x i8] zeroinitializer }, align 32
@orangefs_htable_ops_in_progress_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@orangefs_request_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @orangefs_request_list, ptr @orangefs_request_list }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_request_list_lock\00", [37 x i8] zeroinitializer }, align 32
@orangefs_request_list_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"orangefs_request_list_waitq.lock\00", [63 x i8] zeroinitializer }, align 32
@orangefs_request_list_waitq = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @orangefs_request_list_waitq, i64 44), ptr getelementptr (i8, ptr @orangefs_request_list_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@orangefs_gossip_debug_mask = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@orangefs_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017orangefs: orangefs_exit called\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"orangefs_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/orangefs/orangefs-mod.c\00", [37 x i8] zeroinitializer }, align 32
@orangefs_exit._entry_ptr = internal global ptr @orangefs_exit._entry, section ".printk_index", align 4
@orangefs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.14, i32 0, ptr null, ptr null, ptr @orangefs_mount, ptr @orangefs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@orangefs_htable_ops_in_progress = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@orangefs_exit._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016orangefs: module version %s unloaded\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_exit._entry_ptr.10 = internal global ptr @orangefs_exit._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upstream\00", [23 x i8] zeroinitializer }, align 32
@purge_inprogress_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: op:%s: op_state:%d: process:%s:\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"purge_inprogress_ops\00", [43 x i8] zeroinitializer }, align 32
@purge_inprogress_ops._entry_ptr = internal global ptr @purge_inprogress_ops._entry, section ".printk_index", align 4
@__initcall__kmod_orangefs__287_230_orangefs_init6 = internal global ptr @orangefs_init, section ".initcall6.init", align 4
@__exitcall_orangefs_exit = internal global ptr @orangefs_exit, section ".exitcall.exit", align 4
@orangefs_stats = dso_local global { %struct.orangefs_stats, [16 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pvfs2\00", [26 x i8] zeroinitializer }, align 32
@orangefs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: could not initialize device subsystem %d!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"orangefs_init\00", [18 x i8] zeroinitializer }, align 32
@orangefs_init._entry_ptr = internal global ptr @orangefs_init._entry, section ".printk_index", align 4
@orangefs_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.7, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: module version %s loaded\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_init._entry_ptr.19 = internal global ptr @orangefs_init._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"hash_table_size\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 28, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"op_timeout_secs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 32, i32 5 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"slot_timeout_secs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 33, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"orangefs_cache_timeout_msecs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 34, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [30 x i8] c"orangefs_dcache_timeout_msecs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 35, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"orangefs_getattr_timeout_msecs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 36, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"module_parm_debug_mask\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 30, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"orangefs_request_mutex\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 65, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [37 x i8] c"orangefs_htable_ops_in_progress_lock\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 69, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"orangefs_request_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 72, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"orangefs_request_list_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 75, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"orangefs_request_list_waitq\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 78, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"orangefs_gossip_debug_mask\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 31, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 182, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"orangefs_fs_type\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 47, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"orangefs_htable_ops_in_progress\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 68, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 198, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 219, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"orangefs_stats\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 25, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 48, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 141, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [30 x i8] c"../fs/orangefs/orangefs-mod.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 149, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_hash_table_size282, ptr @__UNIQUE_ID_hash_table_sizetype283, ptr @__UNIQUE_ID_license276, ptr @__UNIQUE_ID_module_parm_debug_mask279, ptr @__UNIQUE_ID_module_parm_debug_masktype284, ptr @__UNIQUE_ID_op_timeout_secs280, ptr @__UNIQUE_ID_op_timeout_secstype285, ptr @__UNIQUE_ID_slot_timeout_secs281, ptr @__UNIQUE_ID_slot_timeout_secstype286, ptr @__exitcall_orangefs_exit, ptr @__initcall__kmod_orangefs__287_230_orangefs_init6, ptr @__param_hash_table_size, ptr @__param_module_parm_debug_mask, ptr @__param_op_timeout_secs, ptr @__param_slot_timeout_secs, ptr @orangefs_exit, ptr @orangefs_exit._entry, ptr @orangefs_exit._entry.8, ptr @orangefs_exit._entry_ptr, ptr @orangefs_exit._entry_ptr.10, ptr @orangefs_init._entry, ptr @orangefs_init._entry.17, ptr @orangefs_init._entry_ptr, ptr @orangefs_init._entry_ptr.19, ptr @purge_inprogress_ops._entry, ptr @purge_inprogress_ops._entry_ptr, ptr @hash_table_size, ptr @op_timeout_secs, ptr @slot_timeout_secs, ptr @orangefs_cache_timeout_msecs, ptr @orangefs_dcache_timeout_msecs, ptr @orangefs_getattr_timeout_msecs, ptr @module_parm_debug_mask, ptr @.str, ptr @orangefs_request_mutex, ptr @.str.1, ptr @.str.2, ptr @orangefs_htable_ops_in_progress_lock, ptr @orangefs_request_list, ptr @.str.3, ptr @orangefs_request_list_lock, ptr @.str.4, ptr @orangefs_request_list_waitq, ptr @orangefs_gossip_debug_mask, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @orangefs_fs_type, ptr @orangefs_htable_ops_in_progress, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @orangefs_stats, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @op_timeout_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_timeout_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_cache_timeout_msecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_getattr_timeout_msecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_parm_debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_request_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_htable_ops_in_progress_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_request_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_request_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_request_list_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_htable_ops_in_progress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_exit._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_inprogress_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orangefs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @unregister_filesystem(ptr noundef nonnull @orangefs_fs_type) #7
  tail call void @orangefs_debugfs_cleanup() #7
  tail call void @orangefs_sysfs_exit() #7
  tail call void @fsid_key_table_finalize() #7
  tail call void @orangefs_dev_cleanup() #7
  %1 = load volatile ptr, ptr @orangefs_request_list, align 4
  %cmp.i.not = icmp eq ptr %1, @orangefs_request_list
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.body12, !prof !109

for.cond.preheader:                               ; preds = %do.end3
  %2 = load i32, ptr @hash_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp53 = icmp sgt i32 %2, 0
  br i1 %cmp53, label %do.body21.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body21.lr.ph:                                  ; preds = %for.cond.preheader
  %3 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  br label %do.body21

do.body12:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/orangefs/orangefs-mod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #7, !srcloc !110
  unreachable

for.cond:                                         ; preds = %do.body21
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.do.body21_crit_edge

for.cond.do.body21_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body21:                                        ; preds = %for.cond.do.body21_crit_edge, %do.body21.lr.ph
  %i.054 = phi i32 [ 0, %do.body21.lr.ph ], [ %inc, %for.cond.do.body21_crit_edge ]
  %arrayidx = getelementptr %struct.list_head, ptr %3, i32 %i.054
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i51.not = icmp eq ptr %5, %arrayidx
  br i1 %cmp.i51.not, label %for.cond, label %do.body33, !prof !109

do.body33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/orangefs/orangefs-mod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #7, !srcloc !111
  unreachable

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call42 = tail call i32 @orangefs_inode_cache_finalize() #7
  %call43 = tail call i32 @op_cache_finalize() #7
  %6 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  tail call void @kfree(ptr noundef %6) #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_debugfs_cleanup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_sysfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsid_key_table_finalize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_dev_cleanup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_cache_finalize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @op_cache_finalize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @purge_inprogress_ops() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hash_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %entry.for.body_crit_edge, label %entry.for.end23_crit_edge

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  %1 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %1, i32 %i.043
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp9.not36 = icmp eq ptr %3, %arrayidx
  br i1 %cmp9.not36, label %for.body.for.end_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %.pn.in37 = phi ptr [ %.pn41, %for.inc.for.body10_crit_edge ], [ %3, %for.body.for.body10_crit_edge ]
  %op.039 = getelementptr i8, ptr %.pn.in37, i32 -16880
  %4 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn41 = load ptr, ptr %.pn.in37, align 8
  %lock.i = getelementptr i8, ptr %.pn.in37, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %upcall.i = getelementptr i8, ptr %.pn.in37, i32 -16856
  %5 = ptrtoint ptr %upcall.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upcall.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16716288, i32 %6)
  %cmp.i = icmp eq i32 %6, -16716288
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !112

if.then.i:                                        ; preds = %for.body10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in37, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in37, ptr %.pn.in37, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in37, i32 4
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in37, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %15 = getelementptr i8, ptr %.pn.in37, i32 -16864
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  tail call void @orangefs_bufmap_put(i32 noundef %17) #7
  tail call void @op_release(ptr noundef %op.039) #7
  br label %set_op_state_purged.exit

if.else.i:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %op.039 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %op.039, align 8
  %or.i = or i32 %19, 8
  store i32 %or.i, ptr %op.039, align 8
  %waitq.i = getelementptr i8, ptr %.pn.in37, i32 -104
  tail call void @complete(ptr noundef %waitq.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %set_op_state_purged.exit

set_op_state_purged.exit:                         ; preds = %if.else.i, %list_del_init.exit.i
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %20, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %set_op_state_purged.exit.for.inc_crit_edge, label %do.end

set_op_state_purged.exit.for.inc_crit_edge:       ; preds = %set_op_state_purged.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %set_op_state_purged.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @get_opname_string(ptr noundef %op.039) #7
  %21 = ptrtoint ptr %op.039 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %op.039, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !99) #7
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %call, i32 noundef %22, ptr noundef %comm) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %set_op_state_purged.exit.for.inc_crit_edge
  %27 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  %arrayidx8 = getelementptr %struct.list_head, ptr %27, i32 %i.043
  %cmp9.not = icmp eq ptr %.pn41, %arrayidx8
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_htable_ops_in_progress_lock) #7
  %inc = add nuw nsw i32 %i.043, 1
  %28 = load i32, ptr @hash_table_size, align 4
  %cmp = icmp slt i32 %inc, %28
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end23_crit_edge

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end23:                                        ; preds = %for.end.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_opname_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @op_timeout_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @op_timeout_secs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @slot_timeout_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @slot_timeout_secs, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = tail call i32 @op_cache_initialize() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i32 @orangefs_inode_cache_initialize() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_op_crit_edge, label %if.end10

if.end6.cleanup_op_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_op

if.end10:                                         ; preds = %if.end6
  %2 = load i32, ptr @hash_table_size, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !112

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @orangefs_htable_ops_in_progress, align 4
  br label %cleanup_inode

if.end7.i.i:                                      ; preds = %if.end10
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  store ptr %call8.i.i, ptr @orangefs_htable_ops_in_progress, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_inode_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_inode_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_inode

for.cond.preheader:                               ; preds = %if.end7.i.i
  %6 = load i32, ptr @hash_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1455.not = icmp eq i32 %6, 0
  br i1 %cmp1455.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %7, i32 %i.056
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %7, i32 %i.056, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw i32 %i.056, 1
  %10 = load i32, ptr @hash_table_size, align 4
  %cmp14 = icmp ult i32 %inc, %10
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call15 = tail call i32 @fsid_key_table_initialize() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.end.cleanup_progress_table_crit_edge, label %if.end18

for.end.cleanup_progress_table_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_progress_table

if.end18:                                         ; preds = %for.end
  %call19 = tail call i32 @orangefs_prepare_debugfs_help_string(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_key_table_crit_edge

if.end18.cleanup_key_table_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_key_table

if.end22:                                         ; preds = %if.end18
  %11 = load i32, ptr @module_parm_debug_mask, align 4
  tail call void @orangefs_debugfs_init(i32 noundef %11) #7
  %call23 = tail call i32 @orangefs_sysfs_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.sysfs_init_failed_crit_edge

if.end22.sysfs_init_failed_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sysfs_init_failed

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @orangefs_dev_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end, label %if.end31

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call27) #10
  br label %cleanup_device

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @register_filesystem(ptr noundef nonnull @orangefs_fs_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #10
  br label %out

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @orangefs_sysfs_exit() #7
  br label %cleanup_device

cleanup_device:                                   ; preds = %if.end40, %do.end
  %ret.0 = phi i32 [ %call27, %do.end ], [ %call32, %if.end40 ]
  tail call void @orangefs_dev_cleanup() #7
  br label %sysfs_init_failed

sysfs_init_failed:                                ; preds = %cleanup_device, %if.end22.sysfs_init_failed_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end22.sysfs_init_failed_crit_edge ], [ %ret.0, %cleanup_device ]
  tail call void @orangefs_debugfs_cleanup() #7
  br label %cleanup_key_table

cleanup_key_table:                                ; preds = %sysfs_init_failed, %if.end18.cleanup_key_table_crit_edge
  %ret.2 = phi i32 [ %call19, %if.end18.cleanup_key_table_crit_edge ], [ %ret.1, %sysfs_init_failed ]
  tail call void @fsid_key_table_finalize() #7
  br label %cleanup_progress_table

cleanup_progress_table:                           ; preds = %cleanup_key_table, %for.end.cleanup_progress_table_crit_edge
  %ret.3 = phi i32 [ %call15, %for.end.cleanup_progress_table_crit_edge ], [ %ret.2, %cleanup_key_table ]
  %12 = load ptr, ptr @orangefs_htable_ops_in_progress, align 4
  tail call void @kfree(ptr noundef %12) #7
  br label %cleanup_inode

cleanup_inode:                                    ; preds = %cleanup_progress_table, %if.end7.i.i.cleanup_inode_crit_edge, %kcalloc.exit.thread
  %ret.4 = phi i32 [ %ret.3, %cleanup_progress_table ], [ -12, %if.end7.i.i.cleanup_inode_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %call41 = tail call i32 @orangefs_inode_cache_finalize() #7
  br label %cleanup_op

cleanup_op:                                       ; preds = %cleanup_inode, %if.end6.cleanup_op_crit_edge
  %ret.5 = phi i32 [ %call7, %if.end6.cleanup_op_crit_edge ], [ %ret.4, %cleanup_inode ]
  %call42 = tail call i32 @op_cache_finalize() #7
  br label %out

out:                                              ; preds = %cleanup_op, %do.end37, %if.end3.out_crit_edge
  %ret.6 = phi i32 [ %call, %if.end3.out_crit_edge ], [ %ret.5, %cleanup_op ], [ 0, %do.end37 ]
  ret i32 %ret.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @orangefs_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_kill_sb(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_put(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @op_cache_initialize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_cache_initialize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsid_key_table_initialize() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_prepare_debugfs_help_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_debugfs_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_sysfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_dev_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !97, !98}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @hash_table_size, !1, !"hash_table_size", i1 false, i1 false}
!1 = !{!"../fs/orangefs/orangefs-mod.c", i32 28, i32 5}
!2 = !{ptr @op_timeout_secs, !3, !"op_timeout_secs", i1 false, i1 false}
!3 = !{!"../fs/orangefs/orangefs-mod.c", i32 32, i32 5}
!4 = !{ptr @slot_timeout_secs, !5, !"slot_timeout_secs", i1 false, i1 false}
!5 = !{!"../fs/orangefs/orangefs-mod.c", i32 33, i32 5}
!6 = !{ptr @orangefs_cache_timeout_msecs, !7, !"orangefs_cache_timeout_msecs", i1 false, i1 false}
!7 = !{!"../fs/orangefs/orangefs-mod.c", i32 34, i32 5}
!8 = !{ptr @orangefs_dcache_timeout_msecs, !9, !"orangefs_dcache_timeout_msecs", i1 false, i1 false}
!9 = !{!"../fs/orangefs/orangefs-mod.c", i32 35, i32 5}
!10 = !{ptr @orangefs_getattr_timeout_msecs, !11, !"orangefs_getattr_timeout_msecs", i1 false, i1 false}
!11 = !{!"../fs/orangefs/orangefs-mod.c", i32 36, i32 5}
!12 = !{ptr @__UNIQUE_ID_file275, !13, !"__UNIQUE_ID_file275", i1 false, i1 false}
!13 = !{!"../fs/orangefs/orangefs-mod.c", i32 38, i32 1}
!14 = !{ptr @__UNIQUE_ID_license276, !13, !"__UNIQUE_ID_license276", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author277, !16, !"__UNIQUE_ID_author277", i1 false, i1 false}
!16 = !{!"../fs/orangefs/orangefs-mod.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_description278, !18, !"__UNIQUE_ID_description278", i1 false, i1 false}
!18 = !{!"../fs/orangefs/orangefs-mod.c", i32 40, i32 1}
!19 = !{ptr @__UNIQUE_ID_module_parm_debug_mask279, !20, !"__UNIQUE_ID_module_parm_debug_mask279", i1 false, i1 false}
!20 = !{!"../fs/orangefs/orangefs-mod.c", i32 41, i32 1}
!21 = !{ptr @__UNIQUE_ID_op_timeout_secs280, !22, !"__UNIQUE_ID_op_timeout_secs280", i1 false, i1 false}
!22 = !{!"../fs/orangefs/orangefs-mod.c", i32 42, i32 1}
!23 = !{ptr @__UNIQUE_ID_slot_timeout_secs281, !24, !"__UNIQUE_ID_slot_timeout_secs281", i1 false, i1 false}
!24 = !{!"../fs/orangefs/orangefs-mod.c", i32 43, i32 1}
!25 = !{ptr @__UNIQUE_ID_hash_table_size282, !26, !"__UNIQUE_ID_hash_table_size282", i1 false, i1 false}
!26 = !{!"../fs/orangefs/orangefs-mod.c", i32 44, i32 1}
!27 = !{ptr @__param_hash_table_size, !28, !"__param_hash_table_size", i1 false, i1 false}
!28 = !{!"../fs/orangefs/orangefs-mod.c", i32 54, i32 1}
!29 = !{ptr @__UNIQUE_ID_hash_table_sizetype283, !28, !"__UNIQUE_ID_hash_table_sizetype283", i1 false, i1 false}
!30 = !{ptr @__param_module_parm_debug_mask, !31, !"__param_module_parm_debug_mask", i1 false, i1 false}
!31 = !{!"../fs/orangefs/orangefs-mod.c", i32 55, i32 1}
!32 = !{ptr @__UNIQUE_ID_module_parm_debug_masktype284, !31, !"__UNIQUE_ID_module_parm_debug_masktype284", i1 false, i1 false}
!33 = !{ptr @__param_op_timeout_secs, !34, !"__param_op_timeout_secs", i1 false, i1 false}
!34 = !{!"../fs/orangefs/orangefs-mod.c", i32 56, i32 1}
!35 = !{ptr @__UNIQUE_ID_op_timeout_secstype285, !34, !"__UNIQUE_ID_op_timeout_secstype285", i1 false, i1 false}
!36 = !{ptr @__param_slot_timeout_secs, !37, !"__param_slot_timeout_secs", i1 false, i1 false}
!37 = !{!"../fs/orangefs/orangefs-mod.c", i32 57, i32 1}
!38 = !{ptr @__UNIQUE_ID_slot_timeout_secstype286, !37, !"__UNIQUE_ID_slot_timeout_secstype286", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/orangefs/orangefs-mod.c", i32 65, i32 1}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @orangefs_request_mutex, !40, !"orangefs_request_mutex", i1 false, i1 false}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/orangefs/orangefs-mod.c", i32 69, i32 1}
!45 = !{ptr @orangefs_htable_ops_in_progress_lock, !44, !"orangefs_htable_ops_in_progress_lock", i1 false, i1 false}
!46 = !{ptr @orangefs_request_list, !47, !"orangefs_request_list", i1 false, i1 false}
!47 = !{!"../fs/orangefs/orangefs-mod.c", i32 72, i32 1}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/orangefs-mod.c", i32 75, i32 1}
!50 = !{ptr @orangefs_request_list_lock, !49, !"orangefs_request_list_lock", i1 false, i1 false}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/orangefs/orangefs-mod.c", i32 78, i32 1}
!53 = !{ptr @orangefs_request_list_waitq, !52, !"orangefs_request_list_waitq", i1 false, i1 false}
!54 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/orangefs/orangefs-mod.c", i32 182, i32 2}
!56 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @orangefs_exit._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @orangefs_exit._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/orangefs/orangefs-mod.c", i32 198, i32 2}
!62 = !{ptr @orangefs_exit._entry.8, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @orangefs_exit._entry_ptr.10, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/orangefs/orangefs-mod.c", i32 219, i32 4}
!67 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @purge_inprogress_ops._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @purge_inprogress_ops._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__initcall__kmod_orangefs__287_230_orangefs_init6, !71, !"__initcall__kmod_orangefs__287_230_orangefs_init6", i1 false, i1 false}
!71 = !{!"../fs/orangefs/orangefs-mod.c", i32 230, i32 1}
!72 = !{ptr @__exitcall_orangefs_exit, !73, !"__exitcall_orangefs_exit", i1 false, i1 false}
!73 = !{!"../fs/orangefs/orangefs-mod.c", i32 231, i32 1}
!74 = !{ptr @orangefs_stats, !75, !"orangefs_stats", i1 false, i1 false}
!75 = !{!"../fs/orangefs/orangefs-mod.c", i32 25, i32 23}
!76 = !{ptr @module_parm_debug_mask, !77, !"module_parm_debug_mask", i1 false, i1 false}
!77 = !{!"../fs/orangefs/orangefs-mod.c", i32 30, i32 14}
!78 = !{ptr @orangefs_gossip_debug_mask, !79, !"orangefs_gossip_debug_mask", i1 false, i1 false}
!79 = !{!"../fs/orangefs/orangefs-mod.c", i32 31, i32 7}
!80 = !{ptr @orangefs_htable_ops_in_progress, !81, !"orangefs_htable_ops_in_progress", i1 false, i1 false}
!81 = !{!"../fs/orangefs/orangefs-mod.c", i32 68, i32 19}
!82 = !{ptr @__param_str_hash_table_size, !28, !"__param_str_hash_table_size", i1 false, i1 false}
!83 = !{ptr @__param_str_module_parm_debug_mask, !31, !"__param_str_module_parm_debug_mask", i1 false, i1 false}
!84 = !{ptr @__param_str_op_timeout_secs, !34, !"__param_str_op_timeout_secs", i1 false, i1 false}
!85 = !{ptr @__param_str_slot_timeout_secs, !37, !"__param_str_slot_timeout_secs", i1 false, i1 false}
!86 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/orangefs/orangefs-mod.c", i32 48, i32 10}
!88 = !{ptr @orangefs_fs_type, !89, !"orangefs_fs_type", i1 false, i1 false}
!89 = !{!"../fs/orangefs/orangefs-mod.c", i32 47, i32 32}
!90 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/orangefs/orangefs-mod.c", i32 141, i32 3}
!92 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @orangefs_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @orangefs_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/orangefs/orangefs-mod.c", i32 149, i32 3}
!97 = !{ptr @orangefs_init._entry.17, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @orangefs_init._entry_ptr.19, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2154873945, i64 2154874436, i64 2154873982, i64 2154874038, i64 2154874072, i64 2154874096, i64 2154874137, i64 2154874158, i64 2154874186, i64 2154874220}
!111 = !{i64 2154875618, i64 2154876109, i64 2154875655, i64 2154875711, i64 2154875745, i64 2154875769, i64 2154875810, i64 2154875831, i64 2154875859, i64 2154875893}
!112 = !{!"branch_weights", i32 1, i32 2000}
