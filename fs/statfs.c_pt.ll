; ModuleID = '/llk/IR_all_yes/fs/statfs.c_pt.bc'
source_filename = "../fs/statfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vfs_get_fsid\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_get_fsid\09\09\09\09"
module asm "\09.long\09__crc_vfs_get_fsid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_fsid\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_statfs\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_statfs\09\09\09\09"
module asm "\09.long\09__crc_vfs_statfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_statfs\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.100, %struct.list_head, %struct.list_head, %union.anon.101 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.100 = type { %struct.list_head }
%union.anon.101 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ustat = type { i32, i32, [6 x i8], [6 x i8] }
%struct.statfs = type { i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.statfs64 = type <{ i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }>

@__kstrtab_vfs_get_fsid = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_fsid = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_fsid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_fsid to i32), ptr @__kstrtab_vfs_get_fsid, ptr @__kstrtabns_vfs_get_fsid }, section "___ksymtab+vfs_get_fsid", align 4
@__kstrtab_vfs_statfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_statfs = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_statfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_statfs to i32), ptr @__kstrtab_vfs_statfs, ptr @__kstrtabns_vfs_statfs }, section "___ksymtab+vfs_statfs", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_statfs\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__statfs = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__statfs, ptr @args__statfs, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__statfs, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__statfs, i64 20) }, ptr @event_enter__statfs, ptr @event_exit__statfs }, align 4
@event_enter__statfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__statfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__statfs = internal global ptr @event_enter__statfs, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_statfs\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__statfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__statfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__statfs = internal global ptr @event_exit__statfs, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_statfs\00", [21 x i8] zeroinitializer }, align 32
@types__statfs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@args__statfs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__statfs = internal global ptr @__syscall_meta__statfs, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_statfs64\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__statfs64 = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__statfs64, ptr @args__statfs64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__statfs64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__statfs64, i64 20) }, ptr @event_enter__statfs64, ptr @event_exit__statfs64 }, align 4
@event_enter__statfs64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__statfs64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__statfs64 = internal global ptr @event_enter__statfs64, section "_ftrace_events", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_statfs64\00", [46 x i8] zeroinitializer }, align 32
@event_exit__statfs64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__statfs64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__statfs64 = internal global ptr @event_exit__statfs64, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_statfs64\00", [19 x i8] zeroinitializer }, align 32
@types__statfs64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@args__statfs64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.24, ptr @.str.18], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__statfs64 = internal global ptr @__syscall_meta__statfs64, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_fstatfs\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__fstatfs = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__fstatfs, ptr @args__fstatfs, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fstatfs, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fstatfs, i64 20) }, ptr @event_enter__fstatfs, ptr @event_exit__fstatfs }, align 4
@event_enter__fstatfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fstatfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fstatfs = internal global ptr @event_enter__fstatfs, section "_ftrace_events", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_fstatfs\00", [47 x i8] zeroinitializer }, align 32
@event_exit__fstatfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fstatfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fstatfs = internal global ptr @event_exit__fstatfs, section "_ftrace_events", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_fstatfs\00", [20 x i8] zeroinitializer }, align 32
@types__fstatfs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@args__fstatfs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fstatfs = internal global ptr @__syscall_meta__fstatfs, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fstatfs64\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fstatfs64 = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__fstatfs64, ptr @args__fstatfs64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fstatfs64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fstatfs64, i64 20) }, ptr @event_enter__fstatfs64, ptr @event_exit__fstatfs64 }, align 4
@event_enter__fstatfs64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fstatfs64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fstatfs64 = internal global ptr @event_enter__fstatfs64, section "_ftrace_events", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fstatfs64\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fstatfs64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fstatfs64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fstatfs64 = internal global ptr @event_exit__fstatfs64, section "_ftrace_events", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fstatfs64\00", [18 x i8] zeroinitializer }, align 32
@types__fstatfs64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@args__fstatfs64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.24, ptr @.str.18], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fstatfs64 = internal global ptr @__syscall_meta__fstatfs64, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_ustat\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__ustat = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 2, ptr @types__ustat, ptr @args__ustat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ustat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ustat, i64 20) }, ptr @event_enter__ustat, ptr @event_exit__ustat }, align 4
@event_enter__ustat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__ustat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ustat = internal global ptr @event_enter__ustat, section "_ftrace_events", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_ustat\00", [17 x i8] zeroinitializer }, align 32
@event_exit__ustat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__ustat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ustat = internal global ptr @event_exit__ustat, section "_ftrace_events", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_ustat\00", [22 x i8] zeroinitializer }, align 32
@types__ustat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.28], [24 x i8] zeroinitializer }, align 32
@args__ustat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ustat = internal global ptr @__syscall_meta__ustat, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct statfs *\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct statfs64 *\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sz\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"struct ustat *\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ubuf\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"event_enter__statfs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"event_exit__statfs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"types__statfs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"args__statfs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"event_enter__statfs64\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"event_exit__statfs64\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"types__statfs64\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"args__statfs64\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"event_enter__fstatfs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"event_exit__fstatfs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"types__fstatfs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"args__fstatfs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"event_enter__fstatfs64\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"event_exit__fstatfs64\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"types__fstatfs64\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"args__fstatfs64\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 222, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"event_enter__ustat\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"event_exit__ustat\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"types__ustat\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"args__ustat\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 192, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 174, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 201, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 213, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [15 x i8] c"../fs/statfs.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 248, i32 1 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__event_enter__fstatfs, ptr @__event_enter__fstatfs64, ptr @__event_enter__statfs, ptr @__event_enter__statfs64, ptr @__event_enter__ustat, ptr @__event_exit__fstatfs, ptr @__event_exit__fstatfs64, ptr @__event_exit__statfs, ptr @__event_exit__statfs64, ptr @__event_exit__ustat, ptr @__ksymtab_vfs_get_fsid, ptr @__ksymtab_vfs_statfs, ptr @__p_syscall_meta__fstatfs, ptr @__p_syscall_meta__fstatfs64, ptr @__p_syscall_meta__statfs, ptr @__p_syscall_meta__statfs64, ptr @__p_syscall_meta__ustat, ptr @__syscall_meta__fstatfs, ptr @__syscall_meta__fstatfs64, ptr @__syscall_meta__statfs, ptr @__syscall_meta__statfs64, ptr @__syscall_meta__ustat, ptr @event_enter__fstatfs, ptr @event_enter__fstatfs64, ptr @event_enter__statfs, ptr @event_enter__statfs64, ptr @event_enter__ustat, ptr @event_exit__fstatfs, ptr @event_exit__fstatfs64, ptr @event_exit__statfs, ptr @event_exit__statfs64, ptr @event_exit__ustat, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__statfs, ptr @args__statfs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__statfs64, ptr @args__statfs64, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__fstatfs, ptr @args__fstatfs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__fstatfs64, ptr @args__fstatfs64, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__ustat, ptr @args__ustat, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__statfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__statfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__statfs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__statfs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__statfs64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__statfs64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__statfs64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__statfs64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fstatfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fstatfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fstatfs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fstatfs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fstatfs64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fstatfs64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fstatfs64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fstatfs64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ustat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ustat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ustat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ustat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_statfs = dso_local alias i32 (ptr, ptr), ptr @__se_sys_statfs
@sys_statfs64 = dso_local alias i32 (ptr, i32, ptr), ptr @__se_sys_statfs64
@sys_fstatfs = dso_local alias i32 (i32, ptr), ptr @__se_sys_fstatfs
@sys_fstatfs64 = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_fstatfs64
@sys_ustat = dso_local alias i32 (i32, ptr), ptr @__se_sys_ustat

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_get_fsid(ptr noundef %dentry, ptr nocapture noundef writeonly %fsid) #0 align 64 {
entry:
  %st = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %st) #3
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op.i, align 4
  %statfs.i = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %statfs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %statfs.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %6 = call ptr @memset(ptr %st, i32 0, i32 88)
  %call.i = tail call i32 @security_sb_statfs(ptr noundef %dentry) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb.i, align 4
  %s_op6.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_op6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op6.i, align 4
  %statfs7.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %statfs7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %statfs7.i, align 4
  %call8.i = call i32 %12(ptr noundef %dentry, ptr noundef nonnull %st) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 7
  %13 = ptrtoint ptr %f_fsid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %f_fsid, align 8
  %15 = ptrtoint ptr %fsid to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %fsid, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.i ], [ %call8.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %st) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_statfs(ptr nocapture noundef readonly %path, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_op.i, align 4
  %statfs.i = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %statfs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %statfs.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %8 = call ptr @memset(ptr %buf, i32 0, i32 88)
  %call.i = tail call i32 @security_sb_statfs(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_sb.i, align 4
  %s_op6.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_op6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_op6.i, align 4
  %statfs7.i = getelementptr inbounds %struct.super_operations, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %statfs7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %statfs7.i, align 4
  %call8.i = tail call i32 %14(ptr noundef %1, ptr noundef %buf) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end4.i
  %f_frsize.i = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 9
  %15 = ptrtoint ptr %f_frsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_frsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i = icmp eq i32 %16, 0
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %f_bsize.i = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %17 = ptrtoint ptr %f_bsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_bsize.i, align 4
  %19 = ptrtoint ptr %f_frsize.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %f_frsize.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then10.i, %land.lhs.true.i.if.then_crit_edge
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path, align 4
  %mnt_flags.i = getelementptr inbounds %struct.vfsmount, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_flags.i, align 4
  %and.i.i = lshr i32 %23, 6
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and1.i.i = shl i32 %23, 1
  %24 = and i32 %and1.i.i, 2
  %25 = and i32 %and1.i.i, 4
  %26 = and i32 %and1.i.i, 8
  %and16.i.i = shl i32 %23, 7
  %27 = and i32 %and16.i.i, 1024
  %28 = and i32 %and16.i.i, 2048
  %29 = and i32 %and16.i.i, 4096
  %and31.i.i = shl i32 %23, 6
  %30 = and i32 %and31.i.i, 8192
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mnt_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags.i, align 4
  %35 = and i32 %34, 81
  %36 = or i32 %24, %and.lobit.i.i
  %37 = or i32 %36, %25
  %38 = or i32 %37, %26
  %39 = or i32 %38, %27
  %40 = or i32 %39, %28
  %41 = or i32 %40, %29
  %42 = or i32 %41, %30
  %or.i = or i32 %42, %35
  %or2.i = or i32 %or.i, 32
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 10
  %43 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or2.i, ptr %f_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i7 = phi i32 [ 0, %if.then ], [ %call8.i, %if.end4.i.if.end_crit_edge ], [ %call.i, %if.end.i.if.end_crit_edge ], [ -38, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_statfs(ptr noundef %pathname, ptr noundef %st) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #3
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !93
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !93
  %call.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef 5, ptr noundef nonnull %path, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef %st)
  call void @path_put(ptr noundef nonnull %path) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1)
  %cmp.i = icmp eq i32 %call1, -116
  br i1 %cmp.i, label %retry.1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

retry.1:                                          ; preds = %if.then
  %call.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef 37, ptr noundef nonnull %path, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %if.then.1, label %retry.1.if.end4_crit_edge

retry.1.if.end4_crit_edge:                        ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then.1:                                        ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #5
  %call1.1 = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef %st)
  call void @path_put(ptr noundef nonnull %path) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then.1, %retry.1.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.if.end4_crit_edge ], [ %call1, %if.then.if.end4_crit_edge ], [ %call.i.1, %retry.1.if.end4_crit_edge ], [ %call1.1, %if.then.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #3
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fd_statfs(i32 noundef %fd, ptr noundef %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_raw(i32 noundef %fd) #3, !noalias !94
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call = tail call i32 @vfs_statfs(ptr noundef %f_path, ptr noundef %st)
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fput(ptr noundef nonnull %0) #3
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ -9, %entry.if.end_crit_edge ], [ %call, %if.then.if.end_crit_edge ], [ %call, %if.then.i ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statfs(i32 noundef %pathname, i32 noundef %buf) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %st.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %st.i) #3
  %2 = call ptr @memset(ptr %st.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #3
  %3 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !93
  %4 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !93
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 5, ptr noundef nonnull %path.i.i, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.user_statfs.exit.thread.i_crit_edge

entry.user_statfs.exit.thread.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.thread.i

user_statfs.exit.thread.i:                        ; preds = %retry.i.i.1.user_statfs.exit.thread.i_crit_edge, %entry.user_statfs.exit.thread.i_crit_edge
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %entry.user_statfs.exit.thread.i_crit_edge ], [ %call.i.i.i.1, %retry.i.i.1.user_statfs.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #3
  br label %__do_sys_statfs.exit

if.then.i.i:                                      ; preds = %entry
  %call1.i.i = call i32 @vfs_statfs(ptr noundef nonnull %path.i.i, ptr noundef nonnull %st.i) #3
  call void @path_put(ptr noundef nonnull %path.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i.1, label %if.then.i.i.user_statfs.exit.i_crit_edge

if.then.i.i.user_statfs.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.i

retry.i.i.1:                                      ; preds = %if.then.i.i
  %call.i.i.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 37, ptr noundef nonnull %path.i.i, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.then.i.i.1, label %retry.i.i.1.user_statfs.exit.thread.i_crit_edge

retry.i.i.1.user_statfs.exit.thread.i_crit_edge:  ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.thread.i

if.then.i.i.1:                                    ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i.i.1 = call i32 @vfs_statfs(ptr noundef nonnull %path.i.i, ptr noundef nonnull %st.i) #3
  call void @path_put(ptr noundef nonnull %path.i.i) #3
  br label %user_statfs.exit.i

user_statfs.exit.i:                               ; preds = %if.then.i.i.1, %if.then.i.i.user_statfs.exit.i_crit_edge
  %call1.i.i.lcssa = phi i32 [ %call1.i.i, %if.then.i.i.user_statfs.exit.i_crit_edge ], [ %call1.i.i.1, %if.then.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.lcssa)
  %tobool.not.i = icmp eq i32 %call1.i.i.lcssa, 0
  br i1 %tobool.not.i, label %if.then.i, label %user_statfs.exit.i.__do_sys_statfs.exit_crit_edge

user_statfs.exit.i.__do_sys_statfs.exit_crit_edge: ; preds = %user_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_statfs.exit

if.then.i:                                        ; preds = %user_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = call fastcc i32 @do_statfs_native(ptr noundef nonnull %st.i, ptr noundef %1) #3
  br label %__do_sys_statfs.exit

__do_sys_statfs.exit:                             ; preds = %if.then.i, %user_statfs.exit.i.__do_sys_statfs.exit_crit_edge, %user_statfs.exit.thread.i
  %error.0.i = phi i32 [ %call1.i.i.lcssa, %user_statfs.exit.i.__do_sys_statfs.exit_crit_edge ], [ %call1.i, %if.then.i ], [ %call.i.i.i.lcssa, %user_statfs.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %st.i) #3
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statfs64(i32 noundef %pathname, i32 noundef %sz, i32 noundef %buf) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  %st.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %st.i) #3
  %2 = call ptr @memset(ptr %st.i, i32 255, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %sz)
  %cmp.not.i = icmp eq i32 %sz, 84
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_statfs64.exit_crit_edge

entry.__do_sys_statfs64.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_statfs64.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #3
  %3 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !93
  %4 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !93
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 5, ptr noundef nonnull %path.i.i, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.user_statfs.exit.thread.i_crit_edge

if.end.i.user_statfs.exit.thread.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.thread.i

user_statfs.exit.thread.i:                        ; preds = %retry.i.i.1.user_statfs.exit.thread.i_crit_edge, %if.end.i.user_statfs.exit.thread.i_crit_edge
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %if.end.i.user_statfs.exit.thread.i_crit_edge ], [ %call.i.i.i.1, %retry.i.i.1.user_statfs.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #3
  br label %__do_sys_statfs64.exit

if.then.i.i:                                      ; preds = %if.end.i
  %call1.i.i = call i32 @vfs_statfs(ptr noundef nonnull %path.i.i, ptr noundef nonnull %st.i) #3
  call void @path_put(ptr noundef nonnull %path.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i.1, label %if.then.i.i.user_statfs.exit.i_crit_edge

if.then.i.i.user_statfs.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.i

retry.i.i.1:                                      ; preds = %if.then.i.i
  %call.i.i.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 37, ptr noundef nonnull %path.i.i, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.then.i.i.1, label %retry.i.i.1.user_statfs.exit.thread.i_crit_edge

retry.i.i.1.user_statfs.exit.thread.i_crit_edge:  ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %user_statfs.exit.thread.i

if.then.i.i.1:                                    ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i.i.1 = call i32 @vfs_statfs(ptr noundef nonnull %path.i.i, ptr noundef nonnull %st.i) #3
  call void @path_put(ptr noundef nonnull %path.i.i) #3
  br label %user_statfs.exit.i

user_statfs.exit.i:                               ; preds = %if.then.i.i.1, %if.then.i.i.user_statfs.exit.i_crit_edge
  %call1.i.i.lcssa = phi i32 [ %call1.i.i, %if.then.i.i.user_statfs.exit.i_crit_edge ], [ %call1.i.i.1, %if.then.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.lcssa)
  %tobool.not.i = icmp eq i32 %call1.i.i.lcssa, 0
  br i1 %tobool.not.i, label %if.then1.i, label %user_statfs.exit.i.__do_sys_statfs64.exit_crit_edge

user_statfs.exit.i.__do_sys_statfs64.exit_crit_edge: ; preds = %user_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_statfs64.exit

if.then1.i:                                       ; preds = %user_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i = call fastcc i32 @do_statfs64(ptr noundef nonnull %st.i, ptr noundef %1) #3
  br label %__do_sys_statfs64.exit

__do_sys_statfs64.exit:                           ; preds = %if.then1.i, %user_statfs.exit.i.__do_sys_statfs64.exit_crit_edge, %user_statfs.exit.thread.i, %entry.__do_sys_statfs64.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_statfs64.exit_crit_edge ], [ %call1.i.i.lcssa, %user_statfs.exit.i.__do_sys_statfs64.exit_crit_edge ], [ %call2.i, %if.then1.i ], [ %call.i.i.i.lcssa, %user_statfs.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %st.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatfs(i32 noundef %fd, i32 noundef %buf) #0 align 64 {
entry:
  %st.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %st.i) #3
  %1 = call ptr @memset(ptr %st.i, i32 255, i32 88)
  %call.i.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #3, !noalias !97
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fstatfs.exit_crit_edge, label %if.then.i.i

entry.__do_sys_fstatfs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fstatfs.exit

if.then.i.i:                                      ; preds = %entry
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %call.i.i = call i32 @vfs_statfs(ptr noundef %f_path.i.i, ptr noundef nonnull %st.i) #3
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.fd_statfs.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i.fd_statfs.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fd_statfs.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @fput(ptr noundef nonnull %2) #3
  br label %fd_statfs.exit.i

fd_statfs.exit.i:                                 ; preds = %if.then.i.i.i, %if.then.i.i.fd_statfs.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %fd_statfs.exit.i.__do_sys_fstatfs.exit_crit_edge

fd_statfs.exit.i.__do_sys_fstatfs.exit_crit_edge: ; preds = %fd_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fstatfs.exit

if.then.i:                                        ; preds = %fd_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = call fastcc i32 @do_statfs_native(ptr noundef nonnull %st.i, ptr noundef %0) #3
  br label %__do_sys_fstatfs.exit

__do_sys_fstatfs.exit:                            ; preds = %if.then.i, %fd_statfs.exit.i.__do_sys_fstatfs.exit_crit_edge, %entry.__do_sys_fstatfs.exit_crit_edge
  %error.0.i = phi i32 [ %call.i.i, %fd_statfs.exit.i.__do_sys_fstatfs.exit_crit_edge ], [ %call1.i, %if.then.i ], [ -9, %entry.__do_sys_fstatfs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %st.i) #3
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatfs64(i32 noundef %fd, i32 noundef %sz, i32 noundef %buf) #0 align 64 {
entry:
  %st.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %st.i) #3
  %1 = call ptr @memset(ptr %st.i, i32 255, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %sz)
  %cmp.not.i = icmp eq i32 %sz, 84
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_fstatfs64.exit_crit_edge

entry.__do_sys_fstatfs64.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fstatfs64.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #3, !noalias !100
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__do_sys_fstatfs64.exit_crit_edge, label %if.then.i.i

if.end.i.__do_sys_fstatfs64.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fstatfs64.exit

if.then.i.i:                                      ; preds = %if.end.i
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %call.i.i = call i32 @vfs_statfs(ptr noundef %f_path.i.i, ptr noundef nonnull %st.i) #3
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.fd_statfs.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i.fd_statfs.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fd_statfs.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @fput(ptr noundef nonnull %2) #3
  br label %fd_statfs.exit.i

fd_statfs.exit.i:                                 ; preds = %if.then.i.i.i, %if.then.i.i.fd_statfs.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then1.i, label %fd_statfs.exit.i.__do_sys_fstatfs64.exit_crit_edge

fd_statfs.exit.i.__do_sys_fstatfs64.exit_crit_edge: ; preds = %fd_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fstatfs64.exit

if.then1.i:                                       ; preds = %fd_statfs.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i = call fastcc i32 @do_statfs64(ptr noundef nonnull %st.i, ptr noundef %0) #3
  br label %__do_sys_fstatfs64.exit

__do_sys_fstatfs64.exit:                          ; preds = %if.then1.i, %fd_statfs.exit.i.__do_sys_fstatfs64.exit_crit_edge, %if.end.i.__do_sys_fstatfs64.exit_crit_edge, %entry.__do_sys_fstatfs64.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_fstatfs64.exit_crit_edge ], [ %call.i.i, %fd_statfs.exit.i.__do_sys_fstatfs64.exit_crit_edge ], [ %call2.i, %if.then1.i ], [ -9, %if.end.i.__do_sys_fstatfs64.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %st.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ustat(i32 noundef %dev, i32 noundef %ubuf) #0 align 64 {
entry:
  %tmp.i = alloca %struct.ustat, align 4
  %sbuf.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ubuf to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp.i) #3
  %1 = getelementptr inbounds %struct.ustat, ptr %tmp.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sbuf.i) #3
  %2 = call ptr @memset(ptr %sbuf.i, i32 255, i32 88)
  %and1.i.i = and i32 %dev, 255
  %shr2.i.i = lshr i32 %dev, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %3 = shl i32 %dev, 12
  %shl.i.i = and i32 %3, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  %call.i.i = tail call ptr @user_get_super(i32 noundef %or4.i.i, i1 noundef zeroext false) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.__do_sys_ustat.exit_crit_edge, label %if.end.i.i

entry.__do_sys_ustat.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_ustat.exit

if.end.i.i:                                       ; preds = %entry
  %s_root.i.i = getelementptr inbounds %struct.super_block, ptr %call.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %s_root.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root.i.i, align 64
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_op.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_op.i.i.i, align 4
  %statfs.i.i.i = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %statfs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %statfs.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.vfs_ustat.exit.thread13.i_crit_edge, label %if.end.i.i9.i

if.end.i.i.vfs_ustat.exit.thread13.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vfs_ustat.exit.thread13.i

if.end.i.i9.i:                                    ; preds = %if.end.i.i
  %12 = call ptr @memset(ptr %sbuf.i, i32 0, i32 88)
  %call.i.i8.i = tail call i32 @security_sb_statfs(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i8.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i9.i.vfs_ustat.exit.thread13.i_crit_edge

if.end.i.i9.i.vfs_ustat.exit.thread13.i_crit_edge: ; preds = %if.end.i.i9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vfs_ustat.exit.thread13.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i9.i
  %13 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_op6.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %s_op6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_op6.i.i.i, align 4
  %statfs7.i.i.i = getelementptr inbounds %struct.super_operations, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %statfs7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %statfs7.i.i.i, align 4
  %call8.i.i.i = call i32 %18(ptr noundef %5, ptr noundef nonnull %sbuf.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp.i.i10.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %cmp.i.i10.i, label %land.lhs.true.i.i.i, label %if.end4.i.i.i.vfs_ustat.exit.thread13.i_crit_edge

if.end4.i.i.i.vfs_ustat.exit.thread13.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vfs_ustat.exit.thread13.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i.i.i
  %f_frsize.i.i.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 9
  %19 = ptrtoint ptr %f_frsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_frsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %land.lhs.true.i.i.i.if.end.i_crit_edge

land.lhs.true.i.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %f_bsize.i.i.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 1
  %21 = ptrtoint ptr %f_bsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_bsize.i.i.i, align 4
  %23 = ptrtoint ptr %f_frsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %f_frsize.i.i.i, align 4
  br label %if.end.i

vfs_ustat.exit.thread13.i:                        ; preds = %if.end4.i.i.i.vfs_ustat.exit.thread13.i_crit_edge, %if.end.i.i9.i.vfs_ustat.exit.thread13.i_crit_edge, %if.end.i.i.vfs_ustat.exit.thread13.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ %call8.i.i.i, %if.end4.i.i.i.vfs_ustat.exit.thread13.i_crit_edge ], [ %call.i.i8.i, %if.end.i.i9.i.vfs_ustat.exit.thread13.i_crit_edge ], [ -38, %if.end.i.i.vfs_ustat.exit.thread13.i_crit_edge ]
  call void @drop_super(ptr noundef nonnull %call.i.i) #3
  br label %__do_sys_ustat.exit

if.end.i:                                         ; preds = %if.then10.i.i.i, %land.lhs.true.i.i.i.if.end.i_crit_edge
  call void @drop_super(ptr noundef nonnull %call.i.i) #3
  %24 = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 12)
  %f_bfree.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 3
  %26 = ptrtoint ptr %f_bfree.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %f_bfree.i, align 8
  %conv.i = trunc i64 %27 to i32
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %tmp.i, align 4
  %f_ffree.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 6
  %29 = ptrtoint ptr %f_ffree.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %f_ffree.i, align 8
  %conv2.i = trunc i64 %30 to i32
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv2.i, ptr %1, align 4
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #3
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #3
  br i1 %call.i.i.i, label %if.end.i.__do_sys_ustat.exit_crit_edge, label %if.end.i.i.i

if.end.i.__do_sys_ustat.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_ustat.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #6, !srcloc !103
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_ustat.exit_crit_edge

if.end.i.i.i.__do_sys_ustat.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_ustat.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef 20) #3
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %tmp.i, i32 noundef 20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %__do_sys_ustat.exit

__do_sys_ustat.exit:                              ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__do_sys_ustat.exit_crit_edge, %if.end.i.__do_sys_ustat.exit_crit_edge, %vfs_ustat.exit.thread13.i, %entry.__do_sys_ustat.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i.ph.i, %vfs_ustat.exit.thread13.i ], [ -22, %entry.__do_sys_ustat.exit_crit_edge ], [ -14, %if.end.i.__do_sys_ustat.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_ustat.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sbuf.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_statfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_statfs_native(ptr nocapture noundef readonly %st, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.statfs, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #3
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %f_bfree to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_bfree, align 8
  %or = or i64 %3, %1
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 4
  %4 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_bavail, align 8
  %or1 = or i64 %or, %5
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 1
  %6 = ptrtoint ptr %f_bsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_bsize, align 4
  %conv = sext i32 %7 to i64
  %or2 = or i64 %or1, %conv
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 9
  %8 = ptrtoint ptr %f_frsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_frsize, align 4
  %conv3 = sext i32 %9 to i64
  %or4 = or i64 %or2, %conv3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or4)
  %tobool.not = icmp ult i64 %or4, 4294967296
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 5
  %10 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %f_files, align 8
  %12 = add i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %12)
  %13 = icmp ult i64 %12, 4294967297
  br i1 %13, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 6
  %14 = ptrtoint ptr %f_ffree to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %f_ffree, align 8
  %16 = add i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %16)
  %17 = icmp ult i64 %16, 4294967297
  br i1 %17, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %st, align 8
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buf, align 4
  %f_bsize21 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 1
  %21 = ptrtoint ptr %f_bsize21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %7, ptr %f_bsize21, align 4
  %conv23 = trunc i64 %1 to i32
  %f_blocks24 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %f_blocks24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv23, ptr %f_blocks24, align 4
  %conv26 = trunc i64 %3 to i32
  %f_bfree27 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 3
  %23 = ptrtoint ptr %f_bfree27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv26, ptr %f_bfree27, align 4
  %conv29 = trunc i64 %5 to i32
  %f_bavail30 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %f_bavail30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv29, ptr %f_bavail30, align 4
  %conv32 = trunc i64 %11 to i32
  %f_files33 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 5
  %25 = ptrtoint ptr %f_files33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv32, ptr %f_files33, align 4
  %conv35 = trunc i64 %15 to i32
  %f_ffree36 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 6
  %26 = ptrtoint ptr %f_ffree36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv35, ptr %f_ffree36, align 4
  %f_fsid = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 7
  %f_fsid37 = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 7
  %27 = ptrtoint ptr %f_fsid37 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %f_fsid37, align 8
  %29 = ptrtoint ptr %f_fsid to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %f_fsid, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 8
  %30 = ptrtoint ptr %f_namelen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_namelen, align 8
  %f_namelen38 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 8
  %32 = ptrtoint ptr %f_namelen38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %f_namelen38, align 4
  %f_frsize40 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 9
  %33 = ptrtoint ptr %f_frsize40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %9, ptr %f_frsize40, align 4
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 10
  %34 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_flags, align 8
  %f_flags41 = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 10
  %36 = ptrtoint ptr %f_flags41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %f_flags41, align 4
  %f_spare = getelementptr inbounds %struct.statfs, ptr %buf, i32 0, i32 11
  %37 = call ptr @memset(ptr %f_spare, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #3
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #3
  br i1 %call.i.i, label %if.end18.cleanup_crit_edge, label %if.end.i.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end18
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p, i32 64, i32 -1226833920) #6, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef 64) #3
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %p, ptr noundef nonnull %buf, i32 noundef 64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool42.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool42.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ], [ -75, %if.end10.cleanup_crit_edge ], [ -14, %if.end18.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_statfs64(ptr nocapture noundef readonly %st, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.statfs64, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %buf) #3
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %st, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %buf, align 4
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 1
  %3 = ptrtoint ptr %f_bsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_bsize, align 4
  %f_bsize2 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %f_bsize2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %f_bsize2, align 4
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 2
  %6 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %f_blocks, align 8
  %f_blocks3 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %f_blocks3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %f_blocks3, align 4
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 3
  %9 = ptrtoint ptr %f_bfree to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %f_bfree, align 8
  %f_bfree4 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 3
  %11 = ptrtoint ptr %f_bfree4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %f_bfree4, align 4
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 4
  %12 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %f_bavail, align 8
  %f_bavail5 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %f_bavail5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %f_bavail5, align 4
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 5
  %15 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %f_files, align 8
  %f_files6 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 5
  %17 = ptrtoint ptr %f_files6 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %f_files6, align 4
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 6
  %18 = ptrtoint ptr %f_ffree to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %f_ffree, align 8
  %f_ffree7 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 6
  %20 = ptrtoint ptr %f_ffree7 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %f_ffree7, align 4
  %f_fsid = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 7
  %f_fsid8 = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 7
  %21 = ptrtoint ptr %f_fsid8 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %f_fsid8, align 8
  %23 = ptrtoint ptr %f_fsid to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %f_fsid, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 8
  %24 = ptrtoint ptr %f_namelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_namelen, align 8
  %f_namelen9 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 8
  %26 = ptrtoint ptr %f_namelen9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %f_namelen9, align 4
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 9
  %27 = ptrtoint ptr %f_frsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_frsize, align 4
  %f_frsize10 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 9
  %29 = ptrtoint ptr %f_frsize10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %f_frsize10, align 4
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 10
  %30 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags, align 8
  %f_flags11 = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 10
  %32 = ptrtoint ptr %f_flags11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %f_flags11, align 4
  %f_spare = getelementptr inbounds %struct.statfs64, ptr %buf, i32 0, i32 11
  %33 = call ptr @memset(ptr %f_spare, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #3
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #3
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p, i32 84, i32 -1226833920) #6, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef 84) #3
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %p, ptr noundef nonnull %buf, i32 noundef 84) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %35 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %buf) #3
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @user_get_super(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__ksymtab_vfs_get_fsid, !1, !"__ksymtab_vfs_get_fsid", i1 false, i1 false}
!1 = !{!"../fs/statfs.c", i32 84, i32 1}
!2 = !{ptr @__ksymtab_vfs_statfs, !3, !"__ksymtab_vfs_statfs", i1 false, i1 false}
!3 = !{!"../fs/statfs.c", i32 95, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/statfs.c", i32 192, i32 1}
!6 = !{ptr @event_enter__statfs, !5, !"event_enter__statfs", i1 false, i1 false}
!7 = !{ptr @__event_enter__statfs, !5, !"__event_enter__statfs", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__statfs, !5, !"event_exit__statfs", i1 false, i1 false}
!10 = !{ptr @__event_exit__statfs, !5, !"__event_exit__statfs", i1 false, i1 false}
!11 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__statfs, !5, !"__syscall_meta__statfs", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__statfs, !5, !"__p_syscall_meta__statfs", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/statfs.c", i32 201, i32 1}
!16 = !{ptr @event_enter__statfs64, !15, !"event_enter__statfs64", i1 false, i1 false}
!17 = !{ptr @__event_enter__statfs64, !15, !"__event_enter__statfs64", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @event_exit__statfs64, !15, !"event_exit__statfs64", i1 false, i1 false}
!20 = !{ptr @__event_exit__statfs64, !15, !"__event_exit__statfs64", i1 false, i1 false}
!21 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__syscall_meta__statfs64, !15, !"__syscall_meta__statfs64", i1 false, i1 false}
!23 = !{ptr @__p_syscall_meta__statfs64, !15, !"__p_syscall_meta__statfs64", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/statfs.c", i32 213, i32 1}
!26 = !{ptr @event_enter__fstatfs, !25, !"event_enter__fstatfs", i1 false, i1 false}
!27 = !{ptr @__event_enter__fstatfs, !25, !"__event_enter__fstatfs", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @event_exit__fstatfs, !25, !"event_exit__fstatfs", i1 false, i1 false}
!30 = !{ptr @__event_exit__fstatfs, !25, !"__event_exit__fstatfs", i1 false, i1 false}
!31 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__syscall_meta__fstatfs, !25, !"__syscall_meta__fstatfs", i1 false, i1 false}
!33 = !{ptr @__p_syscall_meta__fstatfs, !25, !"__p_syscall_meta__fstatfs", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/statfs.c", i32 222, i32 1}
!36 = !{ptr @event_enter__fstatfs64, !35, !"event_enter__fstatfs64", i1 false, i1 false}
!37 = !{ptr @__event_enter__fstatfs64, !35, !"__event_enter__fstatfs64", i1 false, i1 false}
!38 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__fstatfs64, !35, !"event_exit__fstatfs64", i1 false, i1 false}
!40 = !{ptr @__event_exit__fstatfs64, !35, !"__event_exit__fstatfs64", i1 false, i1 false}
!41 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__fstatfs64, !35, !"__syscall_meta__fstatfs64", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__fstatfs64, !35, !"__p_syscall_meta__fstatfs64", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/statfs.c", i32 248, i32 1}
!46 = !{ptr @event_enter__ustat, !45, !"event_enter__ustat", i1 false, i1 false}
!47 = !{ptr @__event_enter__ustat, !45, !"__event_enter__ustat", i1 false, i1 false}
!48 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__ustat, !45, !"event_exit__ustat", i1 false, i1 false}
!50 = !{ptr @__event_exit__ustat, !45, !"__event_exit__ustat", i1 false, i1 false}
!51 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__ustat, !45, !"__syscall_meta__ustat", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__ustat, !45, !"__p_syscall_meta__ustat", i1 false, i1 false}
!54 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @types__statfs, !5, !"types__statfs", i1 false, i1 false}
!57 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @args__statfs, !5, !"args__statfs", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!67 = !{ptr @.str.22, !15, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !15, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @types__statfs64, !15, !"types__statfs64", i1 false, i1 false}
!70 = !{ptr @.str.24, !15, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @args__statfs64, !15, !"args__statfs64", i1 false, i1 false}
!72 = !{ptr @.str.25, !25, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @types__fstatfs, !25, !"types__fstatfs", i1 false, i1 false}
!74 = !{ptr @.str.26, !25, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @args__fstatfs, !25, !"args__fstatfs", i1 false, i1 false}
!76 = !{ptr @types__fstatfs64, !35, !"types__fstatfs64", i1 false, i1 false}
!77 = !{ptr @args__fstatfs64, !35, !"args__fstatfs64", i1 false, i1 false}
!78 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @types__ustat, !45, !"types__ustat", i1 false, i1 false}
!81 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @args__ustat, !45, !"args__ustat", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"fdget_raw: %agg.result"}
!96 = distinct !{!96, !"fdget_raw"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"fdget_raw: %agg.result"}
!99 = distinct !{!99, !"fdget_raw"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"fdget_raw: %agg.result"}
!102 = distinct !{!102, !"fdget_raw"}
!103 = !{i64 2152233803, i64 2152233828}
