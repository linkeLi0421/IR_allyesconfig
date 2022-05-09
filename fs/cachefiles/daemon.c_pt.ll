; ModuleID = '/llk/IR_all_yes/fs/cachefiles/daemon.c_pt.bc'
source_filename = "../fs/cachefiles/daemon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cachefiles_daemon_cmd = type { [8 x i8], ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@cachefiles_daemon_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @cachefiles_daemon_read, ptr @cachefiles_daemon_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cachefiles_daemon_poll, ptr null, ptr null, ptr null, i32 0, ptr @cachefiles_daemon_open, ptr null, ptr @cachefiles_daemon_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_daemon_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] ==> %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_daemon_open\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/cachefiles/daemon.c\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_open._entry_ptr = internal global ptr @cachefiles_daemon_open._entry, section ".printk_index", align 4
@cachefiles_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cachefiles_daemon_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cache->daemon_mutex\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_daemon_open.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&cache->daemon_pollwq\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_daemon_open.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&cache->object_list_lock\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cachefiles_daemon_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_daemon_release\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_daemon_release._entry_ptr = internal global ptr @cachefiles_daemon_release._entry, section ".printk_index", align 4
@cachefiles_daemon_release._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013CacheFiles: \0A\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_daemon_release._entry_ptr.11 = internal global ptr @cachefiles_daemon_release._entry.9, section ".printk_index", align 4
@cachefiles_daemon_release._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CacheFiles: Assertion failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cachefiles_daemon_release._entry_ptr.14 = internal global ptr @cachefiles_daemon_release._entry.12, section ".printk_index", align 4
@cachefiles_daemon_release._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] <== %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_daemon_release._entry_ptr.17 = internal global ptr @cachefiles_daemon_release._entry.15, section ".printk_index", align 4
@cachefiles_daemon_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_daemon_unbind\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_daemon_unbind._entry_ptr = internal global ptr @cachefiles_daemon_unbind._entry, section ".printk_index", align 4
@cachefiles_daemon_unbind._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_unbind._entry_ptr.20 = internal global ptr @cachefiles_daemon_unbind._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"cull=%c frun=%llx fcull=%llx fstop=%llx brun=%llx bcull=%llx bstop=%llx freleased=%x breleased=%llx\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.25, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_write\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_write._entry_ptr = internal global ptr @cachefiles_daemon_write._entry, section ".printk_index", align 4
@cachefiles_daemon_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.25, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_write._entry_ptr.27 = internal global ptr @cachefiles_daemon_write._entry.26, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@cachefiles_daemon_cmds = internal constant { [14 x %struct.cachefiles_daemon_cmd], [56 x i8] } { [14 x %struct.cachefiles_daemon_cmd] [%struct.cachefiles_daemon_cmd { [8 x i8] c"bind\00\00\00\00", ptr @cachefiles_daemon_bind }, %struct.cachefiles_daemon_cmd { [8 x i8] c"brun\00\00\00\00", ptr @cachefiles_daemon_brun }, %struct.cachefiles_daemon_cmd { [8 x i8] c"bcull\00\00\00", ptr @cachefiles_daemon_bcull }, %struct.cachefiles_daemon_cmd { [8 x i8] c"bstop\00\00\00", ptr @cachefiles_daemon_bstop }, %struct.cachefiles_daemon_cmd { [8 x i8] c"cull\00\00\00\00", ptr @cachefiles_daemon_cull }, %struct.cachefiles_daemon_cmd { [8 x i8] c"debug\00\00\00", ptr @cachefiles_daemon_debug }, %struct.cachefiles_daemon_cmd { [8 x i8] c"dir\00\00\00\00\00", ptr @cachefiles_daemon_dir }, %struct.cachefiles_daemon_cmd { [8 x i8] c"frun\00\00\00\00", ptr @cachefiles_daemon_frun }, %struct.cachefiles_daemon_cmd { [8 x i8] c"fcull\00\00\00", ptr @cachefiles_daemon_fcull }, %struct.cachefiles_daemon_cmd { [8 x i8] c"fstop\00\00\00", ptr @cachefiles_daemon_fstop }, %struct.cachefiles_daemon_cmd { [8 x i8] c"inuse\00\00\00", ptr @cachefiles_daemon_inuse }, %struct.cachefiles_daemon_cmd { [8 x i8] c"secctx\00\00", ptr @cachefiles_daemon_secctx }, %struct.cachefiles_daemon_cmd { [8 x i8] c"tag\00\00\00\00\00", ptr @cachefiles_daemon_tag }, %struct.cachefiles_daemon_cmd zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017[%-6.6s] ==> %s({%u,%u,%u,%u,%u,%u},%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_daemon_bind\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bind._entry_ptr = internal global ptr @cachefiles_daemon_bind._entry, section ".printk_index", align 4
@cachefiles_daemon_bind._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CacheFiles: 'bind' command doesn't take an argument\0A\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bind._entry_ptr.32 = internal global ptr @cachefiles_daemon_bind._entry.30, section ".printk_index", align 4
@cachefiles_daemon_bind._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CacheFiles: No cache directory specified\0A\00", [52 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bind._entry_ptr.35 = internal global ptr @cachefiles_daemon_bind._entry.33, section ".printk_index", align 4
@cachefiles_daemon_bind._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CacheFiles: Cache already bound\0A\00", [61 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bind._entry_ptr.38 = internal global ptr @cachefiles_daemon_bind._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CacheFiles\00", [21 x i8] zeroinitializer }, align 32
@cachefiles_daemon_brun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017[%-6.6s] ==> %s(,%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_daemon_brun\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_brun._entry_ptr = internal global ptr @cachefiles_daemon_brun._entry, section ".printk_index", align 4
@cachefiles_daemon_range_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013CacheFiles: Free space limits must be in range 0%%<=stop<cull<run<100%%\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_daemon_range_error\00", [34 x i8] zeroinitializer }, align 32
@cachefiles_daemon_range_error._entry_ptr = internal global ptr @cachefiles_daemon_range_error._entry, section ".printk_index", align 4
@cachefiles_daemon_bcull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.44, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_bcull\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bcull._entry_ptr = internal global ptr @cachefiles_daemon_bcull._entry, section ".printk_index", align 4
@cachefiles_daemon_bstop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.45, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_bstop\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_bstop._entry_ptr = internal global ptr @cachefiles_daemon_bstop._entry, section ".printk_index", align 4
@cachefiles_daemon_cull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.46, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_daemon_cull\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr = internal global ptr @cachefiles_daemon_cull._entry, section ".printk_index", align 4
@cachefiles_daemon_cull._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CacheFiles: cull applied to unready cache\0A\00", [51 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr.49 = internal global ptr @cachefiles_daemon_cull._entry.47, section ".printk_index", align 4
@cachefiles_daemon_cull._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CacheFiles: cull applied to dead cache\0A\00", [54 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr.52 = internal global ptr @cachefiles_daemon_cull._entry.50, section ".printk_index", align 4
@cachefiles_daemon_cull._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr.55 = internal global ptr @cachefiles_daemon_cull._entry.53, section ".printk_index", align 4
@cachefiles_daemon_cull._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CacheFiles: cull command requires dirfd to be a directory\0A\00", [35 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr.58 = internal global ptr @cachefiles_daemon_cull._entry.56, section ".printk_index", align 4
@cachefiles_daemon_cull._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CacheFiles: cull command requires dirfd and filename\0A\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_cull._entry_ptr.61 = internal global ptr @cachefiles_daemon_cull._entry.59, section ".printk_index", align 4
@cachefiles_daemon_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.62, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_debug\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_debug._entry_ptr = internal global ptr @cachefiles_daemon_debug._entry, section ".printk_index", align 4
@cachefiles_daemon_debug._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] <== %s() = 0\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_daemon_debug._entry_ptr.65 = internal global ptr @cachefiles_daemon_debug._entry.63, section ".printk_index", align 4
@cachefiles_daemon_debug._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CacheFiles: debug command requires mask\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_daemon_debug._entry_ptr.68 = internal global ptr @cachefiles_daemon_debug._entry.66, section ".printk_index", align 4
@cachefiles_daemon_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.69, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cachefiles_daemon_dir\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_daemon_dir._entry_ptr = internal global ptr @cachefiles_daemon_dir._entry, section ".printk_index", align 4
@cachefiles_daemon_dir._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CacheFiles: Empty directory specified\0A\00", [55 x i8] zeroinitializer }, align 32
@cachefiles_daemon_dir._entry_ptr.72 = internal global ptr @cachefiles_daemon_dir._entry.70, section ".printk_index", align 4
@cachefiles_daemon_dir._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CacheFiles: Second cache directory specified\0A\00", [48 x i8] zeroinitializer }, align 32
@cachefiles_daemon_dir._entry_ptr.75 = internal global ptr @cachefiles_daemon_dir._entry.73, section ".printk_index", align 4
@cachefiles_daemon_frun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.76, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_daemon_frun\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_daemon_frun._entry_ptr = internal global ptr @cachefiles_daemon_frun._entry, section ".printk_index", align 4
@cachefiles_daemon_fcull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.77, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_fcull\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_fcull._entry_ptr = internal global ptr @cachefiles_daemon_fcull._entry, section ".printk_index", align 4
@cachefiles_daemon_fstop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.78, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_fstop\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_fstop._entry_ptr = internal global ptr @cachefiles_daemon_fstop._entry, section ".printk_index", align 4
@cachefiles_daemon_inuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CacheFiles: inuse applied to unready cache\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_daemon_inuse\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_daemon_inuse._entry_ptr = internal global ptr @cachefiles_daemon_inuse._entry, section ".printk_index", align 4
@cachefiles_daemon_inuse._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CacheFiles: inuse applied to dead cache\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_daemon_inuse._entry_ptr.83 = internal global ptr @cachefiles_daemon_inuse._entry.81, section ".printk_index", align 4
@cachefiles_daemon_inuse._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013CacheFiles: inuse command requires dirfd to be a directory\0A\00", [34 x i8] zeroinitializer }, align 32
@cachefiles_daemon_inuse._entry_ptr.86 = internal global ptr @cachefiles_daemon_inuse._entry.84, section ".printk_index", align 4
@cachefiles_daemon_inuse._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013CacheFiles: inuse command requires dirfd and filename\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_daemon_inuse._entry_ptr.89 = internal global ptr @cachefiles_daemon_inuse._entry.87, section ".printk_index", align 4
@cachefiles_daemon_secctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.90, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_daemon_secctx\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_daemon_secctx._entry_ptr = internal global ptr @cachefiles_daemon_secctx._entry, section ".printk_index", align 4
@cachefiles_daemon_secctx._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CacheFiles: Empty security context specified\0A\00", [48 x i8] zeroinitializer }, align 32
@cachefiles_daemon_secctx._entry_ptr.93 = internal global ptr @cachefiles_daemon_secctx._entry.91, section ".printk_index", align 4
@cachefiles_daemon_secctx._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CacheFiles: Second security context specified\0A\00", [47 x i8] zeroinitializer }, align 32
@cachefiles_daemon_secctx._entry_ptr.96 = internal global ptr @cachefiles_daemon_secctx._entry.94, section ".printk_index", align 4
@cachefiles_daemon_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.97, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cachefiles_daemon_tag\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_daemon_tag._entry_ptr = internal global ptr @cachefiles_daemon_tag._entry, section ".printk_index", align 4
@cachefiles_daemon_tag._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CacheFiles: Empty tag specified\0A\00", [61 x i8] zeroinitializer }, align 32
@cachefiles_daemon_tag._entry_ptr.100 = internal global ptr @cachefiles_daemon_tag._entry.98, section ".printk_index", align 4
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"cachefiles_daemon_fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 49, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 89, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"cachefiles_open\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 47, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 106, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 107, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 110, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 136, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 138, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 151, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 725, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 738, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 181, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 230, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 214, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 174, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 224, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"cachefiles_daemon_cmds\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 64, i32 43 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 671, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 691, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 696, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 702, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 712, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 401, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 316, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 425, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 449, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 557, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 563, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 568, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 582, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 587, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 591, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 603, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 610, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 614, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 473, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 476, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 481, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 329, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 353, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 377, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 634, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 639, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 658, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 662, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 501, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 504, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 509, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 529, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [26 x i8] c"../fs/cachefiles/daemon.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 532, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @cachefiles_daemon_bcull._entry, ptr @cachefiles_daemon_bcull._entry_ptr, ptr @cachefiles_daemon_bind._entry, ptr @cachefiles_daemon_bind._entry.30, ptr @cachefiles_daemon_bind._entry.33, ptr @cachefiles_daemon_bind._entry.36, ptr @cachefiles_daemon_bind._entry_ptr, ptr @cachefiles_daemon_bind._entry_ptr.32, ptr @cachefiles_daemon_bind._entry_ptr.35, ptr @cachefiles_daemon_bind._entry_ptr.38, ptr @cachefiles_daemon_brun._entry, ptr @cachefiles_daemon_brun._entry_ptr, ptr @cachefiles_daemon_bstop._entry, ptr @cachefiles_daemon_bstop._entry_ptr, ptr @cachefiles_daemon_cull._entry, ptr @cachefiles_daemon_cull._entry.47, ptr @cachefiles_daemon_cull._entry.50, ptr @cachefiles_daemon_cull._entry.53, ptr @cachefiles_daemon_cull._entry.56, ptr @cachefiles_daemon_cull._entry.59, ptr @cachefiles_daemon_cull._entry_ptr, ptr @cachefiles_daemon_cull._entry_ptr.49, ptr @cachefiles_daemon_cull._entry_ptr.52, ptr @cachefiles_daemon_cull._entry_ptr.55, ptr @cachefiles_daemon_cull._entry_ptr.58, ptr @cachefiles_daemon_cull._entry_ptr.61, ptr @cachefiles_daemon_debug._entry, ptr @cachefiles_daemon_debug._entry.63, ptr @cachefiles_daemon_debug._entry.66, ptr @cachefiles_daemon_debug._entry_ptr, ptr @cachefiles_daemon_debug._entry_ptr.65, ptr @cachefiles_daemon_debug._entry_ptr.68, ptr @cachefiles_daemon_dir._entry, ptr @cachefiles_daemon_dir._entry.70, ptr @cachefiles_daemon_dir._entry.73, ptr @cachefiles_daemon_dir._entry_ptr, ptr @cachefiles_daemon_dir._entry_ptr.72, ptr @cachefiles_daemon_dir._entry_ptr.75, ptr @cachefiles_daemon_fcull._entry, ptr @cachefiles_daemon_fcull._entry_ptr, ptr @cachefiles_daemon_frun._entry, ptr @cachefiles_daemon_frun._entry_ptr, ptr @cachefiles_daemon_fstop._entry, ptr @cachefiles_daemon_fstop._entry_ptr, ptr @cachefiles_daemon_inuse._entry, ptr @cachefiles_daemon_inuse._entry.81, ptr @cachefiles_daemon_inuse._entry.84, ptr @cachefiles_daemon_inuse._entry.87, ptr @cachefiles_daemon_inuse._entry_ptr, ptr @cachefiles_daemon_inuse._entry_ptr.83, ptr @cachefiles_daemon_inuse._entry_ptr.86, ptr @cachefiles_daemon_inuse._entry_ptr.89, ptr @cachefiles_daemon_open._entry, ptr @cachefiles_daemon_open._entry_ptr, ptr @cachefiles_daemon_range_error._entry, ptr @cachefiles_daemon_range_error._entry_ptr, ptr @cachefiles_daemon_release._entry, ptr @cachefiles_daemon_release._entry.12, ptr @cachefiles_daemon_release._entry.15, ptr @cachefiles_daemon_release._entry.9, ptr @cachefiles_daemon_release._entry_ptr, ptr @cachefiles_daemon_release._entry_ptr.11, ptr @cachefiles_daemon_release._entry_ptr.14, ptr @cachefiles_daemon_release._entry_ptr.17, ptr @cachefiles_daemon_secctx._entry, ptr @cachefiles_daemon_secctx._entry.91, ptr @cachefiles_daemon_secctx._entry.94, ptr @cachefiles_daemon_secctx._entry_ptr, ptr @cachefiles_daemon_secctx._entry_ptr.93, ptr @cachefiles_daemon_secctx._entry_ptr.96, ptr @cachefiles_daemon_tag._entry, ptr @cachefiles_daemon_tag._entry.98, ptr @cachefiles_daemon_tag._entry_ptr, ptr @cachefiles_daemon_tag._entry_ptr.100, ptr @cachefiles_daemon_unbind._entry, ptr @cachefiles_daemon_unbind._entry.19, ptr @cachefiles_daemon_unbind._entry_ptr, ptr @cachefiles_daemon_unbind._entry_ptr.20, ptr @cachefiles_daemon_write._entry, ptr @cachefiles_daemon_write._entry.26, ptr @cachefiles_daemon_write._entry_ptr, ptr @cachefiles_daemon_write._entry_ptr.27, ptr @cachefiles_daemon_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cachefiles_open, ptr @cachefiles_daemon_open.__key, ptr @.str.3, ptr @cachefiles_daemon_open.__key.4, ptr @.str.5, ptr @cachefiles_daemon_open.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cachefiles_daemon_cmds, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.99], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_open.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_open.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_release._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_release._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_release._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_unbind._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cmds to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bind._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bind._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bind._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_brun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_range_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bcull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_bstop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_cull._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_debug._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_debug._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_dir._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_dir._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_frun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_fcull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_fstop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_inuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_inuse._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_inuse._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_inuse._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_secctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_secctx._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_secctx._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_daemon_tag._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_read(ptr nocapture noundef readonly %file, ptr noundef %_buffer, i32 noundef %buflen, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  %buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #9
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cachefiles_has_space(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %f_released2 = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_released2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %f_released2, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %f_released2) #9, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !204
  %b_released4 = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 13
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_released4, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %b_released4, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %b_released4) #9, !srcloc !203
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !206
  %conv = sext i32 %asmresult.i.i.i to i64
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool9.not, i32 48, i32 49
  %frun = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %frun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %frun, align 8
  %fcull = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %fcull to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fcull, align 8
  %fstop = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %fstop to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fstop, align 8
  %brun = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %brun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %brun, align 8
  %bcull = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %bcull to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bcull, align 8
  %bstop = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 28
  %20 = ptrtoint ptr %bstop to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bstop, align 8
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %cond, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %asmresult.i.i, i64 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %buflen)
  %cmp = icmp ugt i32 %call10, %buflen
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call10)
  %cmp1.i.i = icmp ugt i32 %call10, 256
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !207

if.then3.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef 256, i32 noundef %call10) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end13
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %call10, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i39 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i39, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_buffer, i32 %call10, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i40 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i40)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i40, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buffer, i32 noundef %call10) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %_buffer, ptr noundef nonnull %buffer, i32 noundef %call10) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call10, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call10, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp16.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp16.not, i32 %call10, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then3.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_write(ptr nocapture noundef readonly %file, ptr noundef %_data, i32 noundef %datalen, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.end17, !prof !207

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/daemon.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #9, !srcloc !209
  unreachable

do.end17:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %if.end21, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %datalen)
  %cmp = icmp ugt i32 %datalen, 4095
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end21
  %call24 = tail call ptr @memdup_user_nul(ptr noundef %_data, i32 noundef %datalen) #9
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = tail call ptr @memchr(ptr noundef %call24, i32 noundef 0, i32 noundef %datalen) #14
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end32, label %if.end28.error_crit_edge

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end32:                                         ; preds = %if.end28
  %call33 = tail call ptr @memchr(ptr noundef %call24, i32 noundef 10, i32 noundef %datalen) #14
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %if.then35

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  %cmp36 = icmp eq ptr %call33, %call24
  br i1 %cmp36, label %if.then35.error_crit_edge, label %if.end38

if.then35.error_crit_edge:                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end38:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call33 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call33, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end32.if.end39_crit_edge
  %7 = ptrtoint ptr %call24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool40.not120 = icmp eq i8 %8, 0
  br i1 %tobool40.not120, label %if.end39.if.end54_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end39.for.body_crit_edge
  %9 = phi i8 [ %14, %for.inc.for.body_crit_edge ], [ %8, %if.end39.for.body_crit_edge ]
  %args.0121 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call24, %if.end39.for.body_crit_edge ]
  %conv = zext i8 %9 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp42.not = icmp eq i8 %12, 0
  br i1 %cmp42.not, label %for.inc, label %if.then47

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %args.0121, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 1
  %tobool40.not = icmp eq i8 %14, 0
  br i1 %tobool40.not, label %for.inc.if.end54_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %for.body
  %cmp48 = icmp eq ptr %args.0121, %call24
  br i1 %cmp48, label %if.then47.error_crit_edge, label %if.end51

if.then47.error_crit_edge:                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %args.0121 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %args.0121, align 1
  %incdec.ptr52 = getelementptr i8, ptr %args.0121, i32 1
  %call53 = tail call ptr @skip_spaces(ptr noundef %incdec.ptr52) #9
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %for.inc.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  %args.1 = phi ptr [ %call53, %if.end51 ], [ %call24, %if.end39.if.end54_crit_edge ], [ %incdec.ptr, %for.inc.if.end54_crit_edge ]
  %call60 = tail call i32 @strcmp(ptr noundef nonnull @cachefiles_daemon_cmds, ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.end54.found_command_crit_edge, label %for.inc65

if.end54.found_command_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65:                                        ; preds = %if.end54
  %call60.1 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 1), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.1)
  %cmp61.1 = icmp eq i32 %call60.1, 0
  br i1 %cmp61.1, label %for.inc65.found_command_crit_edge, label %for.inc65.1

for.inc65.found_command_crit_edge:                ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.1:                                      ; preds = %for.inc65
  %call60.2 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 2), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.2)
  %cmp61.2 = icmp eq i32 %call60.2, 0
  br i1 %cmp61.2, label %for.inc65.1.found_command_crit_edge, label %for.inc65.2

for.inc65.1.found_command_crit_edge:              ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.2:                                      ; preds = %for.inc65.1
  %call60.3 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 3), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.3)
  %cmp61.3 = icmp eq i32 %call60.3, 0
  br i1 %cmp61.3, label %for.inc65.2.found_command_crit_edge, label %for.inc65.3

for.inc65.2.found_command_crit_edge:              ; preds = %for.inc65.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.3:                                      ; preds = %for.inc65.2
  %call60.4 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 4), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.4)
  %cmp61.4 = icmp eq i32 %call60.4, 0
  br i1 %cmp61.4, label %for.inc65.3.found_command_crit_edge, label %for.inc65.4

for.inc65.3.found_command_crit_edge:              ; preds = %for.inc65.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.4:                                      ; preds = %for.inc65.3
  %call60.5 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 5), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.5)
  %cmp61.5 = icmp eq i32 %call60.5, 0
  br i1 %cmp61.5, label %for.inc65.4.found_command_crit_edge, label %for.inc65.5

for.inc65.4.found_command_crit_edge:              ; preds = %for.inc65.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.5:                                      ; preds = %for.inc65.4
  %call60.6 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 6), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.6)
  %cmp61.6 = icmp eq i32 %call60.6, 0
  br i1 %cmp61.6, label %for.inc65.5.found_command_crit_edge, label %for.inc65.6

for.inc65.5.found_command_crit_edge:              ; preds = %for.inc65.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.6:                                      ; preds = %for.inc65.5
  %call60.7 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 7), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.7)
  %cmp61.7 = icmp eq i32 %call60.7, 0
  br i1 %cmp61.7, label %for.inc65.6.found_command_crit_edge, label %for.inc65.7

for.inc65.6.found_command_crit_edge:              ; preds = %for.inc65.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.7:                                      ; preds = %for.inc65.6
  %call60.8 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 8), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.8)
  %cmp61.8 = icmp eq i32 %call60.8, 0
  br i1 %cmp61.8, label %for.inc65.7.found_command_crit_edge, label %for.inc65.8

for.inc65.7.found_command_crit_edge:              ; preds = %for.inc65.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.8:                                      ; preds = %for.inc65.7
  %call60.9 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 9), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.9)
  %cmp61.9 = icmp eq i32 %call60.9, 0
  br i1 %cmp61.9, label %for.inc65.8.found_command_crit_edge, label %for.inc65.9

for.inc65.8.found_command_crit_edge:              ; preds = %for.inc65.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.9:                                      ; preds = %for.inc65.8
  %call60.10 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 10), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.10)
  %cmp61.10 = icmp eq i32 %call60.10, 0
  br i1 %cmp61.10, label %for.inc65.9.found_command_crit_edge, label %for.inc65.10

for.inc65.9.found_command_crit_edge:              ; preds = %for.inc65.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.10:                                     ; preds = %for.inc65.9
  %call60.11 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 11), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.11)
  %cmp61.11 = icmp eq i32 %call60.11, 0
  br i1 %cmp61.11, label %for.inc65.10.found_command_crit_edge, label %for.inc65.11

for.inc65.10.found_command_crit_edge:             ; preds = %for.inc65.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

for.inc65.11:                                     ; preds = %for.inc65.10
  %call60.12 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 12), ptr noundef %call24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.12)
  %cmp61.12 = icmp eq i32 %call60.12, 0
  br i1 %cmp61.12, label %for.inc65.11.found_command_crit_edge, label %for.inc65.11.error_crit_edge

for.inc65.11.error_crit_edge:                     ; preds = %for.inc65.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

for.inc65.11.found_command_crit_edge:             ; preds = %for.inc65.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %found_command

error:                                            ; preds = %if.end73, %if.end73.thread, %for.inc65.11.error_crit_edge, %if.then47.error_crit_edge, %if.then35.error_crit_edge, %if.end28.error_crit_edge
  %ret.0 = phi i32 [ -22, %if.end28.error_crit_edge ], [ -22, %if.then35.error_crit_edge ], [ -95, %if.then47.error_crit_edge ], [ -5, %if.end73.thread ], [ %spec.select, %if.end73 ], [ -95, %for.inc65.11.error_crit_edge ]
  tail call void @kfree(ptr noundef %call24) #9
  br label %cleanup

found_command:                                    ; preds = %for.inc65.11.found_command_crit_edge, %for.inc65.10.found_command_crit_edge, %for.inc65.9.found_command_crit_edge, %for.inc65.8.found_command_crit_edge, %for.inc65.7.found_command_crit_edge, %for.inc65.6.found_command_crit_edge, %for.inc65.5.found_command_crit_edge, %for.inc65.4.found_command_crit_edge, %for.inc65.3.found_command_crit_edge, %for.inc65.2.found_command_crit_edge, %for.inc65.1.found_command_crit_edge, %for.inc65.found_command_crit_edge, %if.end54.found_command_crit_edge
  %cmd.0122.lcssa = phi ptr [ @cachefiles_daemon_cmds, %if.end54.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 1), %for.inc65.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 2), %for.inc65.1.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 3), %for.inc65.2.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 4), %for.inc65.3.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 5), %for.inc65.4.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 6), %for.inc65.5.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 7), %for.inc65.6.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 8), %for.inc65.7.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 9), %for.inc65.8.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 10), %for.inc65.9.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 11), %for.inc65.10.found_command_crit_edge ], [ getelementptr inbounds ([14 x %struct.cachefiles_daemon_cmd], ptr @cachefiles_daemon_cmds, i32 0, i32 12), %for.inc65.11.found_command_crit_edge ]
  %daemon_mutex = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %daemon_mutex, i32 noundef 0) #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool70.not = icmp eq i32 %18, 0
  br i1 %tobool70.not, label %if.end73, label %if.end73.thread

if.end73.thread:                                  ; preds = %found_command
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %daemon_mutex) #9
  br label %error

if.end73:                                         ; preds = %found_command
  call void @__sanitizer_cov_trace_pc() #11
  %handler = getelementptr inbounds %struct.cachefiles_daemon_cmd, ptr %cmd.0122.lcssa, i32 0, i32 1
  %19 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler, align 4
  %call72 = tail call i32 %20(ptr noundef nonnull %1, ptr noundef %args.1) #9
  tail call void @mutex_unlock(ptr noundef %daemon_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp75 = icmp eq i32 %call72, 0
  %spec.select = select i1 %cmp75, i32 %datalen, i32 %call72
  br label %error

cleanup:                                          ; preds = %error, %if.then26, %if.end21.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then26 ], [ %ret.0, %error ], [ -5, %do.end17.cleanup_crit_edge ], [ -95, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_poll(ptr noundef %file, ptr noundef %poll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %daemon_pollwq = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %poll, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %daemon_pollwq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %daemon_pollwq, ptr noundef nonnull %poll) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = lshr i32 %5, 3
  %.lobit = and i32 %6, 1
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  %9 = or i32 %8, %.lobit
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call5, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cachefiles_open, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr nonnull @cachefiles_open, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @cachefiles_open) #9, !srcloc !203
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i)
  %cmp = icmp eq i32 %asmresult.i, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end28

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 344) #15
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.then31, label %do.body33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @cachefiles_open, align 4
  br label %cleanup

do.body33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %daemon_mutex = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %daemon_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @cachefiles_daemon_open.__key) #9
  %daemon_pollwq = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %daemon_pollwq, ptr noundef nonnull @.str.5, ptr noundef nonnull @cachefiles_daemon_open.__key.4) #9
  %volumes = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %volumes to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %volumes, ptr %volumes, align 4
  %prev.i = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %volumes, ptr %prev.i, align 8
  %object_list = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %object_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %object_list, ptr %object_list, align 4
  %prev.i58 = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %object_list, ptr %prev.i58, align 8
  %object_list_lock = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %object_list_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @cachefiles_daemon_open.__key.6, i16 noundef signext 3) #9
  %frun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %frun_percent to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %frun_percent, align 4
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %fcull_percent, align 8
  %fstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %fstop_percent to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %fstop_percent, align 4
  %brun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %brun_percent to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %brun_percent, align 8
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %bcull_percent, align 4
  %bstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 20
  %16 = ptrtoint ptr %bstop_percent to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %bstop_percent, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data, align 4
  %cachefilesd = getelementptr inbounds %struct.cachefiles_cache, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %cachefilesd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %file, ptr %cachefilesd, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.then31, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body33 ], [ -12, %if.then31 ], [ -1, %do.end4.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %2 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.8) #13
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end13, label %do.end29, !prof !207

do.end13:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/daemon.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #9, !srcloc !212
  unreachable

do.end29:                                         ; preds = %do.body5
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %7 = load i32, ptr @cachefiles_debug, align 4
  %and.i52 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i, label %do.end29.do.end3.i_crit_edge, label %do.end.i

do.end29.do.end3.i_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.18) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end29.do.end3.i_crit_edge
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %do.end3.i.if.end7.i_crit_edge, label %if.then6.i

do.end3.i.if.end7.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cachefiles_withdraw_cache(ptr noundef nonnull %1) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %do.end3.i.if.end7.i_crit_edge
  %graveyard.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %graveyard.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %graveyard.i, align 4
  tail call void @cachefiles_put_directory(ptr noundef %15) #9
  %store.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %store.i, align 8
  tail call void @cachefiles_put_directory(ptr noundef %17) #9
  %mnt.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %mnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mnt.i, align 4
  tail call void @mntput(ptr noundef %19) #9
  %rootdirname.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 30
  %20 = ptrtoint ptr %rootdirname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rootdirname.i, align 4
  tail call void @kfree(ptr noundef %21) #9
  %secctx.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 31
  %22 = ptrtoint ptr %secctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %secctx.i, align 8
  tail call void @kfree(ptr noundef %23) #9
  %tag.i = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tag.i, align 4
  tail call void @kfree(ptr noundef %25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %26 = load i32, ptr @cachefiles_debug, align 4
  %and9.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.cachefiles_daemon_unbind.exit_crit_edge, label %do.end13.i

if.end7.i.cachefiles_daemon_unbind.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_daemon_unbind.exit

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i29.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i29.i to ptr
  %task16.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task16.i, align 8
  %comm17.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm17.i, ptr noundef nonnull @.str.18) #13
  br label %cachefiles_daemon_unbind.exit

cachefiles_daemon_unbind.exit:                    ; preds = %do.end13.i, %if.end7.i.cachefiles_daemon_unbind.exit_crit_edge
  %cachefilesd = getelementptr inbounds %struct.cachefiles_cache, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %cachefilesd to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cachefilesd, align 8
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %private_data, align 4
  store i32 0, ptr @cachefiles_open, align 4
  tail call void @kfree(ptr noundef nonnull %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %33 = load i32, ptr @cachefiles_debug, align 4
  %and32 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cachefiles_daemon_unbind.exit.do.end46_crit_edge, label %do.end37

cachefiles_daemon_unbind.exit.do.end46_crit_edge: ; preds = %cachefiles_daemon_unbind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end37:                                         ; preds = %cachefiles_daemon_unbind.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i53 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i53 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task40, align 8
  %comm41 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm41, ptr noundef nonnull @.str.8) #13
  br label %do.end46

do.end46:                                         ; preds = %do.end37, %cachefiles_daemon_unbind.exit.do.end46_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_withdraw_cache(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_put_directory(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_has_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_bind(ptr noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %frun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 15
  %5 = ptrtoint ptr %frun_percent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frun_percent, align 4
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %7 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fcull_percent, align 8
  %fstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 17
  %9 = ptrtoint ptr %fstop_percent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fstop_percent, align 4
  %brun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 18
  %11 = ptrtoint ptr %brun_percent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brun_percent, align 8
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %13 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bcull_percent, align 4
  %bstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 20
  %15 = ptrtoint ptr %bstop_percent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bstop_percent, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %args) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %fstop_percent4 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 17
  %17 = ptrtoint ptr %fstop_percent4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fstop_percent4, align 4
  %fcull_percent5 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %19 = ptrtoint ptr %fcull_percent5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcull_percent5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not = icmp ult i32 %18, %20
  br i1 %cmp.not, label %lor.lhs.false, label %do.end3.return_crit_edge

do.end3.return_crit_edge:                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %do.end3
  %frun_percent7 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 15
  %21 = ptrtoint ptr %frun_percent7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frun_percent7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp8.not = icmp uge i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %22)
  %cmp11 = icmp ugt i32 %22, 99
  %or.cond = or i1 %cmp8.not, %cmp11
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %if.end13

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %bstop_percent14 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 20
  %23 = ptrtoint ptr %bstop_percent14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bstop_percent14, align 8
  %bcull_percent15 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %25 = ptrtoint ptr %bcull_percent15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bcull_percent15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp16.not = icmp ult i32 %24, %26
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false17:                                  ; preds = %if.end13
  %brun_percent19 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 18
  %27 = ptrtoint ptr %brun_percent19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brun_percent19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp20.not = icmp uge i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %28)
  %cmp23 = icmp ugt i32 %28, 99
  %or.cond83 = or i1 %cmp20.not, %cmp23
  br i1 %or.cond83, label %lor.lhs.false17.return_crit_edge, label %if.end25

lor.lhs.false17.return_crit_edge:                 ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end25:                                         ; preds = %lor.lhs.false17
  %29 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %args, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  br i1 %tobool26.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %return

if.end32:                                         ; preds = %if.end25
  %rootdirname = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 30
  %31 = ptrtoint ptr %rootdirname to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rootdirname, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %return

if.end39:                                         ; preds = %if.end32
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool41.not = icmp eq i32 %and1.i, 0
  br i1 %tobool41.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %return

if.end47:                                         ; preds = %if.end39
  %tag = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 32
  %35 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tag, align 4
  %tobool48.not = icmp eq ptr %36, null
  br i1 %tobool48.not, label %if.then49, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then49:                                        ; preds = %if.end47
  %call50 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.39, i32 noundef 3264) #9
  %37 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call50, ptr %tag, align 4
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %if.then49.return_crit_edge, label %if.then49.if.end56_crit_edge

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then49.return_crit_edge:                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %call57 = tail call i32 @cachefiles_add_cache(ptr noundef %cache) #9
  br label %return

return:                                           ; preds = %if.end56, %if.then49.return_crit_edge, %do.end44, %do.end36, %do.end29, %lor.lhs.false17.return_crit_edge, %if.end13.return_crit_edge, %lor.lhs.false.return_crit_edge, %do.end3.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -16, %do.end44 ], [ %call57, %if.end56 ], [ -22, %do.end36 ], [ -34, %lor.lhs.false.return_crit_edge ], [ -34, %do.end3.return_crit_edge ], [ -34, %lor.lhs.false17.return_crit_edge ], [ -34, %if.end13.return_crit_edge ], [ -12, %if.then49.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_brun(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.41, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %16 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bcull_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ule i32 %call8, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call8)
  %cmp19 = icmp ugt i32 %call8, 99
  %or.cond = or i1 %cmp19, %cmp16.not
  br i1 %or.cond, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %brun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 18
  %18 = ptrtoint ptr %brun_percent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %brun_percent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ 0, %if.end23 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_bcull(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.44, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %bstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 20
  %16 = ptrtoint ptr %bstop_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bstop_percent, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ugt i32 %call8, %17
  br i1 %cmp16.not, label %lor.lhs.false18, label %if.end15.if.then21_crit_edge

if.end15.if.then21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false18:                                  ; preds = %if.end15
  %brun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 18
  %18 = ptrtoint ptr %brun_percent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brun_percent, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %19)
  %cmp19.not = icmp ult i32 %call8, %19
  br i1 %cmp19.not, label %if.end23, label %lor.lhs.false18.if.then21_crit_edge

lor.lhs.false18.if.then21_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18.if.then21_crit_edge, %if.end15.if.then21_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %20 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %bcull_percent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ 0, %if.end23 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_bstop(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.45, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %16 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bcull_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ult i32 %call8, %17
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %bstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 20
  %18 = ptrtoint ptr %bstop_percent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %bstop_percent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then18 ], [ 0, %if.end20 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_cull(ptr noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.46, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @strchr(ptr noundef %args, i32 noundef 47)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %do.end58

if.end8:                                          ; preds = %do.end4
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %11 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i71 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i71 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task29, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 107
  %15 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs, align 128
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %pwd1.i = getelementptr inbounds %struct.fs_struct, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %pwd1.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %pwd1.i, align 4
  %19 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %path, align 8
  call void @path_get(ptr noundef nonnull %path) #9
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i.i = and i32 %23, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i, label %if.end32, label %notdir

if.end32:                                         ; preds = %if.end27
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %24 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache_cred.i, align 8
  %call.i = call ptr @override_creds(ptr noundef %25) #9
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %call34 = call i32 @cachefiles_cull(ptr noundef %cache, ptr noundef %27, ptr noundef %args) #9
  call void @revert_creds(ptr noundef %call.i) #9
  call void @path_put(ptr noundef nonnull %path) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %28 = load i32, ptr @cachefiles_debug, align 4
  %and36 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %do.end41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task29, align 8
  %comm45 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm45, ptr noundef nonnull @.str.46, i32 noundef %call34) #13
  br label %cleanup

notdir:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void @path_put(ptr noundef nonnull %path) #9
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %cleanup

do.end58:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %notdir, %do.end41, %if.end32.cleanup_crit_edge, %do.end24, %do.end14
  %retval.0 = phi i32 [ -22, %do.end58 ], [ -5, %do.end24 ], [ -20, %notdir ], [ -5, %do.end14 ], [ %call34, %do.end41 ], [ %call34, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_debug(ptr nocapture noundef readnone %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.62, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %call5 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 0) #9
  %8 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.addr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %if.end8, label %do.end27

if.end8:                                          ; preds = %do.end4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  store i32 %call5, ptr @cachefiles_debug, align 4
  %and10 = and i32 %call5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i30 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i30 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task18, align 8
  %comm19 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %comm19, ptr noundef nonnull @.str.62) #13
  br label %cleanup

do.end27:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end15, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end27 ], [ 0, %do.end15 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_dir(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.69, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %args, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end4
  %rootdirname = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 30
  %7 = ptrtoint ptr %rootdirname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rootdirname, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call21 = tail call noalias ptr @kstrdup(ptr noundef %args, i32 noundef 3264) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rootdirname to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %rootdirname, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %do.end17, %do.end9
  %retval.0 = phi i32 [ -17, %do.end17 ], [ 0, %if.end24 ], [ -22, %do.end9 ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_frun(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.76, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %16 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fcull_percent, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ule i32 %call8, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call8)
  %cmp19 = icmp ugt i32 %call8, 99
  %or.cond = or i1 %cmp19, %cmp16.not
  br i1 %or.cond, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %frun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 15
  %18 = ptrtoint ptr %frun_percent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %frun_percent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ 0, %if.end23 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_fcull(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.77, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %fstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 17
  %16 = ptrtoint ptr %fstop_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fstop_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ugt i32 %call8, %17
  br i1 %cmp16.not, label %lor.lhs.false18, label %if.end15.if.then21_crit_edge

if.end15.if.then21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false18:                                  ; preds = %if.end15
  %frun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 15
  %18 = ptrtoint ptr %frun_percent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frun_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %19)
  %cmp19.not = icmp ult i32 %call8, %19
  br i1 %cmp19.not, label %if.end23, label %lor.lhs.false18.if.then21_crit_edge

lor.lhs.false18.if.then21_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18.if.then21_crit_edge, %if.end15.if.then21_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %20 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %fcull_percent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ 0, %if.end23 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_fstop(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %args.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %args, ptr %args.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %1 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.78, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = call i32 @simple_strtoul(ptr noundef %7, ptr noundef nonnull %args.addr, i32 noundef 10) #9
  %10 = ptrtoint ptr %args.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp.not = icmp eq i8 %13, 37
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %16 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fcull_percent, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %17)
  %cmp16.not = icmp ult i32 %call8, %17
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %fstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 17
  %18 = ptrtoint ptr %fstop_percent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %fstop_percent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then18 ], [ 0, %if.end20 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_inuse(ptr noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %call = tail call ptr @strchr(ptr noundef %args, i32 noundef 47)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %do.end29

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %6 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 107
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs, align 128
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %pwd1.i = getelementptr inbounds %struct.fs_struct, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %pwd1.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %pwd1.i, align 4
  %14 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %path, align 8
  call void @path_get(ptr noundef nonnull %path) #9
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i.i = and i32 %18, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i, label %if.end19, label %notdir

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %19 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_cred.i, align 8
  %call.i = call ptr @override_creds(ptr noundef %20) #9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %call21 = call i32 @cachefiles_check_in_use(ptr noundef %cache, ptr noundef %22, ptr noundef %args) #9
  call void @revert_creds(ptr noundef %call.i) #9
  call void @path_put(ptr noundef nonnull %path) #9
  br label %cleanup

notdir:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @path_put(ptr noundef nonnull %path) #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #13
  br label %cleanup

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %notdir, %if.end19, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -5, %do.end12 ], [ %call21, %if.end19 ], [ -20, %notdir ], [ -5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_secctx(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.90, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %args, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end4
  %secctx13 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 31
  %7 = ptrtoint ptr %secctx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %secctx13, align 8
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call22 = tail call noalias ptr @kstrdup(ptr noundef %args, i32 noundef 3264) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %secctx13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %secctx13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %do.end18, %do.end9
  %retval.0 = phi i32 [ -22, %do.end18 ], [ 0, %if.end25 ], [ -22, %do.end9 ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_daemon_tag(ptr nocapture noundef %cache, ptr noundef %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm, ptr noundef nonnull @.str.97, ptr noundef %args) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %args, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end4
  %tag13 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 32
  %7 = ptrtoint ptr %tag13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tag13, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call noalias ptr @kstrdup(ptr noundef %args, i32 noundef 3264) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %tag13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %tag13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %do.end9 ], [ -17, %if.end12.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_add_cache(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_cull(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_check_in_use(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @cachefiles_daemon_fops, !1, !"cachefiles_daemon_fops", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/daemon.c", i32 49, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/cachefiles/daemon.c", i32 89, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cachefiles_daemon_open._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cachefiles_daemon_open._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cachefiles_daemon_open.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/cachefiles/daemon.c", i32 106, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cachefiles_daemon_open.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/cachefiles/daemon.c", i32 107, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cachefiles_daemon_open.__key.6, !15, !"__key", i1 false, i1 false}
!15 = !{!"../fs/cachefiles/daemon.c", i32 110, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cachefiles_open, !18, !"cachefiles_open", i1 false, i1 false}
!18 = !{!"../fs/cachefiles/daemon.c", i32 47, i32 22}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/cachefiles/daemon.c", i32 136, i32 2}
!21 = !{ptr @cachefiles_daemon_release._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cachefiles_daemon_release._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/cachefiles/daemon.c", i32 138, i32 2}
!25 = !{ptr @cachefiles_daemon_release._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cachefiles_daemon_release._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cachefiles_daemon_release._entry.12, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @cachefiles_daemon_release._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/cachefiles/daemon.c", i32 151, i32 2}
!32 = !{ptr @cachefiles_daemon_release._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cachefiles_daemon_release._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/cachefiles/daemon.c", i32 725, i32 2}
!36 = !{ptr @cachefiles_daemon_unbind._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cachefiles_daemon_unbind._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cachefiles_daemon_unbind._entry.19, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../fs/cachefiles/daemon.c", i32 738, i32 2}
!40 = !{ptr @cachefiles_daemon_unbind._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/cachefiles/daemon.c", i32 181, i32 8}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/cachefiles/daemon.c", i32 224, i32 2}
!52 = !{ptr @cachefiles_daemon_write._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cachefiles_daemon_write._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cachefiles_daemon_write._entry.26, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @cachefiles_daemon_write._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @cachefiles_daemon_cmds, !57, !"cachefiles_daemon_cmds", i1 false, i1 false}
!57 = !{!"../fs/cachefiles/daemon.c", i32 64, i32 43}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/cachefiles/daemon.c", i32 671, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cachefiles_daemon_bind._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cachefiles_daemon_bind._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/cachefiles/daemon.c", i32 691, i32 3}
!65 = !{ptr @cachefiles_daemon_bind._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cachefiles_daemon_bind._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/cachefiles/daemon.c", i32 696, i32 3}
!69 = !{ptr @cachefiles_daemon_bind._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cachefiles_daemon_bind._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/cachefiles/daemon.c", i32 702, i32 3}
!73 = !{ptr @cachefiles_daemon_bind._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cachefiles_daemon_bind._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/cachefiles/daemon.c", i32 712, i32 24}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/cachefiles/daemon.c", i32 401, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cachefiles_daemon_brun._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cachefiles_daemon_brun._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/cachefiles/daemon.c", i32 316, i32 2}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cachefiles_daemon_range_error._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cachefiles_daemon_range_error._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/cachefiles/daemon.c", i32 425, i32 2}
!89 = !{ptr @cachefiles_daemon_bcull._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cachefiles_daemon_bcull._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/cachefiles/daemon.c", i32 449, i32 2}
!93 = !{ptr @cachefiles_daemon_bstop._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cachefiles_daemon_bstop._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/cachefiles/daemon.c", i32 557, i32 2}
!97 = !{ptr @cachefiles_daemon_cull._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cachefiles_daemon_cull._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/cachefiles/daemon.c", i32 563, i32 3}
!101 = !{ptr @cachefiles_daemon_cull._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cachefiles_daemon_cull._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/cachefiles/daemon.c", i32 568, i32 3}
!105 = !{ptr @cachefiles_daemon_cull._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cachefiles_daemon_cull._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/cachefiles/daemon.c", i32 582, i32 2}
!109 = !{ptr @cachefiles_daemon_cull._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cachefiles_daemon_cull._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/cachefiles/daemon.c", i32 587, i32 2}
!113 = !{ptr @cachefiles_daemon_cull._entry.56, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cachefiles_daemon_cull._entry_ptr.58, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/cachefiles/daemon.c", i32 591, i32 2}
!117 = !{ptr @cachefiles_daemon_cull._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cachefiles_daemon_cull._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/cachefiles/daemon.c", i32 603, i32 2}
!121 = !{ptr @cachefiles_daemon_debug._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cachefiles_daemon_debug._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/cachefiles/daemon.c", i32 610, i32 2}
!125 = !{ptr @cachefiles_daemon_debug._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cachefiles_daemon_debug._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/cachefiles/daemon.c", i32 614, i32 2}
!129 = !{ptr @cachefiles_daemon_debug._entry.66, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @cachefiles_daemon_debug._entry_ptr.68, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/cachefiles/daemon.c", i32 473, i32 2}
!133 = !{ptr @cachefiles_daemon_dir._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cachefiles_daemon_dir._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/cachefiles/daemon.c", i32 476, i32 3}
!137 = !{ptr @cachefiles_daemon_dir._entry.70, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cachefiles_daemon_dir._entry_ptr.72, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/cachefiles/daemon.c", i32 481, i32 3}
!141 = !{ptr @cachefiles_daemon_dir._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cachefiles_daemon_dir._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/cachefiles/daemon.c", i32 329, i32 2}
!145 = !{ptr @cachefiles_daemon_frun._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cachefiles_daemon_frun._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/cachefiles/daemon.c", i32 353, i32 2}
!149 = !{ptr @cachefiles_daemon_fcull._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cachefiles_daemon_fcull._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/cachefiles/daemon.c", i32 377, i32 2}
!153 = !{ptr @cachefiles_daemon_fstop._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cachefiles_daemon_fstop._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/cachefiles/daemon.c", i32 634, i32 3}
!157 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cachefiles_daemon_inuse._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @cachefiles_daemon_inuse._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/cachefiles/daemon.c", i32 639, i32 3}
!162 = !{ptr @cachefiles_daemon_inuse._entry.81, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @cachefiles_daemon_inuse._entry_ptr.83, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/cachefiles/daemon.c", i32 658, i32 2}
!166 = !{ptr @cachefiles_daemon_inuse._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cachefiles_daemon_inuse._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/cachefiles/daemon.c", i32 662, i32 2}
!170 = !{ptr @cachefiles_daemon_inuse._entry.87, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @cachefiles_daemon_inuse._entry_ptr.89, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/cachefiles/daemon.c", i32 501, i32 2}
!174 = !{ptr @cachefiles_daemon_secctx._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cachefiles_daemon_secctx._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/cachefiles/daemon.c", i32 504, i32 3}
!178 = !{ptr @cachefiles_daemon_secctx._entry.91, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cachefiles_daemon_secctx._entry_ptr.93, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/cachefiles/daemon.c", i32 509, i32 3}
!182 = !{ptr @cachefiles_daemon_secctx._entry.94, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @cachefiles_daemon_secctx._entry_ptr.96, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/cachefiles/daemon.c", i32 529, i32 2}
!186 = !{ptr @cachefiles_daemon_tag._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @cachefiles_daemon_tag._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/cachefiles/daemon.c", i32 532, i32 3}
!190 = !{ptr @cachefiles_daemon_tag._entry.98, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @cachefiles_daemon_tag._entry_ptr.100, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148614636}
!203 = !{i64 861504, i64 861521, i64 861545, i64 861571, i64 861589}
!204 = !{i64 2148615006}
!205 = !{i64 2148530459}
!206 = !{i64 2148530829}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{i64 2152824974, i64 2152824999}
!209 = !{i64 2155230893, i64 2155231380, i64 2155230930, i64 2155230986, i64 2155231020, i64 2155231044, i64 2155231085, i64 2155231106, i64 2155231134, i64 2155231168}
!210 = !{i64 2155217807}
!211 = !{i64 2155218150}
!212 = !{i64 2155224154, i64 2155224641, i64 2155224191, i64 2155224247, i64 2155224281, i64 2155224305, i64 2155224346, i64 2155224367, i64 2155224395, i64 2155224429}
