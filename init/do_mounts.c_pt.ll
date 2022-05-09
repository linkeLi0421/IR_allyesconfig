; ModuleID = '/llk/IR_all_yes/init/do_mounts.c_pt.bc'
source_filename = "../init/do_mounts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+name_to_dev_t\22, \22a\22\09"
module asm "\09.weak\09__crc_name_to_dev_t\09\09\09\09"
module asm "\09.long\09__crc_name_to_dev_t\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_name_to_dev_t:\09\09\09\09\09"
module asm "\09.asciz \09\22name_to_dev_t\22\09\09\09\09\09"
module asm "__kstrtabns_name_to_dev_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.uuidcmp = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.167, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.167 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.97, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.97 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.154, %struct.list_head, %struct.list_head, %union.anon.155 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.154 = type { %struct.list_head }
%union.anon.155 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@root_mountflags = dso_local global { i32, [28 x i8] } { i32 32769, [28 x i8] zeroinitializer }, align 32
@__setup_str_load_ramdisk = internal constant [14 x i8] c"load_ramdisk=\00", section ".init.rodata", align 1
@__setup_load_ramdisk = internal global %struct.obs_kernel_param { ptr @__setup_str_load_ramdisk, ptr @load_ramdisk, i32 0 }, section ".init.setup", align 4
@__setup_str_readonly = internal constant [3 x i8] c"ro\00", section ".init.rodata", align 1
@__setup_readonly = internal global %struct.obs_kernel_param { ptr @__setup_str_readonly, ptr @readonly, i32 0 }, section ".init.setup", align 4
@__setup_str_readwrite = internal constant [3 x i8] c"rw\00", section ".init.rodata", align 1
@__setup_readwrite = internal global %struct.obs_kernel_param { ptr @__setup_str_readwrite, ptr @readwrite, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/dev/nfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/dev/cifs\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/dev/ram\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PARTUUID=\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PARTLABEL=\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/dev/\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_name_to_dev_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_name_to_dev_t = external dso_local constant [0 x i8], align 1
@__ksymtab_name_to_dev_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @name_to_dev_t to i32), ptr @__kstrtab_name_to_dev_t, ptr @__kstrtabns_name_to_dev_t }, section "___ksymtab_gpl+name_to_dev_t", align 4
@__setup_str_root_dev_setup = internal constant [6 x i8] c"root=\00", section ".init.rodata", align 1
@__setup_root_dev_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_dev_setup, ptr @root_dev_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_rootwait_setup = internal constant [9 x i8] c"rootwait\00", section ".init.rodata", align 1
@__setup_rootwait_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_rootwait_setup, ptr @rootwait_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_root_data_setup = internal constant [11 x i8] c"rootflags=\00", section ".init.rodata", align 1
@__setup_root_data_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_data_setup, ptr @root_data_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_fs_names_setup = internal constant [12 x i8] c"rootfstype=\00", section ".init.rodata", align 1
@__setup_fs_names_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fs_names_setup, ptr @fs_names_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_root_delay_setup = internal constant [11 x i8] c"rootdelay=\00", section ".init.rodata", align 1
@__setup_root_delay_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_root_delay_setup, ptr @root_delay_setup, i32 0 }, section ".init.setup", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown-block(%u,%u)\00", [43 x i8] zeroinitializer }, align 32
@ROOT_DEV = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@root_fs_names = internal unnamed_addr global ptr null, section ".init.data", align 4
@root_mount_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@mount_block_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VFS: Cannot open root device \22%s\22 or %s: error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mount_block_root\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init/do_mounts.c\00", [47 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr = internal global ptr @mount_block_root._entry, section ".printk_index", align 4
@root_device_name = internal unnamed_addr global ptr null, section ".init.data", align 4
@mount_block_root._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Please append a correct \22root=\22 boot option; here are the available partitions:\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr.12 = internal global ptr @mount_block_root._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VFS: Unable to mount root fs on %s\00", [61 x i8] zeroinitializer }, align 32
@mount_block_root._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.9, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"List of all partitions:\0A\00", [39 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr.16 = internal global ptr @mount_block_root._entry.14, section ".printk_index", align 4
@mount_block_root._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No filesystem could mount root, tried: \00", [56 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr.19 = internal global ptr @mount_block_root._entry.17, section ".printk_index", align 4
@mount_block_root._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr.22 = internal global ptr @mount_block_root._entry.20, section ".printk_index", align 4
@mount_block_root._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.9, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mount_block_root._entry_ptr.25 = internal global ptr @mount_block_root._entry.23, section ".printk_index", align 4
@mount_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.9, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013VFS: Unable to mount root fs via NFS.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mount_root\00", [21 x i8] zeroinitializer }, align 32
@mount_root._entry_ptr = internal global ptr @mount_root._entry, section ".printk_index", align 4
@mount_root._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.9, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013VFS: Unable to mount root fs via SMB.\0A\00", [55 x i8] zeroinitializer }, align 32
@mount_root._entry_ptr.30 = internal global ptr @mount_root._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/dev/root\00", [22 x i8] zeroinitializer }, align 32
@mount_root._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.9, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\010Failed to create /dev/root: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mount_root._entry_ptr.34 = internal global ptr @mount_root._entry.32, section ".printk_index", align 4
@root_delay = internal unnamed_addr global i32 0, section ".init.data", align 4
@prepare_namespace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.9, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Waiting %d sec before mounting root device...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepare_namespace\00", [46 x i8] zeroinitializer }, align 32
@prepare_namespace._entry_ptr = internal global ptr @prepare_namespace._entry, section ".printk_index", align 4
@saved_root_name = internal global [64 x i8] zeroinitializer, section ".init.data", align 1
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtd\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@root_wait = internal global { i1, [31 x i8] } zeroinitializer, align 32
@prepare_namespace._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.9, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Waiting for root device %s...\0A\00", [63 x i8] zeroinitializer }, align 32
@prepare_namespace._entry_ptr.41 = internal global ptr @prepare_namespace._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@rootfs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.44, i32 0, ptr @rootfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmpfs\00", [26 x i8] zeroinitializer }, align 32
@is_tmpfs = internal global { i1, [31 x i8] } zeroinitializer, align 32
@load_ramdisk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.9, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ignoring the deprecated load_ramdisk= option\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"load_ramdisk\00", [19 x i8] zeroinitializer }, align 32
@load_ramdisk._entry_ptr = internal global ptr @load_ramdisk._entry, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PARTNROFF=%d%c\00", [17 x i8] zeroinitializer }, align 32
@block_class = external dso_local global %struct.class, align 4
@devt_from_partuuid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.9, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013VFS: PARTUUID= is invalid.\0AExpected PARTUUID=<valid-uuid-id>[/PARTNROFF=%%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devt_from_partuuid\00", [45 x i8] zeroinitializer }, align 32
@devt_from_partuuid._entry_ptr = internal global ptr @devt_from_partuuid._entry, section ".printk_index", align 4
@devt_from_partuuid._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.9, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Disabling rootwait; root= is invalid.\0A\00", [55 x i8] zeroinitializer }, align 32
@devt_from_partuuid._entry_ptr.53 = internal global ptr @devt_from_partuuid._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u:%u%c\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u:%u:%u:%c\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/root\00", [26 x i8] zeroinitializer }, align 32
@do_mount_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.9, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016VFS: Mounted root (%s filesystem)%s on device %u:%u.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_mount_root\00", [18 x i8] zeroinitializer }, align 32
@do_mount_root._entry_ptr = internal global ptr @do_mount_root._entry, section ".printk_index", align 4
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" readonly\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 48]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967283]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 254, i64 255]
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"root_mountflags\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 31, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 280, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 282, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 284, i32 19 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 287, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 289, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 291, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 403, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"ROOT_DEV\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 36, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 428, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 430, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 433, i32 9 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 440, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 442, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 444, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 445, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 572, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 579, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 589, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 592, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 604, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 622, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 623, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"root_wait\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 637, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 648, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 648, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 662, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"rootfs_fs_type\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 661, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 670, i32 44 }
@___asan_gen_.202 = private unnamed_addr constant [9 x i8] c"is_tmpfs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 40, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 117, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 146, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 149, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 234, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 235, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 376, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 383, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 717, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 474, i32 33 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [20 x i8] c"../init/do_mounts.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 511, i32 33 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__ksymtab_name_to_dev_t, ptr @__setup_fs_names_setup, ptr @__setup_load_ramdisk, ptr @__setup_readonly, ptr @__setup_readwrite, ptr @__setup_root_data_setup, ptr @__setup_root_delay_setup, ptr @__setup_root_dev_setup, ptr @__setup_rootwait_setup, ptr @devt_from_partuuid._entry, ptr @devt_from_partuuid._entry.51, ptr @devt_from_partuuid._entry_ptr, ptr @devt_from_partuuid._entry_ptr.53, ptr @do_mount_root._entry, ptr @do_mount_root._entry_ptr, ptr @load_ramdisk._entry, ptr @load_ramdisk._entry_ptr, ptr @mount_block_root._entry, ptr @mount_block_root._entry.10, ptr @mount_block_root._entry.14, ptr @mount_block_root._entry.17, ptr @mount_block_root._entry.20, ptr @mount_block_root._entry.23, ptr @mount_block_root._entry_ptr, ptr @mount_block_root._entry_ptr.12, ptr @mount_block_root._entry_ptr.16, ptr @mount_block_root._entry_ptr.19, ptr @mount_block_root._entry_ptr.22, ptr @mount_block_root._entry_ptr.25, ptr @mount_root._entry, ptr @mount_root._entry.28, ptr @mount_root._entry.32, ptr @mount_root._entry_ptr, ptr @mount_root._entry_ptr.30, ptr @mount_root._entry_ptr.34, ptr @prepare_namespace._entry, ptr @prepare_namespace._entry.39, ptr @prepare_namespace._entry_ptr, ptr @prepare_namespace._entry_ptr.41, ptr @root_mountflags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ROOT_DEV, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @root_wait, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @rootfs_fs_type, ptr @.str.45, ptr @is_tmpfs, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_mountflags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ROOT_DEV to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_block_root._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_root._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_root._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_namespace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_wait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_namespace._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_tmpfs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_ramdisk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devt_from_partuuid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devt_from_partuuid._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_mount_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @load_ramdisk(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #24
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @readonly(ptr nocapture noundef readonly %str) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = load i32, ptr @root_mountflags, align 4
  %or = or i32 %2, 1
  store i32 %or, ptr @root_mountflags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @readwrite(ptr nocapture noundef readonly %str) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = load i32, ptr @root_mountflags, align 4
  %and = and i32 %2, -2
  store i32 %and, ptr @root_mountflags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @name_to_dev_t(ptr noundef %name) #2 align 64 {
entry:
  %maj.i = alloca i32, align 4
  %min.i = alloca i32, align 4
  %offset.i45 = alloca i32, align 4
  %p.i = alloca ptr, align 4
  %dummy.i = alloca i8, align 1
  %s.i = alloca [32 x i8], align 1
  %cmp.i = alloca %struct.uuidcmp, align 4
  %offset.i = alloca i32, align 4
  %c.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.1) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.2) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.3, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %name, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmp.i) #21
  %0 = getelementptr inbounds %struct.uuidcmp, ptr %cmp.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #21
  %1 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset.i, align 4
  %2 = ptrtoint ptr %cmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %cmp.i, align 4
  %call.i = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 47) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i) #21
  %3 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %c.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %offset.i, ptr noundef nonnull %c.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.ptr.sub.i, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i) #21
  br label %if.end6.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i) #21
  br label %do.end.i

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  %call4.i = tail call i32 @strlen(ptr noundef %add.ptr) #26
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4.i, ptr %0, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %cleanup.thread.i
  %6 = phi i32 [ %sub.ptr.sub.i, %cleanup.thread.i ], [ %call4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not.i = icmp eq i32 %6, 0
  br i1 %tobool8.not.i, label %if.end6.i.do.end.i_crit_edge, label %if.end10.i

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call ptr @class_find_device(ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull %cmp.i, ptr noundef nonnull @match_dev_by_uuid) #21
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.devt_from_partuuid.exit_crit_edge, label %if.end14.i

if.end10.i.devt_from_partuuid.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_partuuid.exit

if.end14.i:                                       ; preds = %if.end10.i
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not.i = icmp eq i32 %8, 0
  br i1 %tobool15.not.i, label %if.else23.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  %bd_disk.i = getelementptr i8, ptr %call11.i, i32 992
  %9 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_disk.i, align 8
  %bd_partno.i = getelementptr i8, ptr %call11.i, i32 944
  %11 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bd_partno.i, align 8
  %13 = trunc i32 %8 to i8
  %conv21.i = add i8 %12, %13
  %call22.i = call i32 @part_devt(ptr noundef %10, i8 noundef zeroext %conv21.i) #21
  br label %if.end25.i

if.else23.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  %devt24.i = getelementptr inbounds %struct.device, ptr %call11.i, i32 0, i32 29
  %14 = ptrtoint ptr %devt24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devt24.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else23.i, %if.then16.i
  %devt.0.i = phi i32 [ %call22.i, %if.then16.i ], [ %15, %if.else23.i ]
  call void @put_device(ptr noundef nonnull %call11.i) #21
  br label %devt_from_partuuid.exit

do.end.i:                                         ; preds = %if.end6.i.do.end.i_crit_edge, %cleanup.i
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #24
  %.b.i = load i1, ptr @root_wait, align 4
  br i1 %.b.i, label %do.end32.i, label %do.end.i.if.end35.i_crit_edge

do.end.i.if.end35.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35.i

do.end32.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #24
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %do.end.i.if.end35.i_crit_edge
  store i1 false, ptr @root_wait, align 4
  br label %devt_from_partuuid.exit

devt_from_partuuid.exit:                          ; preds = %if.end35.i, %if.end25.i, %if.end10.i.devt_from_partuuid.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end35.i ], [ %devt.0.i, %if.end25.i ], [ 0, %if.end10.i.devt_from_partuuid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmp.i) #21
  br label %return

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(11) @.str.4, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %add.ptr17 = getelementptr i8, ptr %name, i32 10
  %call.i36 = tail call ptr @class_find_device(ptr noundef nonnull @block_class, ptr noundef null, ptr noundef %add.ptr17, ptr noundef nonnull @match_dev_by_label) #21
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %if.then16.return_crit_edge, label %if.then.i38

if.then16.return_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then.i38:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #23
  %devt1.i = getelementptr inbounds %struct.device, ptr %call.i36, i32 0, i32 29
  %16 = ptrtoint ptr %devt1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devt1.i, align 8
  tail call void @put_device(ptr noundef nonnull %call.i36) #21
  br label %return

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %add.ptr23 = getelementptr i8, ptr %name, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %s.i) #21
  %18 = getelementptr inbounds [32 x i8], ptr %s.i, i32 0, i32 2
  %19 = call ptr @memset(ptr %s.i, i32 255, i32 32)
  %call.i40 = tail call i32 @strlen(ptr noundef %add.ptr23) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i40)
  %cmp.i41 = icmp ugt i32 %call.i40, 31
  br i1 %cmp.i41, label %if.then22.devt_from_devname.exit_crit_edge, label %if.end.i

if.then22.devt_from_devname.exit_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

if.end.i:                                         ; preds = %if.then22
  %call1.i42 = call ptr @strcpy(ptr noundef nonnull %s.i, ptr noundef %add.ptr23) #26
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end.i
  %p.0.i = phi ptr [ %s.i, %if.end.i ], [ %incdec.ptr.i, %for.inc.i ]
  %20 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p.0.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %for.cond.i.for.inc.i_crit_edge [
    i8 0, label %for.end.i
    i8 47, label %if.then5.i
  ]

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  %23 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %p.0.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %call8.i = call i32 @blk_lookup_devt(ptr noundef nonnull %s.i, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.end.i.while.cond.i_crit_edge, label %for.end.i.devt_from_devname.exit_crit_edge

for.end.i.devt_from_devname.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

for.end.i.while.cond.i_crit_edge:                 ; preds = %for.end.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %for.end.i.while.cond.i_crit_edge
  %p.1.i = phi ptr [ %arrayidx.i, %land.rhs.i.while.cond.i_crit_edge ], [ %p.0.i, %for.end.i.while.cond.i_crit_edge ]
  %cmp13.i = icmp ugt ptr %p.1.i, %s.i
  br i1 %cmp13.i, label %land.rhs.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx.i = getelementptr i8, ptr %p.1.i, i32 -1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv15.i = zext i8 %25 to i32
  %26 = add nsw i32 %conv15.i, -58
  %27 = icmp ult i32 %26, -10
  br i1 %27, label %land.rhs.i.while.end.i_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %cmp20.i = icmp eq ptr %p.1.i, %s.i
  br i1 %cmp20.i, label %while.end.i.devt_from_devname.exit_crit_edge, label %lor.lhs.false.i

while.end.i.devt_from_devname.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

lor.lhs.false.i:                                  ; preds = %while.end.i
  %28 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %p.1.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %29, label %if.end28.i [
    i8 0, label %lor.lhs.false.i.devt_from_devname.exit_crit_edge
    i8 48, label %lor.lhs.false.i.devt_from_devname.exit_crit_edge56
  ]

lor.lhs.false.i.devt_from_devname.exit_crit_edge56: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

lor.lhs.false.i.devt_from_devname.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %call29.i = call i32 @simple_strtoul(ptr noundef %p.1.i, ptr noundef null, i32 noundef 10) #21
  %31 = ptrtoint ptr %p.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %p.1.i, align 1
  %call31.i = call i32 @blk_lookup_devt(ptr noundef nonnull %s.i, i32 noundef %call29.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end28.i.devt_from_devname.exit_crit_edge

if.end28.i.devt_from_devname.exit_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

if.end34.i:                                       ; preds = %if.end28.i
  %cmp36.i = icmp ult ptr %p.1.i, %18
  br i1 %cmp36.i, label %if.end34.i.devt_from_devname.exit_crit_edge, label %lor.lhs.false38.i

if.end34.i.devt_from_devname.exit_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

lor.lhs.false38.i:                                ; preds = %if.end34.i
  %arrayidx39.i = getelementptr i8, ptr %p.1.i, i32 -2
  %32 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %33 to i32
  %34 = add nsw i32 %conv40.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %34)
  %35 = icmp ult i32 %34, -10
  br i1 %35, label %lor.lhs.false38.i.devt_from_devname.exit_crit_edge, label %lor.lhs.false43.i

lor.lhs.false38.i.devt_from_devname.exit_crit_edge: ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

lor.lhs.false43.i:                                ; preds = %lor.lhs.false38.i
  %arrayidx44.i = getelementptr i8, ptr %p.1.i, i32 -1
  %36 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %37)
  %cmp46.not.i = icmp eq i8 %37, 112
  br i1 %cmp46.not.i, label %if.end49.i, label %lor.lhs.false43.i.devt_from_devname.exit_crit_edge

lor.lhs.false43.i.devt_from_devname.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devname.exit

if.end49.i:                                       ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #23
  %38 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx44.i, align 1
  %call52.i = call i32 @blk_lookup_devt(ptr noundef nonnull %s.i, i32 noundef %call29.i) #21
  br label %devt_from_devname.exit

devt_from_devname.exit:                           ; preds = %if.end49.i, %lor.lhs.false43.i.devt_from_devname.exit_crit_edge, %lor.lhs.false38.i.devt_from_devname.exit_crit_edge, %if.end34.i.devt_from_devname.exit_crit_edge, %if.end28.i.devt_from_devname.exit_crit_edge, %lor.lhs.false.i.devt_from_devname.exit_crit_edge, %lor.lhs.false.i.devt_from_devname.exit_crit_edge56, %while.end.i.devt_from_devname.exit_crit_edge, %for.end.i.devt_from_devname.exit_crit_edge, %if.then22.devt_from_devname.exit_crit_edge
  %retval.0.i43 = phi i32 [ %call52.i, %if.end49.i ], [ 0, %if.then22.devt_from_devname.exit_crit_edge ], [ %call8.i, %for.end.i.devt_from_devname.exit_crit_edge ], [ 0, %lor.lhs.false.i.devt_from_devname.exit_crit_edge ], [ 0, %lor.lhs.false.i.devt_from_devname.exit_crit_edge56 ], [ 0, %while.end.i.devt_from_devname.exit_crit_edge ], [ %call31.i, %if.end28.i.devt_from_devname.exit_crit_edge ], [ 0, %lor.lhs.false43.i.devt_from_devname.exit_crit_edge ], [ 0, %lor.lhs.false38.i.devt_from_devname.exit_crit_edge ], [ 0, %if.end34.i.devt_from_devname.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %s.i) #21
  br label %return

if.end25:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maj.i) #21
  %39 = ptrtoint ptr %maj.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %maj.i, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.i) #21
  %40 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %min.i, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i45) #21
  %41 = ptrtoint ptr %offset.i45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %offset.i45, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #21
  %42 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %p.i, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #21
  %43 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %dummy.i, align 1, !annotation !171
  %call.i46 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.54, ptr noundef nonnull %maj.i, ptr noundef nonnull %min.i, ptr noundef nonnull %dummy.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46)
  %cmp.i47 = icmp eq i32 %call.i46, 2
  br i1 %cmp.i47, label %if.end25.if.then.i50_crit_edge, label %lor.lhs.false.i49

if.end25.if.then.i50_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i50

lor.lhs.false.i49:                                ; preds = %if.end25
  %call1.i48 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.55, ptr noundef nonnull %maj.i, ptr noundef nonnull %min.i, ptr noundef nonnull %offset.i45, ptr noundef nonnull %dummy.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i48)
  %cmp2.i = icmp eq i32 %call1.i48, 3
  br i1 %cmp2.i, label %lor.lhs.false.i49.if.then.i50_crit_edge, label %if.else.i52

lor.lhs.false.i49.if.then.i50_crit_edge:          ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i50

if.then.i50:                                      ; preds = %lor.lhs.false.i49.if.then.i50_crit_edge, %if.end25.if.then.i50_crit_edge
  %44 = ptrtoint ptr %maj.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maj.i, align 4
  %shl.i = shl i32 %45, 20
  %46 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %min.i, align 4
  %or.i = or i32 %shl.i, %47
  %shr.i = lshr i32 %or.i, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %shr.i)
  %cmp3.not.i = icmp eq i32 %45, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %47)
  %48 = icmp ult i32 %47, 1048576
  %or.cond.i = select i1 %cmp3.not.i, i1 %48, i1 false
  br i1 %or.cond.i, label %if.then.i50.if.end11.i_crit_edge, label %if.then.i50.devt_from_devnum.exit_crit_edge

if.then.i50.devt_from_devnum.exit_crit_edge:      ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devnum.exit

if.then.i50.if.end11.i_crit_edge:                 ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11.i

if.else.i52:                                      ; preds = %lor.lhs.false.i49
  %call7.i = call i32 @simple_strtoul(ptr noundef %name, ptr noundef nonnull %p.i, i32 noundef 16) #21
  %and1.i.i = and i32 %call7.i, 255
  %shr2.i.i = lshr i32 %call7.i, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %49 = shl i32 %call7.i, 12
  %shl.i.i = and i32 %49, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %50 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i51 = icmp eq i8 %53, 0
  br i1 %tobool.not.i51, label %if.else.i52.if.end11.i_crit_edge, label %if.else.i52.devt_from_devnum.exit_crit_edge

if.else.i52.devt_from_devnum.exit_crit_edge:      ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #23
  br label %devt_from_devnum.exit

if.else.i52.if.end11.i_crit_edge:                 ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i52.if.end11.i_crit_edge, %if.then.i50.if.end11.i_crit_edge
  %devt.0.i53 = phi i32 [ %or4.i.i, %if.else.i52.if.end11.i_crit_edge ], [ %or.i, %if.then.i50.if.end11.i_crit_edge ]
  br label %devt_from_devnum.exit

devt_from_devnum.exit:                            ; preds = %if.end11.i, %if.else.i52.devt_from_devnum.exit_crit_edge, %if.then.i50.devt_from_devnum.exit_crit_edge
  %retval.0.i54 = phi i32 [ %devt.0.i53, %if.end11.i ], [ 0, %if.then.i50.devt_from_devnum.exit_crit_edge ], [ 0, %if.else.i52.devt_from_devnum.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i45) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maj.i) #21
  br label %return

return:                                           ; preds = %devt_from_devnum.exit, %devt_from_devname.exit, %if.then.i38, %if.then16.return_crit_edge, %devt_from_partuuid.exit, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %devt_from_partuuid.exit ], [ %retval.0.i43, %devt_from_devname.exit ], [ %retval.0.i54, %devt_from_devnum.exit ], [ 255, %entry.return_crit_edge ], [ 254, %if.end.return_crit_edge ], [ 1048576, %if.end4.return_crit_edge ], [ %17, %if.then.i38 ], [ 0, %if.then16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @root_dev_setup(ptr noundef %line) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef nonnull @saved_root_name, ptr noundef %line, i32 noundef 64) #21
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rootwait_setup(ptr nocapture noundef readonly %str) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @root_wait, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @root_data_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @root_mount_data, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fs_names_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @root_fs_names, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @root_delay_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %str, ptr noundef null, i32 noundef 0) #21
  store i32 %call, ptr @root_delay, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mount_block_root(ptr noundef %name, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  %call1 = tail call ptr @page_address(ptr noundef %call38.i.i.i) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #21
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  %1 = load i32, ptr @ROOT_DEV, align 4
  %shr = lshr i32 %1, 20
  %and = and i32 %1, 1048575
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %b, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef %and) #21
  %2 = load ptr, ptr @root_fs_names, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call3 = call fastcc i32 @split_fs_names(ptr noundef %call1) #27
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call4 = call i32 @list_bdev_fs_names(ptr noundef %call1, i32 noundef 4096) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %num_fs.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fs.0)
  %cmp74 = icmp sgt i32 %num_fs.0, 0
  %3 = or i32 %flags, 1
  br label %retry

retry:                                            ; preds = %for.end.retry_crit_edge, %if.end
  %flags.addr.0 = phi i32 [ %flags, %if.end ], [ %3, %for.end.retry_crit_edge ]
  br i1 %cmp74, label %retry.for.body_crit_edge, label %retry.for.end_crit_edge

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %p.076 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %call1, %retry.for.body_crit_edge ]
  %i.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %retry.for.body_crit_edge ]
  %4 = ptrtoint ptr %p.076 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.076, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %6 = load ptr, ptr @root_mount_data, align 4
  %call8 = call fastcc i32 @do_mount_root(ptr noundef %name, ptr noundef %p.076, i32 noundef %flags.addr.0, ptr noundef %6) #27
  %7 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call8, label %do.end [
    i32 0, label %out
    i32 -13, label %if.end7.for.inc_crit_edge
    i32 -22, label %if.end7.for.inc_crit_edge86
  ]

if.end7.for.inc_crit_edge86:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  %8 = load ptr, ptr @root_device_name, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef nonnull %b, i32 noundef %call8) #24
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #24
  call void @printk_all_partitions() #21
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef nonnull %b) #28
  unreachable

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %if.end7.for.inc_crit_edge86, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %call18 = call i32 @strlen(ptr noundef %p.076) #25
  %add = add i32 %call18, 1
  %add.ptr = getelementptr i8, ptr %p.076, i32 %add
  %exitcond.not = icmp eq i32 %inc, %num_fs.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %retry.for.end_crit_edge
  %and19 = and i32 %flags.addr.0, 1
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.end.retry_crit_edge, label %do.end25

for.end.retry_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %retry

do.end25:                                         ; preds = %for.end
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #24
  call void @printk_all_partitions() #21
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #24
  br i1 %cmp74, label %do.end25.do.end38_crit_edge, label %do.end25.do.end49_crit_edge

do.end25.do.end49_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end49

do.end25.do.end38_crit_edge:                      ; preds = %do.end25
  br label %do.end38

do.end38:                                         ; preds = %do.end38.do.end38_crit_edge, %do.end25.do.end38_crit_edge
  %p.179 = phi ptr [ %add.ptr45, %do.end38.do.end38_crit_edge ], [ %call1, %do.end25.do.end38_crit_edge ]
  %i.178 = phi i32 [ %inc42, %do.end38.do.end38_crit_edge ], [ 0, %do.end25.do.end38_crit_edge ]
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %p.179) #24
  %inc42 = add nuw nsw i32 %i.178, 1
  %call43 = call i32 @strlen(ptr noundef %p.179) #25
  %add44 = add i32 %call43, 1
  %add.ptr45 = getelementptr i8, ptr %p.179, i32 %add44
  %exitcond81.not = icmp eq i32 %inc42, %num_fs.0
  br i1 %exitcond81.not, label %do.end38.do.end49_crit_edge, label %do.end38.do.end38_crit_edge

do.end38.do.end38_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end38

do.end38.do.end49_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end49

do.end49:                                         ; preds = %do.end38.do.end49_crit_edge, %do.end25.do.end49_crit_edge
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #24
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef nonnull %b) #28
  unreachable

out:                                              ; preds = %if.end7
  %9 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !172

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  %12 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #21
  %14 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !173

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.62) #21
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #21, !srcloc !174
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !175
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #21
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #21, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mount_block_root, %if.then.i.i.i.i.i)) #21
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !178

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %13, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #21
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @__put_page(ptr noundef %13) #21
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #21
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @split_fs_names(ptr noundef %page) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @root_fs_names, align 4
  %call = tail call i32 @strlcpy(ptr noundef %page, ptr noundef %0, i32 noundef 4096) #21
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %count.0.ph = phi i32 [ %inc, %if.then ], [ 1, %entry ]
  %p.0.ph = phi ptr [ %incdec.ptr, %if.then ], [ %page, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.outer
  %p.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %p.0.ph, %while.cond.outer ]
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %1 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %2, label %while.cond.while.cond_crit_edge [
    i8 0, label %while.end
    i8 44, label %if.then
  ]

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %p.0, align 1
  %inc = add i32 %count.0.ph, 1
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  ret i32 %count.0.ph
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @list_bdev_fs_names(ptr noundef, i32 noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mount_root(ptr noundef %name, ptr noundef %fs, i32 noundef %flags, ptr noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end5

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  %tobool1.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %call3 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #21
  %call4 = tail call ptr @strncpy(ptr noundef %call3, ptr noundef nonnull %data, i32 noundef 4096)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %p.0 = phi ptr [ %call38.i.i.i, %if.end ], [ null, %entry.if.end5_crit_edge ]
  %data_page.0 = phi ptr [ %call3, %if.end ], [ null, %entry.if.end5_crit_edge ]
  %call6 = tail call i32 @init_mount(ptr noundef %name, ptr noundef nonnull @.str.57, ptr noundef %fs, i32 noundef %flags, ptr noundef %data_page.0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  %call10 = tail call i32 @init_chdir(ptr noundef nonnull @.str.57) #24
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #21
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fs12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %fs12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs12, align 128
  %dentry = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dev, align 8
  store i32 %11, ptr @ROOT_DEV, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_type, align 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %and.i30 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.i.not = icmp eq i32 %and.i30, 0
  %cond = select i1 %tobool.i.not, ptr @.str.61, ptr @.str.60
  %shr = lshr i32 %11, 20
  %and = and i32 %11, 1048575
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %15, ptr noundef nonnull %cond, i32 noundef %shr, i32 noundef %and) #24
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge
  %tobool16.not = icmp eq ptr %p.0, null
  br i1 %tobool16.not, label %out.cleanup_crit_edge, label %if.then17

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then17:                                        ; preds = %out
  %18 = getelementptr inbounds %struct.page, ptr %p.0, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !172

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %p.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #21
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !173

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.62) #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #21, !srcloc !174
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #21
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #21, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_mount_root, %if.then.i.i.i.i.i)) #21
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !178

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #21
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @__put_page(ptr noundef %22) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call6, %out.cleanup_crit_edge ], [ %call6, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call6, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @printk_all_partitions() local_unnamed_addr #7

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mount_root() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ROOT_DEV, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %0, label %entry.if.end24_crit_edge [
    i32 255, label %if.then
    i32 254, label %if.then5
    i32 0, label %land.lhs.true
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @mount_nfs_root() #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #24
  br label %return

if.then5:                                         ; preds = %entry
  %call6 = tail call fastcc i32 @mount_cifs_root() #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end10, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #23
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #24
  br label %return

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr @root_device_name, align 4
  %tobool16.not = icmp eq ptr %2, null
  br i1 %tobool16.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true17

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

land.lhs.true17:                                  ; preds = %land.lhs.true
  %3 = load ptr, ptr @root_fs_names, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %land.lhs.true17.if.end24_crit_edge, label %if.then19

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

if.then19:                                        ; preds = %land.lhs.true17
  %call20 = tail call fastcc i32 @mount_nodev_root() #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then19.return_crit_edge, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %land.lhs.true17.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %4 = load i32, ptr @ROOT_DEV, align 4
  %call25 = tail call fastcc i32 @create_dev(i32 noundef %4) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end29, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call25) #24
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  %5 = load i32, ptr @root_mountflags, align 4
  tail call void @mount_block_root(ptr noundef nonnull @.str.31, i32 noundef %5) #27
  br label %return

return:                                           ; preds = %if.end32, %if.then19.return_crit_edge, %do.end10, %if.then5.return_crit_edge, %do.end, %if.then.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mount_nfs_root() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %root_dev = alloca ptr, align 4
  %root_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_dev) #21
  %0 = ptrtoint ptr %root_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_dev, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_data) #21
  %1 = ptrtoint ptr %root_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_data, align 4, !annotation !171
  %call = call i32 @nfs_root_data(ptr noundef nonnull %root_dev, ptr noundef nonnull %root_data) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %root_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_dev, align 4
  %4 = load i32, ptr @root_mountflags, align 4
  %5 = ptrtoint ptr %root_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_data, align 4
  %call119 = call fastcc i32 @do_mount_root(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %4, ptr noundef %6) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp220 = icmp eq i32 %call119, 0
  br i1 %cmp220, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.if.end4_crit_edge

for.cond.preheader.if.end4_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end4

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end4:                                          ; preds = %if.end7.if.end4_crit_edge, %for.cond.preheader.if.end4_crit_edge
  %try.022 = phi i32 [ %inc, %if.end7.if.end4_crit_edge ], [ 1, %for.cond.preheader.if.end4_crit_edge ]
  %timeout.021 = phi i32 [ %7, %if.end7.if.end4_crit_edge ], [ 5, %for.cond.preheader.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %try.022)
  %exitcond = icmp eq i32 %try.022, 6
  br i1 %exitcond, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %mul.i = mul nuw nsw i32 %timeout.021, 1000
  call void @msleep(i32 noundef %mul.i) #21
  %shl = shl nuw nsw i32 %timeout.021, 1
  %7 = call i32 @llvm.umin.i32(i32 %shl, i32 30)
  %inc = add nuw nsw i32 %try.022, 1
  %8 = ptrtoint ptr %root_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root_dev, align 4
  %10 = load i32, ptr @root_mountflags, align 4
  %11 = ptrtoint ptr %root_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_data, align 4
  %call1 = call fastcc i32 @do_mount_root(ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %10, ptr noundef %12) #27
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end7.cleanup_crit_edge, label %if.end7.if.end4_crit_edge

if.end7.if.end4_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_data) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_dev) #21
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mount_cifs_root() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %root_dev = alloca ptr, align 4
  %root_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_dev) #21
  %0 = ptrtoint ptr %root_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_dev, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_data) #21
  %1 = ptrtoint ptr %root_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_data, align 4, !annotation !171
  %call = call i32 @cifs_root_data(ptr noundef nonnull %root_dev, ptr noundef nonnull %root_data) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %root_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_dev, align 4
  %4 = load i32, ptr @root_mountflags, align 4
  %5 = ptrtoint ptr %root_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_data, align 4
  %call119 = call fastcc i32 @do_mount_root(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %4, ptr noundef %6) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp220 = icmp eq i32 %call119, 0
  br i1 %cmp220, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.if.end4_crit_edge

for.cond.preheader.if.end4_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end4

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end4:                                          ; preds = %if.end7.if.end4_crit_edge, %for.cond.preheader.if.end4_crit_edge
  %try.022 = phi i32 [ %inc, %if.end7.if.end4_crit_edge ], [ 1, %for.cond.preheader.if.end4_crit_edge ]
  %timeout.021 = phi i32 [ %7, %if.end7.if.end4_crit_edge ], [ 5, %for.cond.preheader.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %try.022)
  %exitcond = icmp eq i32 %try.022, 6
  br i1 %exitcond, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %mul.i = mul nuw nsw i32 %timeout.021, 1000
  call void @msleep(i32 noundef %mul.i) #21
  %shl = shl nuw nsw i32 %timeout.021, 1
  %7 = call i32 @llvm.umin.i32(i32 %shl, i32 30)
  %inc = add nuw nsw i32 %try.022, 1
  %8 = ptrtoint ptr %root_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root_dev, align 4
  %10 = load i32, ptr @root_mountflags, align 4
  %11 = ptrtoint ptr %root_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_data, align 4
  %call1 = call fastcc i32 @do_mount_root(ptr noundef %9, ptr noundef nonnull @.str.64, i32 noundef %10, ptr noundef %12) #27
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end7.cleanup_crit_edge, label %if.end7.if.end4_crit_edge

if.end7.if.end4_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_data) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_dev) #21
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mount_nodev_root() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = inttoptr i32 %call to ptr
  %call1 = tail call fastcc i32 @split_fs_names(ptr noundef nonnull %0) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp26 = icmp sgt i32 %call1, 0
  br i1 %cmp26, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %err.028 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ -22, %if.end.for.body_crit_edge ]
  %fstype.027 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %0, %if.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %fstype.027 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fstype.027, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %call5 = tail call fastcc zeroext i1 @fs_is_nodev(ptr noundef %fstype.027) #27
  br i1 %call5, label %if.end7, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end7:                                          ; preds = %if.end4
  %3 = load ptr, ptr @root_device_name, align 4
  %4 = load i32, ptr @root_mountflags, align 4
  %5 = load ptr, ptr @root_mount_data, align 4
  %call8 = tail call fastcc i32 @do_mount_root(ptr noundef %3, ptr noundef %fstype.027, i32 noundef %4, ptr noundef %5) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.for.end_crit_edge, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %call8, %if.end7.for.inc_crit_edge ], [ %err.028, %if.end4.for.inc_crit_edge ], [ %err.028, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.029, 1
  %call12 = tail call i32 @strlen(ptr noundef %fstype.027) #25
  %add = add i32 %call12, 1
  %add.ptr = getelementptr i8, ptr %fstype.027, i32 %add
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.2 = phi i32 [ -22, %if.end.for.end_crit_edge ], [ 0, %if.end7.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #21
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_dev(i32 noundef %dev) unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 @init_unlink(ptr noundef nonnull @.str.31) #24
  %and1.i = and i32 %dev, 255
  %0 = lshr i32 %dev, 12
  %shl.i = and i32 %0, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %dev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %call2 = tail call i32 @init_mknod(ptr noundef nonnull @.str.31, i16 noundef zeroext 24960, i32 noundef %or4.i) #24
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @prepare_namespace() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @root_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %0) #24
  %1 = load i32, ptr @root_delay, align 4
  %mul.i = mul i32 %1, 1000
  tail call void @msleep(i32 noundef %mul.i) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @wait_for_device_probe() #21
  tail call void @md_run_setup() #21
  %2 = load i8, ptr @saved_root_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %if.then2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then2:                                         ; preds = %if.end
  store ptr @saved_root_name, ptr @root_device_name, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @saved_root_name, ptr noundef nonnull dereferenceable(3) @.str.37, i32 3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %if.then2.if.then7_crit_edge, label %lor.lhs.false

if.then2.if.then7_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then2
  %bcmp32 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @saved_root_name, ptr noundef nonnull dereferenceable(3) @.str.38, i32 3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp32)
  %tobool6.not = icmp eq i32 %bcmp32, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then7_crit_edge, label %if.end8

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then2.if.then7_crit_edge
  %3 = load i32, ptr @root_mountflags, align 4
  tail call void @mount_block_root(ptr noundef nonnull @saved_root_name, i32 noundef %3) #27
  br label %out

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 @name_to_dev_t(ptr noundef nonnull @saved_root_name)
  store i32 %call9, ptr @ROOT_DEV, align 4
  %4 = load ptr, ptr @root_device_name, align 4
  %call10 = tail call i32 @strncmp(ptr noundef %4, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr = getelementptr i8, ptr %4, i32 5
  store ptr %add.ptr, ptr @root_device_name, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = tail call zeroext i1 @initrd_load() #24
  br i1 %call14, label %if.end13.out_crit_edge, label %if.end16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end16:                                         ; preds = %if.end13
  %5 = load i32, ptr @ROOT_DEV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17 = icmp eq i32 %5, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end16
  %.b = load i1, ptr @root_wait, align 4
  br i1 %.b, label %do.end21, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

do.end21:                                         ; preds = %land.lhs.true
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @saved_root_name) #24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end21
  %call24 = tail call i32 @driver_probe_done() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call26 = tail call i32 @name_to_dev_t(ptr noundef nonnull @saved_root_name)
  store i32 %call26, ptr @ROOT_DEV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %lor.rhs.while.body_crit_edge, label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @msleep(i32 noundef 5) #21
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @async_synchronize_full() #21
  br label %if.end28

if.end28:                                         ; preds = %while.end, %land.lhs.true.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  tail call void @mount_root() #27
  br label %out

out:                                              ; preds = %if.end28, %if.end13.out_crit_edge, %if.then7
  %call29 = tail call i32 @devtmpfs_mount() #21
  %call30 = tail call i32 @init_mount(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 8192, ptr noundef null) #24
  %call31 = tail call i32 @init_chroot(ptr noundef nonnull @.str.42) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_run_setup() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @initrd_load() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_probe_done() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devtmpfs_mount() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rootfs_init_fs_context(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %.b3 = load i1, ptr @is_tmpfs, align 1
  br i1 %.b3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 @shmem_init_fs_context(ptr noundef %fc) #21
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call i32 @ramfs_init_fs_context(ptr noundef %fc) #21
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #7

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_rootfs() local_unnamed_addr #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @saved_root_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @root_fs_names, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call ptr @strstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.45)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  store i1 true, ptr @is_tmpfs, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_dev_by_uuid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_meta_info = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %bd_meta_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_meta_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.uuidcmp, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call i32 @strncasecmp(ptr noundef %3, ptr noundef nonnull %1, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %spec.select = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_devt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_dev_by_label(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_meta_info = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %bd_meta_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_meta_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %volname = getelementptr inbounds %struct.partition_meta_info, ptr %1, i32 0, i32 1
  %call = tail call i32 @strcmp(ptr noundef %data, ptr noundef %volname) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_lookup_devt(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_root_data(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_root_data(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fs_is_nodev(ptr noundef %fstype) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_fs_type(ptr noundef %fstype) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  tail call void @put_filesystem(ptr noundef nonnull %call) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ %tobool1.not, %if.then ], [ false, %entry.if.end_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init_fs_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ramfs_init_fs_context(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind readonly }
attributes #18 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { cold nounwind }
attributes #25 = { nobuiltin }
attributes #26 = { nobuiltin nounwind }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !120, !121, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !140, !141, !142, !143, !144, !146, !148, !150, !151, !152, !153, !154, !155, !157, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @root_mountflags, !1, !"root_mountflags", i1 false, i1 false}
!1 = !{!"../init/do_mounts.c", i32 31, i32 5}
!2 = !{ptr @__setup_load_ramdisk, !3, !"__setup_load_ramdisk", i1 false, i1 false}
!3 = !{!"../init/do_mounts.c", i32 43, i32 1}
!4 = !{ptr @__setup_readonly, !5, !"__setup_readonly", i1 false, i1 false}
!5 = !{!"../init/do_mounts.c", i32 61, i32 1}
!6 = !{ptr @__setup_readwrite, !7, !"__setup_readwrite", i1 false, i1 false}
!7 = !{!"../init/do_mounts.c", i32 62, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../init/do_mounts.c", i32 280, i32 19}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../init/do_mounts.c", i32 282, i32 19}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../init/do_mounts.c", i32 284, i32 19}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../init/do_mounts.c", i32 287, i32 20}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../init/do_mounts.c", i32 289, i32 20}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../init/do_mounts.c", i32 291, i32 20}
!20 = !{ptr @__ksymtab_name_to_dev_t, !21, !"__ksymtab_name_to_dev_t", i1 false, i1 false}
!21 = !{!"../init/do_mounts.c", i32 296, i32 1}
!22 = !{ptr @__setup_root_dev_setup, !23, !"__setup_root_dev_setup", i1 false, i1 false}
!23 = !{!"../init/do_mounts.c", i32 304, i32 1}
!24 = !{ptr @__setup_rootwait_setup, !25, !"__setup_rootwait_setup", i1 false, i1 false}
!25 = !{!"../init/do_mounts.c", i32 314, i32 1}
!26 = !{ptr @__setup_root_data_setup, !27, !"__setup_root_data_setup", i1 false, i1 false}
!27 = !{!"../init/do_mounts.c", i32 337, i32 1}
!28 = !{ptr @__setup_fs_names_setup, !29, !"__setup_fs_names_setup", i1 false, i1 false}
!29 = !{!"../init/do_mounts.c", i32 338, i32 1}
!30 = !{ptr @__setup_root_delay_setup, !31, !"__setup_root_delay_setup", i1 false, i1 false}
!31 = !{!"../init/do_mounts.c", i32 339, i32 1}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../init/do_mounts.c", i32 403, i32 30}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../init/do_mounts.c", i32 428, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mount_block_root._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @mount_block_root._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../init/do_mounts.c", i32 430, i32 3}
!42 = !{ptr @mount_block_root._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mount_block_root._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../init/do_mounts.c", i32 433, i32 9}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../init/do_mounts.c", i32 440, i32 2}
!48 = !{ptr @mount_block_root._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mount_block_root._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../init/do_mounts.c", i32 442, i32 2}
!52 = !{ptr @mount_block_root._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mount_block_root._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../init/do_mounts.c", i32 444, i32 3}
!56 = !{ptr @mount_block_root._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mount_block_root._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../init/do_mounts.c", i32 445, i32 2}
!60 = !{ptr @mount_block_root._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mount_block_root._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../init/do_mounts.c", i32 572, i32 4}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mount_root._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mount_root._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../init/do_mounts.c", i32 579, i32 4}
!69 = !{ptr @mount_root._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mount_root._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../init/do_mounts.c", i32 589, i32 24}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../init/do_mounts.c", i32 592, i32 4}
!75 = !{ptr @mount_root._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mount_root._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../init/do_mounts.c", i32 604, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @prepare_namespace._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @prepare_namespace._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../init/do_mounts.c", i32 622, i32 34}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../init/do_mounts.c", i32 623, i32 34}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../init/do_mounts.c", i32 637, i32 3}
!88 = !{ptr @prepare_namespace._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @prepare_namespace._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../init/do_mounts.c", i32 648, i32 13}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../init/do_mounts.c", i32 648, i32 18}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../init/do_mounts.c", i32 662, i32 11}
!96 = !{ptr @rootfs_fs_type, !97, !"rootfs_fs_type", i1 false, i1 false}
!97 = !{!"../init/do_mounts.c", i32 661, i32 25}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../init/do_mounts.c", i32 670, i32 44}
!100 = !{ptr @root_device_name, !101, !"root_device_name", i1 false, i1 false}
!101 = !{!"../init/do_mounts.c", i32 32, i32 26}
!102 = !{ptr @saved_root_name, !103, !"saved_root_name", i1 false, i1 false}
!103 = !{!"../init/do_mounts.c", i32 33, i32 24}
!104 = distinct !{null, !105, !"root_wait", i1 false, i1 false}
!105 = !{!"../init/do_mounts.c", i32 34, i32 12}
!106 = !{ptr @ROOT_DEV, !107, !"ROOT_DEV", i1 false, i1 false}
!107 = !{!"../init/do_mounts.c", i32 36, i32 7}
!108 = !{ptr @root_mount_data, !109, !"root_mount_data", i1 false, i1 false}
!109 = !{!"../init/do_mounts.c", i32 316, i32 26}
!110 = !{ptr @root_fs_names, !111, !"root_fs_names", i1 false, i1 false}
!111 = !{!"../init/do_mounts.c", i32 323, i32 26}
!112 = !{ptr @root_delay, !113, !"root_delay", i1 false, i1 false}
!113 = !{!"../init/do_mounts.c", i32 330, i32 32}
!114 = distinct !{null, !115, !"is_tmpfs", i1 false, i1 false}
!115 = !{!"../init/do_mounts.c", i32 652, i32 13}
!116 = !{ptr @__setup_str_load_ramdisk, !3, !"__setup_str_load_ramdisk", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../init/do_mounts.c", i32 40, i32 2}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @load_ramdisk._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @load_ramdisk._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @__setup_str_readonly, !5, !"__setup_str_readonly", i1 false, i1 false}
!123 = !{ptr @__setup_str_readwrite, !7, !"__setup_str_readwrite", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../init/do_mounts.c", i32 117, i32 25}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../init/do_mounts.c", i32 146, i32 2}
!128 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @devt_from_partuuid._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @devt_from_partuuid._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../init/do_mounts.c", i32 149, i32 3}
!133 = !{ptr @devt_from_partuuid._entry.51, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @devt_from_partuuid._entry_ptr.53, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../init/do_mounts.c", i32 234, i32 19}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../init/do_mounts.c", i32 235, i32 19}
!139 = !{ptr @__setup_str_root_dev_setup, !23, !"__setup_str_root_dev_setup", i1 false, i1 false}
!140 = !{ptr @__setup_str_rootwait_setup, !25, !"__setup_str_rootwait_setup", i1 false, i1 false}
!141 = !{ptr @__setup_str_root_data_setup, !27, !"__setup_str_root_data_setup", i1 false, i1 false}
!142 = !{ptr @__setup_str_fs_names_setup, !29, !"__setup_str_fs_names_setup", i1 false, i1 false}
!143 = !{ptr @__setup_str_root_delay_setup, !31, !"__setup_str_root_delay_setup", i1 false, i1 false}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../init/do_mounts.c", i32 376, i32 25}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../init/do_mounts.c", i32 383, i32 2}
!150 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @do_mount_root._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @do_mount_root._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/mm.h", i32 717, i32 2}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../init/do_mounts.c", i32 474, i32 33}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../init/do_mounts.c", i32 511, i32 33}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 2154450168, i64 2154450651, i64 2154450205, i64 2154450261, i64 2154450295, i64 2154450319, i64 2154450360, i64 2154450381, i64 2154450409, i64 2154450443}
!175 = !{i64 2148442482}
!176 = !{i64 2148357191, i64 2148357223, i64 2148357252, i64 2148357286, i64 2148357317, i64 2148357340}
!177 = !{i64 2148442711}
!178 = !{i64 2148967383, i64 2148967388, i64 2148967401, i64 2148967445, i64 2148967479, i64 2148967500}
