; ModuleID = '/llk/IR_all_yes/fs/sync.c_pt.bc'
source_filename = "../fs/sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sync_filesystem\22, \22a\22\09"
module asm "\09.weak\09__crc_sync_filesystem\09\09\09\09"
module asm "\09.long\09__crc_sync_filesystem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_sync_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_fsync_range\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_fsync_range\09\09\09\09"
module asm "\09.long\09__crc_vfs_fsync_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fsync_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fsync_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fsync_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_fsync\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_fsync\09\09\09\09"
module asm "\09.long\09__crc_vfs_fsync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.78, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.103, %struct.list_head, %struct.list_head, %union.anon.104 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.spinlock, i32 }
%union.anon.103 = type { %struct.list_head }
%union.anon.104 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.98 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.99 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.100 = type { ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/sync.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_sync_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_filesystem to i32), ptr @__kstrtab_sync_filesystem, ptr @__kstrtabns_sync_filesystem }, section "___ksymtab+sync_filesystem", align 4
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_sync\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__sync = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sync, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sync, i64 20) }, ptr @event_enter__sync, ptr @event_exit__sync }, align 4
@event_enter__sync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sync = internal global ptr @event_enter__sync, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_sync\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__sync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sync = internal global ptr @event_exit__sync, section "_ftrace_events", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_sync\00", [23 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sync = internal global ptr @__syscall_meta__sync, section "__syscalls_metadata", align 4
@emergency_sync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_syncfs\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__syncfs = internal global %struct.syscall_metadata { ptr @.str.7, i32 -1, i32 1, ptr @types__syncfs, ptr @args__syncfs, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__syncfs, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__syncfs, i64 20) }, ptr @event_enter__syncfs, ptr @event_exit__syncfs }, align 4
@event_enter__syncfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__syncfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__syncfs = internal global ptr @event_enter__syncfs, section "_ftrace_events", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_syncfs\00", [16 x i8] zeroinitializer }, align 32
@event_exit__syncfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__syncfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__syncfs = internal global ptr @event_exit__syncfs, section "_ftrace_events", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_syncfs\00", [21 x i8] zeroinitializer }, align 32
@types__syncfs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@args__syncfs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__syncfs = internal global ptr @__syscall_meta__syncfs, section "__syscalls_metadata", align 4
@__kstrtab_vfs_fsync_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fsync_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fsync_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fsync_range to i32), ptr @__kstrtab_vfs_fsync_range, ptr @__kstrtabns_vfs_fsync_range }, section "___ksymtab+vfs_fsync_range", align 4
@__kstrtab_vfs_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fsync to i32), ptr @__kstrtab_vfs_fsync, ptr @__kstrtabns_vfs_fsync }, section "___ksymtab+vfs_fsync", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_fsync\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__fsync = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 1, ptr @types__fsync, ptr @args__fsync, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fsync, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fsync, i64 20) }, ptr @event_enter__fsync, ptr @event_exit__fsync }, align 4
@event_enter__fsync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fsync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fsync = internal global ptr @event_enter__fsync, section "_ftrace_events", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_fsync\00", [17 x i8] zeroinitializer }, align 32
@event_exit__fsync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fsync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fsync = internal global ptr @event_exit__fsync, section "_ftrace_events", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_fsync\00", [22 x i8] zeroinitializer }, align 32
@types__fsync = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@args__fsync = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fsync = internal global ptr @__syscall_meta__fsync, section "__syscalls_metadata", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fdatasync\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fdatasync = internal global %struct.syscall_metadata { ptr @.str.13, i32 -1, i32 1, ptr @types__fdatasync, ptr @args__fdatasync, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fdatasync, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fdatasync, i64 20) }, ptr @event_enter__fdatasync, ptr @event_exit__fdatasync }, align 4
@event_enter__fdatasync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fdatasync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fdatasync = internal global ptr @event_enter__fdatasync, section "_ftrace_events", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fdatasync\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fdatasync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fdatasync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fdatasync = internal global ptr @event_exit__fdatasync, section "_ftrace_events", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fdatasync\00", [18 x i8] zeroinitializer }, align 32
@types__fdatasync = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@args__fdatasync = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fdatasync = internal global ptr @__syscall_meta__fdatasync, section "__syscalls_metadata", align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_sync_file_range\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__sync_file_range = internal global %struct.syscall_metadata { ptr @.str.16, i32 -1, i32 4, ptr @types__sync_file_range, ptr @args__sync_file_range, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sync_file_range, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sync_file_range, i64 20) }, ptr @event_enter__sync_file_range, ptr @event_exit__sync_file_range }, align 4
@event_enter__sync_file_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync_file_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sync_file_range = internal global ptr @event_enter__sync_file_range, section "_ftrace_events", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_sync_file_range\00", [39 x i8] zeroinitializer }, align 32
@event_exit__sync_file_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync_file_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sync_file_range = internal global ptr @event_exit__sync_file_range, section "_ftrace_events", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_sync_file_range\00", [44 x i8] zeroinitializer }, align 32
@types__sync_file_range = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.25, ptr @.str.24], [16 x i8] zeroinitializer }, align 32
@args__sync_file_range = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sync_file_range = internal global ptr @__syscall_meta__sync_file_range, section "__syscalls_metadata", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_sync_file_range2\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__sync_file_range2 = internal global %struct.syscall_metadata { ptr @.str.19, i32 -1, i32 4, ptr @types__sync_file_range2, ptr @args__sync_file_range2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sync_file_range2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sync_file_range2, i64 20) }, ptr @event_enter__sync_file_range2, ptr @event_exit__sync_file_range2 }, align 4
@event_enter__sync_file_range2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync_file_range2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sync_file_range2 = internal global ptr @event_enter__sync_file_range2, section "_ftrace_events", align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_sync_file_range2\00", [38 x i8] zeroinitializer }, align 32
@event_exit__sync_file_range2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sync_file_range2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sync_file_range2 = internal global ptr @event_exit__sync_file_range2, section "_ftrace_events", align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_sync_file_range2\00", [43 x i8] zeroinitializer }, align 32
@types__sync_file_range2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@args__sync_file_range2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.28, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sync_file_range2 = internal global ptr @__syscall_meta__sync_file_range2, section "__syscalls_metadata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_sync_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Emergency Sync complete\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_sync_work\00", [19 x i8] zeroinitializer }, align 32
@do_sync_work._entry_ptr = internal global ptr @do_sync_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nbytes\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 6, i64 7]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 38, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"event_enter__sync\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"event_exit__sync\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 111, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 141, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"event_enter__syncfs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"event_exit__syncfs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"types__syncfs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"args__syncfs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"event_enter__fsync\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"event_exit__fsync\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"types__fsync\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"args__fsync\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"event_enter__fdatasync\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"event_exit__fdatasync\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"types__fdatasync\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"args__fdatasync\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 223, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [29 x i8] c"event_enter__sync_file_range\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"event_exit__sync_file_range\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"types__sync_file_range\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"args__sync_file_range\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [30 x i8] c"event_enter__sync_file_range2\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [29 x i8] c"event_exit__sync_file_range2\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"types__sync_file_range2\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"args__sync_file_range2\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 378, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 131, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 149, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 218, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [13 x i8] c"../fs/sync.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 370, i32 1 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__event_enter__fdatasync, ptr @__event_enter__fsync, ptr @__event_enter__sync, ptr @__event_enter__sync_file_range, ptr @__event_enter__sync_file_range2, ptr @__event_enter__syncfs, ptr @__event_exit__fdatasync, ptr @__event_exit__fsync, ptr @__event_exit__sync, ptr @__event_exit__sync_file_range, ptr @__event_exit__sync_file_range2, ptr @__event_exit__syncfs, ptr @__ksymtab_sync_filesystem, ptr @__ksymtab_vfs_fsync, ptr @__ksymtab_vfs_fsync_range, ptr @__p_syscall_meta__fdatasync, ptr @__p_syscall_meta__fsync, ptr @__p_syscall_meta__sync, ptr @__p_syscall_meta__sync_file_range, ptr @__p_syscall_meta__sync_file_range2, ptr @__p_syscall_meta__syncfs, ptr @__syscall_meta__fdatasync, ptr @__syscall_meta__fsync, ptr @__syscall_meta__sync, ptr @__syscall_meta__sync_file_range, ptr @__syscall_meta__sync_file_range2, ptr @__syscall_meta__syncfs, ptr @do_sync_work._entry, ptr @do_sync_work._entry_ptr, ptr @event_enter__fdatasync, ptr @event_enter__fsync, ptr @event_enter__sync, ptr @event_enter__sync_file_range, ptr @event_enter__sync_file_range2, ptr @event_enter__syncfs, ptr @event_exit__fdatasync, ptr @event_exit__fsync, ptr @event_exit__sync, ptr @event_exit__sync_file_range, ptr @event_exit__sync_file_range2, ptr @event_exit__syncfs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @emergency_sync.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @types__syncfs, ptr @args__syncfs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__fsync, ptr @args__fsync, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @types__fdatasync, ptr @args__fdatasync, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @types__sync_file_range, ptr @args__sync_file_range, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @types__sync_file_range2, ptr @args__sync_file_range2, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emergency_sync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__syncfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__syncfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__syncfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__syncfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fsync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fsync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fsync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fsync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fdatasync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fdatasync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fdatasync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fdatasync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sync_file_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sync_file_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sync_file_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sync_file_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sync_file_range2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sync_file_range2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sync_file_range2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sync_file_range2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sync_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_syncfs = dso_local alias i32 (i32), ptr @__se_sys_syncfs
@sys_fsync = dso_local alias i32 (i32), ptr @__se_sys_fsync
@sys_fdatasync = dso_local alias i32 (i32), ptr @__se_sys_fdatasync
@sys_sync_file_range = dso_local alias i32 (i32, i64, i64, i32), ptr @__se_sys_sync_file_range
@sys_sync_file_range2 = dso_local alias i32 (i32, i32, i64, i64), ptr @__se_sys_sync_file_range2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sync_filesystem(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_umount, i32 noundef 4) #5
  %0 = ptrtoint ptr %s_umount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %s_umount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  tail call void @writeback_inodes_sb(ptr noundef %sb, i32 noundef 2) #5
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_op, align 4
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sync_fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_fs, align 4
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %if.then25

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  %call28 = tail call i32 %7(ptr noundef %sb, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then25.if.end32_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end32:                                         ; preds = %if.then25.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %call33 = tail call i32 @sync_blockdev_nowait(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  tail call void @sync_inodes_sb(ptr noundef %sb) #5
  %10 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_op, align 4
  %sync_fs38 = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %sync_fs38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sync_fs38, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %if.end36.if.end47_crit_edge, label %if.then40

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then40:                                        ; preds = %if.end36
  %call43 = tail call i32 %13(ptr noundef %sb, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then40.if.end47_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %call49 = tail call i32 @sync_blockdev(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then40.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end47 ], [ 0, %if.end.cleanup_crit_edge ], [ %call28, %if.then25.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ %call43, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @writeback_inodes_sb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_inodes_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksys_sync() local_unnamed_addr #0 align 64 {
entry:
  %nowait = alloca i32, align 4
  %wait = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nowait) #5
  %0 = ptrtoint ptr %nowait to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nowait, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wait) #5
  %1 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %wait, align 4
  tail call void @wakeup_flusher_threads(i32 noundef 2) #5
  tail call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef null) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %nowait) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %wait) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  call void @sync_bdevs(i1 noundef zeroext true) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @laptop_mode to i32))
  %2 = load i32, ptr @laptop_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @laptop_sync_completion() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wait) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nowait) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_inodes_one_sb(ptr noundef %sb, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sync_inodes_sb(ptr noundef %sb) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_fs_one_sb(ptr noundef %sb, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %2 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_iflags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_op, align 4
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sync_fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_fs, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  %call5 = tail call i32 %7(ptr noundef %sb, i32 noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_bdevs(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_sync_completion() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_sync() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ksys_sync()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emergency_sync() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 44) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #5
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @emergency_sync.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry1 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry1, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @do_sync_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull %call7.i) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_sync_work(ptr noundef %work) #0 align 64 {
entry:
  %nowait = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nowait) #5
  %0 = ptrtoint ptr %nowait to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nowait, align 4
  call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef nonnull %nowait) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %nowait) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef nonnull %nowait) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %nowait) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  call void @kfree(ptr noundef %work) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nowait) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_syncfs(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !104
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_syncfs.exit_crit_edge, label %if.end.i

entry.__do_sys_syncfs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_syncfs.exit

if.end.i:                                         ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb.i, align 4
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount.i) #5
  %call.i = tail call i32 @sync_filesystem(ptr noundef %4) #5
  tail call void @up_read(ptr noundef %s_umount.i) #5
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 50
  %f_sb_err.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 20
  %call4.i = tail call i32 @errseq_check_and_advance(ptr noundef %s_wb_err.i, ptr noundef %f_sb_err.i) #5
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.fdput.exit.i_crit_edge, label %if.then.i.i

if.end.i.fdput.exit.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fdput.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %0) #5
  br label %fdput.exit.i

fdput.exit.i:                                     ; preds = %if.then.i.i, %if.end.i.fdput.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  %call4.call.i = select i1 %tobool5.not.i, i32 %call4.i, i32 %call.i
  br label %__do_sys_syncfs.exit

__do_sys_syncfs.exit:                             ; preds = %fdput.exit.i, %entry.__do_sys_syncfs.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.call.i, %fdput.exit.i ], [ -9, %entry.__do_sys_syncfs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fsync_range(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %fsync = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %fsync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsync, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool1.not = icmp eq i32 %datasync, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %fsync6 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %fsync6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsync6, align 4
  %call = tail call i32 %13(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fsync(ptr noundef %file, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %4 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op.i, align 4
  %fsync.i = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %fsync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsync.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.vfs_fsync_range.exit_crit_edge, label %if.end.i

entry.vfs_fsync_range.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfs_fsync_range.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool1.not.i = icmp eq i32 %datasync, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %i_state.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 1) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %10 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op.i, align 4
  %fsync6.i = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %fsync6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsync6.i, align 4
  %call.i = tail call i32 %13(ptr noundef %file, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef %datasync) #5
  br label %vfs_fsync_range.exit

vfs_fsync_range.exit:                             ; preds = %if.end4.i, %entry.vfs_fsync_range.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end4.i ], [ -22, %entry.vfs_fsync_range.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsync(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !107
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fsync.exit_crit_edge, label %if.then.i.i

entry.__do_sys_fsync.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_fsync.exit

if.then.i.i:                                      ; preds = %entry
  %f_mapping.i.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 18
  %1 = ptrtoint ptr %f_mapping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_mapping.i.i.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %f_op.i.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %f_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op.i.i.i.i, align 4
  %fsync.i.i.i.i = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %fsync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fsync.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.vfs_fsync.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.vfs_fsync.exit.i.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfs_fsync.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  %i_state.i.i.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  %9 = ptrtoint ptr %i_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state.i.i.i.i, align 8
  %and.i.i2.i.i = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i2.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mark_inode_dirty(ptr noundef %4, i32 noundef 1) #5
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %f_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_op.i.i.i.i, align 4
  %fsync6.i.i.i.i = getelementptr inbounds %struct.file_operations, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %fsync6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsync6.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %14(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0) #5
  br label %vfs_fsync.exit.i.i

vfs_fsync.exit.i.i:                               ; preds = %if.end4.i.i.i.i, %if.then.i.i.vfs_fsync.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.end4.i.i.i.i ], [ -22, %if.then.i.i.vfs_fsync.exit.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %vfs_fsync.exit.i.i.__do_sys_fsync.exit_crit_edge, label %if.then.i.i.i

vfs_fsync.exit.i.i.__do_sys_fsync.exit_crit_edge: ; preds = %vfs_fsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_fsync.exit

if.then.i.i.i:                                    ; preds = %vfs_fsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %0) #5
  br label %__do_sys_fsync.exit

__do_sys_fsync.exit:                              ; preds = %if.then.i.i.i, %vfs_fsync.exit.i.i.__do_sys_fsync.exit_crit_edge, %entry.__do_sys_fsync.exit_crit_edge
  %ret.0.i.i = phi i32 [ -9, %entry.__do_sys_fsync.exit_crit_edge ], [ %retval.0.i.i.i.i, %vfs_fsync.exit.i.i.__do_sys_fsync.exit_crit_edge ], [ %retval.0.i.i.i.i, %if.then.i.i.i ]
  ret i32 %ret.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fdatasync(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !110
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fdatasync.exit_crit_edge, label %if.then.i.i

entry.__do_sys_fdatasync.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_fdatasync.exit

if.then.i.i:                                      ; preds = %entry
  %f_op.i.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op.i.i.i.i, align 4
  %fsync.i.i.i.i = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %fsync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsync.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.vfs_fsync.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.vfs_fsync.exit.i.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfs_fsync.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call i32 %4(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1) #5
  br label %vfs_fsync.exit.i.i

vfs_fsync.exit.i.i:                               ; preds = %if.end.i.i.i.i, %if.then.i.i.vfs_fsync.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.end.i.i.i.i ], [ -22, %if.then.i.i.vfs_fsync.exit.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %vfs_fsync.exit.i.i.__do_sys_fdatasync.exit_crit_edge, label %if.then.i.i.i

vfs_fsync.exit.i.i.__do_sys_fdatasync.exit_crit_edge: ; preds = %vfs_fsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_fdatasync.exit

if.then.i.i.i:                                    ; preds = %vfs_fsync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %0) #5
  br label %__do_sys_fdatasync.exit

__do_sys_fdatasync.exit:                          ; preds = %if.then.i.i.i, %vfs_fsync.exit.i.i.__do_sys_fdatasync.exit_crit_edge, %entry.__do_sys_fdatasync.exit_crit_edge
  %ret.0.i.i = phi i32 [ -9, %entry.__do_sys_fdatasync.exit_crit_edge ], [ %retval.0.i.i.i.i, %vfs_fsync.exit.i.i.__do_sys_fdatasync.exit_crit_edge ], [ %retval.0.i.i.i.i, %if.then.i.i.i ]
  ret i32 %ret.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sync_file_range(ptr noundef %file, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end:                                           ; preds = %entry
  %add = add i64 %nbytes, %offset
  %0 = or i64 %add, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %1 = icmp slt i64 %0, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp6 = icmp slt i64 %add, %offset
  %or.cond95 = or i1 %cmp6, %1
  br i1 %or.cond95, label %if.end.cleanup66_crit_edge, label %if.end8

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %offset)
  %cmp9 = icmp ugt i64 %offset, 17592186044415
  br i1 %cmp9, label %if.end8.cleanup66_crit_edge, label %if.end11

if.end8.cleanup66_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %add)
  %cmp12 = icmp ugt i64 %add, 17592186044415
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nbytes)
  %cmp1596 = icmp eq i64 %nbytes, 0
  %cmp15 = or i1 %cmp1596, %cmp12
  %dec = add nsw i64 %add, -1
  %endbyte.0 = select i1 %cmp15, i64 9223372036854775807, i64 %dec
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = lshr i16 %5, 13
  %7 = shl i16 %5, 3
  %8 = and i16 %7, -32768
  %9 = or i16 %8, %6
  %10 = xor i16 %9, 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end11.cleanup66_crit_edge [
    i16 0, label %if.end11.if.end37_crit_edge
    i16 7, label %if.end11.if.end37_crit_edge97
    i16 6, label %if.end11.if.end37_crit_edge98
    i16 1, label %if.end11.if.end37_crit_edge99
  ]

if.end11.if.end37_crit_edge99:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end11.if.end37_crit_edge98:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end11.if.end37_crit_edge97:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end11.if.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end11.cleanup66_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end37:                                         ; preds = %if.end11.if.end37_crit_edge, %if.end11.if.end37_crit_edge97, %if.end11.if.end37_crit_edge98, %if.end11.if.end37_crit_edge99
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %12 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_mapping, align 4
  %and38 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end46_crit_edge, label %if.then40

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end37
  %call41 = tail call i32 @file_fdatawait_range(ptr noundef %file, i64 noundef %offset, i64 noundef %endbyte.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then40.cleanup66_crit_edge, label %if.then40.if.end46_crit_edge

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40.cleanup66_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end46:                                         ; preds = %if.then40.if.end46_crit_edge, %if.end37.if.end46_crit_edge
  %ret.0 = phi i32 [ %call41, %if.then40.if.end46_crit_edge ], [ 0, %if.end37.if.end46_crit_edge ]
  %and47 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end60_crit_edge, label %if.then49

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %flags)
  %cmp51 = icmp eq i32 %flags, 7
  %spec.store.select = zext i1 %cmp51 to i32
  %call55 = tail call i32 @__filemap_fdatawrite_range(ptr noundef %13, i64 noundef %offset, i64 noundef %endbyte.0, i32 noundef %spec.store.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55)
  %cond = icmp sgt i32 %call55, -1
  br i1 %cond, label %if.then49.if.end60_crit_edge, label %if.then49.cleanup66_crit_edge

if.then49.cleanup66_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.then49.if.end60_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end60:                                         ; preds = %if.then49.if.end60_crit_edge, %if.end46.if.end60_crit_edge
  %ret.1 = phi i32 [ %call55, %if.then49.if.end60_crit_edge ], [ %ret.0, %if.end46.if.end60_crit_edge ]
  %and61 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.cleanup66_crit_edge, label %if.then63

if.end60.cleanup66_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 @file_fdatawait_range(ptr noundef %file, i64 noundef %offset, i64 noundef %endbyte.0) #5
  br label %cleanup66

cleanup66:                                        ; preds = %if.then63, %if.end60.cleanup66_crit_edge, %if.then49.cleanup66_crit_edge, %if.then40.cleanup66_crit_edge, %if.end11.cleanup66_crit_edge, %if.end8.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup66_crit_edge ], [ -22, %if.end.cleanup66_crit_edge ], [ %call41, %if.then40.cleanup66_crit_edge ], [ %call55, %if.then49.cleanup66_crit_edge ], [ %call64, %if.then63 ], [ %ret.1, %if.end60.cleanup66_crit_edge ], [ 0, %if.end8.cleanup66_crit_edge ], [ -29, %if.end11.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !113
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @sync_file_range(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -9, %entry.if.end_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.fdput.exit_crit_edge, label %if.then.i

if.end.fdput.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fdput.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef %0) #5
  br label %fdput.exit

fdput.exit:                                       ; preds = %if.then.i, %if.end.fdput.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !116
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @sync_file_range(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -9, %entry.if.end.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_sync_file_range.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_sync_file_range.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_sync_file_range.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef %0) #5
  br label %__do_sys_sync_file_range.exit

__do_sys_sync_file_range.exit:                    ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_sync_file_range.exit_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sync_file_range2(i32 noundef %fd, i32 noundef %flags, i64 noundef %offset, i64 noundef %nbytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #5, !noalias !119
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @sync_file_range(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -9, %entry.if.end.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_sync_file_range2.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_sync_file_range2.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_sync_file_range2.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef %0) #5
  br label %__do_sys_sync_file_range2.exit

__do_sys_sync_file_range2.exit:                   ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_sync_file_range2.exit_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/sync.c", i32 38, i32 2}
!2 = !{ptr @__ksymtab_sync_filesystem, !3, !"__ksymtab_sync_filesystem", i1 false, i1 false}
!3 = !{!"../fs/sync.c", i32 72, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/sync.c", i32 111, i32 1}
!6 = !{ptr @event_enter__sync, !5, !"event_enter__sync", i1 false, i1 false}
!7 = !{ptr @__event_enter__sync, !5, !"__event_enter__sync", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__sync, !5, !"event_exit__sync", i1 false, i1 false}
!10 = !{ptr @__event_exit__sync, !5, !"__event_exit__sync", i1 false, i1 false}
!11 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__sync, !5, !"__syscall_meta__sync", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__sync, !5, !"__p_syscall_meta__sync", i1 false, i1 false}
!14 = !{ptr @emergency_sync.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../fs/sync.c", i32 141, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/sync.c", i32 149, i32 1}
!19 = !{ptr @event_enter__syncfs, !18, !"event_enter__syncfs", i1 false, i1 false}
!20 = !{ptr @__event_enter__syncfs, !18, !"__event_enter__syncfs", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @event_exit__syncfs, !18, !"event_exit__syncfs", i1 false, i1 false}
!23 = !{ptr @__event_exit__syncfs, !18, !"__event_exit__syncfs", i1 false, i1 false}
!24 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__syscall_meta__syncfs, !18, !"__syscall_meta__syncfs", i1 false, i1 false}
!26 = !{ptr @__p_syscall_meta__syncfs, !18, !"__p_syscall_meta__syncfs", i1 false, i1 false}
!27 = !{ptr @__ksymtab_vfs_fsync_range, !28, !"__ksymtab_vfs_fsync_range", i1 false, i1 false}
!28 = !{!"../fs/sync.c", i32 190, i32 1}
!29 = !{ptr @__ksymtab_vfs_fsync, !30, !"__ksymtab_vfs_fsync", i1 false, i1 false}
!30 = !{!"../fs/sync.c", i32 204, i32 1}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/sync.c", i32 218, i32 1}
!33 = !{ptr @event_enter__fsync, !32, !"event_enter__fsync", i1 false, i1 false}
!34 = !{ptr @__event_enter__fsync, !32, !"__event_enter__fsync", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @event_exit__fsync, !32, !"event_exit__fsync", i1 false, i1 false}
!37 = !{ptr @__event_exit__fsync, !32, !"__event_exit__fsync", i1 false, i1 false}
!38 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__syscall_meta__fsync, !32, !"__syscall_meta__fsync", i1 false, i1 false}
!40 = !{ptr @__p_syscall_meta__fsync, !32, !"__p_syscall_meta__fsync", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/sync.c", i32 223, i32 1}
!43 = !{ptr @event_enter__fdatasync, !42, !"event_enter__fdatasync", i1 false, i1 false}
!44 = !{ptr @__event_enter__fdatasync, !42, !"__event_enter__fdatasync", i1 false, i1 false}
!45 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @event_exit__fdatasync, !42, !"event_exit__fdatasync", i1 false, i1 false}
!47 = !{ptr @__event_exit__fdatasync, !42, !"__event_exit__fdatasync", i1 false, i1 false}
!48 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__syscall_meta__fdatasync, !42, !"__syscall_meta__fdatasync", i1 false, i1 false}
!50 = !{ptr @__p_syscall_meta__fdatasync, !42, !"__p_syscall_meta__fdatasync", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/sync.c", i32 370, i32 1}
!53 = !{ptr @event_enter__sync_file_range, !52, !"event_enter__sync_file_range", i1 false, i1 false}
!54 = !{ptr @__event_enter__sync_file_range, !52, !"__event_enter__sync_file_range", i1 false, i1 false}
!55 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @event_exit__sync_file_range, !52, !"event_exit__sync_file_range", i1 false, i1 false}
!57 = !{ptr @__event_exit__sync_file_range, !52, !"__event_exit__sync_file_range", i1 false, i1 false}
!58 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__syscall_meta__sync_file_range, !52, !"__syscall_meta__sync_file_range", i1 false, i1 false}
!60 = !{ptr @__p_syscall_meta__sync_file_range, !52, !"__p_syscall_meta__sync_file_range", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/sync.c", i32 378, i32 1}
!63 = !{ptr @event_enter__sync_file_range2, !62, !"event_enter__sync_file_range2", i1 false, i1 false}
!64 = !{ptr @__event_enter__sync_file_range2, !62, !"__event_enter__sync_file_range2", i1 false, i1 false}
!65 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @event_exit__sync_file_range2, !62, !"event_exit__sync_file_range2", i1 false, i1 false}
!67 = !{ptr @__event_exit__sync_file_range2, !62, !"__event_exit__sync_file_range2", i1 false, i1 false}
!68 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__syscall_meta__sync_file_range2, !62, !"__syscall_meta__sync_file_range2", i1 false, i1 false}
!70 = !{ptr @__p_syscall_meta__sync_file_range2, !62, !"__p_syscall_meta__sync_file_range2", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/sync.c", i32 131, i32 2}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @do_sync_work._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @do_sync_work._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.22, !18, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @types__syncfs, !18, !"types__syncfs", i1 false, i1 false}
!78 = !{ptr @.str.23, !18, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @args__syncfs, !18, !"args__syncfs", i1 false, i1 false}
!80 = !{ptr @.str.24, !32, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @types__fsync, !32, !"types__fsync", i1 false, i1 false}
!82 = !{ptr @args__fsync, !32, !"args__fsync", i1 false, i1 false}
!83 = !{ptr @types__fdatasync, !42, !"types__fdatasync", i1 false, i1 false}
!84 = !{ptr @args__fdatasync, !42, !"args__fdatasync", i1 false, i1 false}
!85 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @types__sync_file_range, !52, !"types__sync_file_range", i1 false, i1 false}
!87 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @args__sync_file_range, !52, !"args__sync_file_range", i1 false, i1 false}
!91 = !{ptr @types__sync_file_range2, !62, !"types__sync_file_range2", i1 false, i1 false}
!92 = !{ptr @args__sync_file_range2, !62, !"args__sync_file_range2", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!105}
!105 = distinct !{!105, !106, !"fdget: %agg.result"}
!106 = distinct !{!106, !"fdget"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"fdget: %agg.result"}
!109 = distinct !{!109, !"fdget"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"fdget: %agg.result"}
!112 = distinct !{!112, !"fdget"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"fdget: %agg.result"}
!115 = distinct !{!115, !"fdget"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"fdget: %agg.result"}
!118 = distinct !{!118, !"fdget"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"fdget: %agg.result"}
!121 = distinct !{!121, !"fdget"}
