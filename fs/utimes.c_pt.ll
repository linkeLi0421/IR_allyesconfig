; ModuleID = '/llk/IR_all_yes/fs/utimes.c_pt.bc'
source_filename = "../fs/utimes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.73, %struct.trace_event, ptr, ptr, %union.anon.75, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.99, %struct.list_head, %struct.list_head, %union.anon.100 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.99 = type { %struct.list_head }
%union.anon.100 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.96, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.91 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.92 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.96 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.101, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.101 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.old_utimbuf32 = type { i32, i32 }
%struct.old_timespec32 = type { i32, i32 }
%struct.old_timeval32 = type { i32, i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_utimensat\00", [44 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__utimensat = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__utimensat, ptr @args__utimensat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__utimensat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__utimensat, i64 20) }, ptr @event_enter__utimensat, ptr @event_exit__utimensat }, align 4
@event_enter__utimensat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimensat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__utimensat = internal global ptr @event_enter__utimensat, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_utimensat\00", [45 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__utimensat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimensat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__utimensat = internal global ptr @event_exit__utimensat, section "_ftrace_events", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_utimensat\00", [18 x i8] zeroinitializer }, align 32
@types__utimensat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@args__utimensat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__utimensat = internal global ptr @__syscall_meta__utimensat, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_utime32\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__utime32 = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__utime32, ptr @args__utime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__utime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__utime32, i64 20) }, ptr @event_enter__utime32, ptr @event_exit__utime32 }, align 4
@event_enter__utime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__utime32 = internal global ptr @event_enter__utime32, section "_ftrace_events", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_utime32\00", [47 x i8] zeroinitializer }, align 32
@event_exit__utime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__utime32 = internal global ptr @event_exit__utime32, section "_ftrace_events", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_utime32\00", [20 x i8] zeroinitializer }, align 32
@types__utime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@args__utime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__utime32 = internal global ptr @__syscall_meta__utime32, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_utimensat_time32\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__utimensat_time32 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 4, ptr @types__utimensat_time32, ptr @args__utimensat_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__utimensat_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__utimensat_time32, i64 20) }, ptr @event_enter__utimensat_time32, ptr @event_exit__utimensat_time32 }, align 4
@event_enter__utimensat_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimensat_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__utimensat_time32 = internal global ptr @event_enter__utimensat_time32, section "_ftrace_events", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_utimensat_time32\00", [38 x i8] zeroinitializer }, align 32
@event_exit__utimensat_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimensat_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__utimensat_time32 = internal global ptr @event_exit__utimensat_time32, section "_ftrace_events", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_utimensat_time32\00", [43 x i8] zeroinitializer }, align 32
@types__utimensat_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.16, ptr @.str.26, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@args__utimensat_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.23, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__utimensat_time32 = internal global ptr @__syscall_meta__utimensat_time32, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_futimesat_time32\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__futimesat_time32 = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__futimesat_time32, ptr @args__futimesat_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__futimesat_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__futimesat_time32, i64 20) }, ptr @event_enter__futimesat_time32, ptr @event_exit__futimesat_time32 }, align 4
@event_enter__futimesat_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__futimesat_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__futimesat_time32 = internal global ptr @event_enter__futimesat_time32, section "_ftrace_events", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_futimesat_time32\00", [38 x i8] zeroinitializer }, align 32
@event_exit__futimesat_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__futimesat_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__futimesat_time32 = internal global ptr @event_exit__futimesat_time32, section "_ftrace_events", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_futimesat_time32\00", [43 x i8] zeroinitializer }, align 32
@types__futimesat_time32 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.16, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@args__futimesat_time32 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__futimesat_time32 = internal global ptr @__syscall_meta__futimesat_time32, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_utimes_time32\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__utimes_time32 = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 2, ptr @types__utimes_time32, ptr @args__utimes_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__utimes_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__utimes_time32, i64 20) }, ptr @event_enter__utimes_time32, ptr @event_exit__utimes_time32 }, align 4
@event_enter__utimes_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimes_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__utimes_time32 = internal global ptr @event_enter__utimes_time32, section "_ftrace_events", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_utimes_time32\00", [41 x i8] zeroinitializer }, align 32
@event_exit__utimes_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__utimes_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__utimes_time32 = internal global ptr @event_exit__utimes_time32, section "_ftrace_events", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_utimes_time32\00", [46 x i8] zeroinitializer }, align 32
@types__utimes_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@args__utimes_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__utimes_time32 = internal global ptr @__syscall_meta__utimes_time32, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"struct __kernel_timespec *\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filename\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utimes\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct old_utimbuf32 *\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"t\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/utimes.c\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct old_timespec32 *\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct old_timeval32 *\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1073741822, i64 1073741823]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1073741822, i64 1073741823]
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"event_enter__utimensat\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"event_exit__utimensat\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"types__utimensat\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"args__utimensat\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"event_enter__utime32\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"event_exit__utime32\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"types__utime32\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"args__utime32\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"event_enter__utimensat_time32\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [29 x i8] c"event_exit__utimensat_time32\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"types__utimensat_time32\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"args__utimensat_time32\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"event_enter__futimesat_time32\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"event_exit__futimesat_time32\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"types__futimesat_time32\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"args__futimesat_time32\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"event_enter__utimes_time32\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"event_exit__utimes_time32\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"types__utimes_time32\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"args__utimes_time32\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 294, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 147, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 235, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 241, i32 7 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 251, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [15 x i8] c"../fs/utimes.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 287, i32 1 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__event_enter__futimesat_time32, ptr @__event_enter__utime32, ptr @__event_enter__utimensat, ptr @__event_enter__utimensat_time32, ptr @__event_enter__utimes_time32, ptr @__event_exit__futimesat_time32, ptr @__event_exit__utime32, ptr @__event_exit__utimensat, ptr @__event_exit__utimensat_time32, ptr @__event_exit__utimes_time32, ptr @__p_syscall_meta__futimesat_time32, ptr @__p_syscall_meta__utime32, ptr @__p_syscall_meta__utimensat, ptr @__p_syscall_meta__utimensat_time32, ptr @__p_syscall_meta__utimes_time32, ptr @__syscall_meta__futimesat_time32, ptr @__syscall_meta__utime32, ptr @__syscall_meta__utimensat, ptr @__syscall_meta__utimensat_time32, ptr @__syscall_meta__utimes_time32, ptr @event_enter__futimesat_time32, ptr @event_enter__utime32, ptr @event_enter__utimensat, ptr @event_enter__utimensat_time32, ptr @event_enter__utimes_time32, ptr @event_exit__futimesat_time32, ptr @event_exit__utime32, ptr @event_exit__utimensat, ptr @event_exit__utimensat_time32, ptr @event_exit__utimes_time32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__utimensat, ptr @args__utimensat, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__utime32, ptr @args__utime32, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__utimensat_time32, ptr @args__utimensat_time32, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__futimesat_time32, ptr @args__futimesat_time32, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__utimes_time32, ptr @args__utimes_time32, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__utimensat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__utimensat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__utimensat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__utimensat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__utime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__utime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__utime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__utime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__utimensat_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__utimensat_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__utimensat_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__utimensat_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__futimesat_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__futimesat_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__futimesat_time32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__futimesat_time32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__utimes_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__utimes_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__utimes_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__utimes_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_utimensat = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_utimensat
@sys_utime32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_utime32
@sys_utimensat_time32 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_utimensat_time32
@sys_futimesat_time32 = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_futimesat_time32
@sys_utimes_time32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_utimes_time32

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_utimes(ptr nocapture noundef readonly %path, ptr noundef readonly %times) local_unnamed_addr #0 align 64 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %delegated_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #4
  %0 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delegated_inode) #4
  %5 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %delegated_inode, align 4
  %tobool.not = icmp eq ptr %times, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %times, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec, align 8
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %8)
  %switch.i = icmp eq i32 %8, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %7)
  %9 = icmp ult i32 %7, 1000000000
  %spec.select.i = or i1 %9, %switch.i
  br i1 %spec.select.i, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %tv_nsec2 = getelementptr %struct.timespec64, ptr %times, i32 1, i32 1
  %10 = ptrtoint ptr %tv_nsec2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec2, align 8
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %12)
  %switch.i88 = icmp eq i32 %12, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %11)
  %13 = icmp ult i32 %11, 1000000000
  %spec.select.i89 = or i1 %13, %switch.i88
  br i1 %spec.select.i89, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %7)
  %cmp = icmp eq i32 %7, 1073741823
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %11)
  %cmp9 = icmp eq i32 %11, 1073741823
  %spec.store.select = select i1 %cmp9, ptr null, ptr %times
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %times.addr.0 = phi ptr [ %spec.store.select, %land.lhs.true ], [ %times, %if.end.if.end12_crit_edge ], [ null, %entry.if.end12_crit_edge ]
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %call13 = tail call i32 @mnt_want_write(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 112, ptr %newattrs, align 8
  %tobool17.not = icmp eq ptr %times.addr.0, null
  br i1 %tobool17.not, label %if.end16.if.end53_crit_edge, label %if.then18

if.end16.if.end53_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then18:                                        ; preds = %if.end16
  %tv_nsec20 = getelementptr inbounds %struct.timespec64, ptr %times.addr.0, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec20, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.then27 [
    i32 1073741822, label %if.then22
    i32 1073741823, label %if.then18.if.end31_crit_edge
  ]

if.then18.if.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 96, ptr %newattrs, align 8
  br label %if.end31

if.then27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 5
  %21 = call ptr @memcpy(ptr %ia_atime, ptr %times.addr.0, i32 16)
  %22 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 240, ptr %newattrs, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then22, %if.then18.if.end31_crit_edge
  %tv_nsec33 = getelementptr %struct.timespec64, ptr %times.addr.0, i32 1, i32 1
  %23 = ptrtoint ptr %tv_nsec33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec33, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %24, label %if.then42 [
    i32 1073741822, label %if.then35
    i32 1073741823, label %if.end31.if.end47_crit_edge
  ]

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %newattrs, align 8
  %and37 = and i32 %27, -33
  store i32 %and37, ptr %newattrs, align 8
  br label %if.end47

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx32 = getelementptr %struct.timespec64, ptr %times.addr.0, i32 1
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %ia_mtime, ptr %arrayidx32, i32 16)
  %29 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %newattrs, align 8
  %or45 = or i32 %30, 256
  store i32 %or45, ptr %newattrs, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.then35, %if.end31.if.end47_crit_edge
  %31 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %newattrs, align 8
  %or49 = or i32 %32, 65536
  br label %if.end53

if.end53:                                         ; preds = %if.end47, %if.end16.if.end53_crit_edge
  %storemerge = phi i32 [ %or49, %if.end47 ], [ 131184, %if.end16.if.end53_crit_edge ]
  %33 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %newattrs, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 25
  br label %retry_deleg

retry_deleg:                                      ; preds = %break_deleg_wait.exit.retry_deleg_crit_edge, %if.end53
  call void @down_write(ptr noundef %i_rwsem.i) #4
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !84
  %38 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dentry, align 4
  %call57 = call i32 @notify_change(ptr noundef %37, ptr noundef %39, ptr noundef nonnull %newattrs, ptr noundef nonnull %delegated_inode) #4
  call void @up_write(ptr noundef %i_rwsem.i) #4
  %40 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %delegated_inode, align 4
  %tobool58.not = icmp eq ptr %41, null
  br i1 %tobool58.not, label %retry_deleg.if.end64_crit_edge, label %if.then59

retry_deleg.if.end64_crit_edge:                   ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then59:                                        ; preds = %retry_deleg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !85
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then59.break_deleg_wait.exit_crit_edge, label %land.lhs.true.i.i

if.then59.break_deleg_wait.exit_crit_edge:        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %break_deleg_wait.exit

land.lhs.true.i.i:                                ; preds = %if.then59
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !86
  %cmp.i.not.i.i.i = icmp eq ptr %45, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %43, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %47, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, label %list_empty_careful.exit.i.i.if.then.i.i_crit_edge

list_empty_careful.exit.i.i.if.then.i.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %break_deleg_wait.exit

if.then.i.i:                                      ; preds = %list_empty_careful.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef nonnull %41, i32 noundef 1, i32 noundef 4) #4
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %if.then.i.i, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, %if.then59.break_deleg_wait.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ 0, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge ], [ 0, %if.then59.break_deleg_wait.exit_crit_edge ]
  %48 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %delegated_inode, align 4
  call void @iput(ptr noundef %49) #4
  %50 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %delegated_inode, align 4
  %tobool61.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool61.not, label %break_deleg_wait.exit.retry_deleg_crit_edge, label %break_deleg_wait.exit.if.end64_crit_edge

break_deleg_wait.exit.if.end64_crit_edge:         ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

break_deleg_wait.exit.retry_deleg_crit_edge:      ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %retry_deleg

if.end64:                                         ; preds = %break_deleg_wait.exit.if.end64_crit_edge, %retry_deleg.if.end64_crit_edge
  %error.0 = phi i32 [ %retval.0.i.i, %break_deleg_wait.exit.if.end64_crit_edge ], [ %call57, %retry_deleg.if.end64_crit_edge ]
  %51 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %path, align 4
  call void @mnt_drop_write(ptr noundef %52) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %error.0, %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delegated_inode) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_utimes(i32 noundef %dfd, ptr noundef %filename, ptr noundef %times, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ne ptr %filename, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %dfd)
  %cmp1.not = icmp eq i32 %dfd, -100
  %or.cond = or i1 %cmp1.not, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call i32 @__fdget(i32 noundef %dfd) #4, !noalias !87
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %f_path.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call.i = tail call i32 @vfs_utimes(ptr noundef %f_path.i, ptr noundef %times) #4
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.return_crit_edge, label %if.then.i.i

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fput(ptr noundef nonnull %0) #4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #4
  %1 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !90
  %2 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !90
  %and.i = and i32 %flags, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %if.end.i9, label %if.end.do_utimes_path.exit_crit_edge

if.end.do_utimes_path.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes_path.exit

if.end.i9:                                        ; preds = %if.end
  %and1.i = lshr i32 %flags, 8
  %and1.lobit.i = and i32 %and1.i, 1
  %and5.i = shl nuw nsw i32 %flags, 2
  %4 = and i32 %and5.i, 16384
  %5 = or i32 %and1.lobit.i, %4
  %6 = xor i32 %5, 1
  %call.i29.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %6, ptr noundef nonnull %path.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool10.not30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool10.not30.i, label %if.end12.lr.ph.i, label %if.end.i9.do_utimes_path.exit_crit_edge

if.end.i9.do_utimes_path.exit_crit_edge:          ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes_path.exit

if.end12.lr.ph.i:                                 ; preds = %if.end.i9
  %7 = or i32 %6, 32
  br label %if.end12.i

retry.i:                                          ; preds = %if.end12.i
  %call.i.i10 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %7, ptr noundef nonnull %path.i, ptr noundef null) #4
  %tobool10.not.i = icmp eq i32 %call.i.i10, 0
  br i1 %tobool10.not.i, label %retry.i.if.end12.i_crit_edge, label %retry.i.do_utimes_path.exit_crit_edge

retry.i.do_utimes_path.exit_crit_edge:            ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes_path.exit

retry.i.if.end12.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %retry.i.if.end12.i_crit_edge, %if.end12.lr.ph.i
  %lookup_flags.231.i = phi i32 [ %6, %if.end12.lr.ph.i ], [ %7, %retry.i.if.end12.i_crit_edge ]
  %call13.i = call i32 @vfs_utimes(ptr noundef nonnull %path.i, ptr noundef %times) #4
  call void @path_put(ptr noundef nonnull %path.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call13.i)
  %cmp.i.i = icmp eq i32 %call13.i, -116
  %and.i.i11 = and i32 %lookup_flags.231.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %and.i.i11, 0
  %8 = and i1 %tobool.not.i.i12, %cmp.i.i
  br i1 %8, label %retry.i, label %if.end12.i.do_utimes_path.exit_crit_edge

if.end12.i.do_utimes_path.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes_path.exit

do_utimes_path.exit:                              ; preds = %if.end12.i.do_utimes_path.exit_crit_edge, %retry.i.do_utimes_path.exit_crit_edge, %if.end.i9.do_utimes_path.exit_crit_edge, %if.end.do_utimes_path.exit_crit_edge
  %retval.0.i13 = phi i32 [ -22, %if.end.do_utimes_path.exit_crit_edge ], [ %call.i29.i, %if.end.i9.do_utimes_path.exit_crit_edge ], [ %call13.i, %if.end12.i.do_utimes_path.exit_crit_edge ], [ %call.i.i10, %retry.i.do_utimes_path.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #4
  br label %return

return:                                           ; preds = %do_utimes_path.exit, %if.then.i.i, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i13, %do_utimes_path.exit ], [ -22, %if.then.return_crit_edge ], [ -9, %if.end.i.return_crit_edge ], [ %call.i, %if.end3.i.return_crit_edge ], [ %call.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimensat(i32 noundef %dfd, i32 noundef %filename, i32 noundef %utimes, i32 noundef %flags) #0 align 64 {
entry:
  %tstimes.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %utimes to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tstimes.i) #4
  %2 = call ptr @memset(ptr %tstimes.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %utimes)
  %tobool.not.i = icmp eq i32 %utimes, 0
  br i1 %tobool.not.i, label %entry.if.end14.i_crit_edge, label %if.then.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_timespec64(ptr noundef nonnull %tstimes.i, ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.then.i.__do_sys_utimensat.exit_crit_edge

if.then.i.__do_sys_utimensat.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %arrayidx3.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tstimes.i, i32 0, i32 1
  %arrayidx4.i = getelementptr %struct.__kernel_timespec, ptr %1, i32 1
  %call5.i = call i32 @get_timespec64(ptr noundef %arrayidx3.i, ptr noundef %arrayidx4.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %lor.lhs.false.i.__do_sys_utimensat.exit_crit_edge

lor.lhs.false.i.__do_sys_utimensat.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tstimes.i, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %4)
  %cmp.i = icmp eq i32 %4, 1073741822
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tv_nsec10.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tstimes.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %tv_nsec10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %6)
  %cmp11.i = icmp eq i32 %6, 1073741822
  br i1 %cmp11.i, label %land.lhs.true.i.__do_sys_utimensat.exit_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i.__do_sys_utimensat.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat.exit

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  %cond.i = phi ptr [ %tstimes.i, %if.end.i.if.end14.i_crit_edge ], [ %tstimes.i, %land.lhs.true.i.if.end14.i_crit_edge ], [ null, %entry.if.end14.i_crit_edge ]
  %call16.i = call i32 @do_utimes(i32 noundef %dfd, ptr noundef %0, ptr noundef %cond.i, i32 noundef %flags) #4
  br label %__do_sys_utimensat.exit

__do_sys_utimensat.exit:                          ; preds = %if.end14.i, %land.lhs.true.i.__do_sys_utimensat.exit_crit_edge, %lor.lhs.false.i.__do_sys_utimensat.exit_crit_edge, %if.then.i.__do_sys_utimensat.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %if.end14.i ], [ -14, %lor.lhs.false.i.__do_sys_utimensat.exit_crit_edge ], [ -14, %if.then.i.__do_sys_utimensat.exit_crit_edge ], [ 0, %land.lhs.true.i.__do_sys_utimensat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tstimes.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utime32(i32 noundef %filename, i32 noundef %t) #0 align 64 {
entry:
  %path.i.i.i = alloca %struct.path, align 4
  %tv.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %t to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tv.i) #4
  %2 = call ptr @memset(ptr %tv.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %tobool.not.i = icmp eq i32 %t, 0
  br i1 %tobool.not.i, label %entry.if.end26.i_crit_edge, label %if.then.i

entry.if.end26.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 241) #4
  %3 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !91
  %and.i.i = and i32 %5, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %6 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %1, i32 -1226833921) #4, !srcloc !94
  %asmresult.i = extractvalue { i32, i64 } %6, 0
  %asmresult1.i = extractvalue { i32, i64 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %7 = shl i64 %asmresult1.i, 32
  %conv2.i = ashr exact i64 %7, 32
  %8 = ptrtoint ptr %tv.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2.i, ptr %tv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool4.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.then.i.__do_sys_utime32.exit_crit_edge

if.then.i.__do_sys_utime32.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utime32.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 242) #4
  %modtime.i = getelementptr inbounds %struct.old_utimbuf32, ptr %1, i32 0, i32 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i32.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i32.i to ptr
  %cpu_domain.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i33.i) #3, !srcloc !91
  %and.i34.i = and i32 %11, -13
  %or.i35.i = or i32 %and.i34.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i35.i) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %12 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %modtime.i, i32 -1226833921) #4, !srcloc !95
  %asmresult14.i = extractvalue { i32, i64 } %12, 0
  %asmresult15.i = extractvalue { i32, i64 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %13 = shl i64 %asmresult15.i, 32
  %conv17.i = ashr exact i64 %13, 32
  %arrayidx18.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tv.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv17.i, ptr %arrayidx18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult14.i)
  %tobool21.not.i = icmp eq i32 %asmresult14.i, 0
  br i1 %tobool21.not.i, label %if.end.i, label %lor.lhs.false.i.__do_sys_utime32.exit_crit_edge

lor.lhs.false.i.__do_sys_utime32.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utime32.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tv.i, i32 0, i32 1
  %15 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec25.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tv.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %tv_nsec25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tv_nsec25.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i, %entry.if.end26.i_crit_edge
  %cond.i = phi ptr [ %tv.i, %if.end.i ], [ null, %entry.if.end26.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i.i) #4
  %17 = ptrtoint ptr %path.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i.i, align 4, !annotation !90
  %18 = getelementptr inbounds %struct.path, ptr %path.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %18, align 4, !annotation !90
  %call.i29.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %path.i.i.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i.i)
  %tobool10.not30.i.i.i = icmp eq i32 %call.i29.i.i.i, 0
  br i1 %tobool10.not30.i.i.i, label %if.end12.i.i.i, label %if.end26.i.do_utimes.exit.i_crit_edge

if.end26.i.do_utimes.exit.i_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes.exit.i

retry.i.i.i:                                      ; preds = %if.end12.i.i.i
  %call.i.i10.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 33, ptr noundef nonnull %path.i.i.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call.i.i10.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end12.i.i.i.1, label %retry.i.i.i.do_utimes.exit.i_crit_edge

retry.i.i.i.do_utimes.exit.i_crit_edge:           ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes.exit.i

if.end12.i.i.i.1:                                 ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call13.i.i.i.1 = call i32 @vfs_utimes(ptr noundef nonnull %path.i.i.i, ptr noundef %cond.i) #4
  call void @path_put(ptr noundef nonnull %path.i.i.i) #4
  br label %do_utimes.exit.i

if.end12.i.i.i:                                   ; preds = %if.end26.i
  %call13.i.i.i = call i32 @vfs_utimes(ptr noundef nonnull %path.i.i.i, ptr noundef %cond.i) #4
  call void @path_put(ptr noundef nonnull %path.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call13.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call13.i.i.i, -116
  br i1 %cmp.i.i.i.i, label %retry.i.i.i, label %if.end12.i.i.i.do_utimes.exit.i_crit_edge

if.end12.i.i.i.do_utimes.exit.i_crit_edge:        ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_utimes.exit.i

do_utimes.exit.i:                                 ; preds = %if.end12.i.i.i.do_utimes.exit.i_crit_edge, %if.end12.i.i.i.1, %retry.i.i.i.do_utimes.exit.i_crit_edge, %if.end26.i.do_utimes.exit.i_crit_edge
  %retval.0.i13.i.i = phi i32 [ %call.i29.i.i.i, %if.end26.i.do_utimes.exit.i_crit_edge ], [ %call13.i.i.i, %if.end12.i.i.i.do_utimes.exit.i_crit_edge ], [ %call.i.i10.i.i, %retry.i.i.i.do_utimes.exit.i_crit_edge ], [ %call13.i.i.i.1, %if.end12.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i.i) #4
  br label %__do_sys_utime32.exit

__do_sys_utime32.exit:                            ; preds = %do_utimes.exit.i, %lor.lhs.false.i.__do_sys_utime32.exit_crit_edge, %if.then.i.__do_sys_utime32.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i13.i.i, %do_utimes.exit.i ], [ -14, %lor.lhs.false.i.__do_sys_utime32.exit_crit_edge ], [ -14, %if.then.i.__do_sys_utime32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tv.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimensat_time32(i32 noundef %dfd, i32 noundef %filename, i32 noundef %t, i32 noundef %flags) #0 align 64 {
entry:
  %tv.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %t to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tv.i) #4
  %2 = call ptr @memset(ptr %tv.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %tobool.not.i = icmp eq i32 %t, 0
  br i1 %tobool.not.i, label %entry.if.end14.i_crit_edge, label %if.then.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_old_timespec32(ptr noundef nonnull %tv.i, ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.then.i.__do_sys_utimensat_time32.exit_crit_edge

if.then.i.__do_sys_utimensat_time32.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat_time32.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %arrayidx3.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tv.i, i32 0, i32 1
  %arrayidx4.i = getelementptr %struct.old_timespec32, ptr %1, i32 1
  %call5.i = call i32 @get_old_timespec32(ptr noundef %arrayidx3.i, ptr noundef %arrayidx4.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %lor.lhs.false.i.__do_sys_utimensat_time32.exit_crit_edge

lor.lhs.false.i.__do_sys_utimensat_time32.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat_time32.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tv.i, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %4)
  %cmp.i = icmp eq i32 %4, 1073741822
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tv_nsec10.i = getelementptr inbounds [2 x %struct.timespec64], ptr %tv.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %tv_nsec10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741822, i32 %6)
  %cmp11.i = icmp eq i32 %6, 1073741822
  br i1 %cmp11.i, label %land.lhs.true.i.__do_sys_utimensat_time32.exit_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i.__do_sys_utimensat_time32.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_utimensat_time32.exit

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  %cond.i = phi ptr [ %tv.i, %if.end.i.if.end14.i_crit_edge ], [ %tv.i, %land.lhs.true.i.if.end14.i_crit_edge ], [ null, %entry.if.end14.i_crit_edge ]
  %call16.i = call i32 @do_utimes(i32 noundef %dfd, ptr noundef %0, ptr noundef %cond.i, i32 noundef %flags) #4
  br label %__do_sys_utimensat_time32.exit

__do_sys_utimensat_time32.exit:                   ; preds = %if.end14.i, %land.lhs.true.i.__do_sys_utimensat_time32.exit_crit_edge, %lor.lhs.false.i.__do_sys_utimensat_time32.exit_crit_edge, %if.then.i.__do_sys_utimensat_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %if.end14.i ], [ -14, %lor.lhs.false.i.__do_sys_utimensat_time32.exit_crit_edge ], [ -14, %if.then.i.__do_sys_utimensat_time32.exit_crit_edge ], [ 0, %land.lhs.true.i.__do_sys_utimensat_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tv.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futimesat_time32(i32 noundef %dfd, i32 noundef %filename, i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %t to ptr
  %call.i = tail call fastcc i32 @do_compat_futimesat(i32 noundef %dfd, ptr noundef %0, ptr noundef %1) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_utimes_time32(i32 noundef %filename, i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %t to ptr
  %call.i = tail call fastcc i32 @do_compat_futimesat(i32 noundef -100, ptr noundef %0, ptr noundef %1) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_compat_futimesat(i32 noundef %dfd, ptr noundef %filename, ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  %tv = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tv) #4
  %0 = call ptr @memset(ptr %tv, i32 255, i32 32)
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.if.end86_crit_edge, label %if.then

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 273) #4
  %1 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !91
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %4 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %t, i32 -1226833921) #4, !srcloc !96
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult1 = extractvalue { i32, i64 } %4, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %5 = shl i64 %asmresult1, 32
  %conv2 = ashr exact i64 %5, 32
  %6 = ptrtoint ptr %tv to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv2, ptr %tv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool6.not = icmp eq i32 %asmresult, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 274) #4
  %tv_usec = getelementptr inbounds %struct.old_timeval32, ptr %t, i32 0, i32 1
  %7 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i96 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i96 to ptr
  %cpu_domain.i.i97 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i97) #3, !srcloc !91
  %and.i98 = and i32 %9, -13
  %or.i99 = or i32 %and.i98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i99) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %tv_usec, i32 -1226833921) #4, !srcloc !97
  %asmresult17 = extractvalue { i32, i32 } %10, 0
  %asmresult18 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult18, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult17)
  %tobool21.not = icmp eq i32 %asmresult17, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 275) #4
  %arrayidx26 = getelementptr %struct.old_timeval32, ptr %t, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i100 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i100 to ptr
  %cpu_domain.i.i101 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i101) #3, !srcloc !91
  %and.i102 = and i32 %14, -13
  %or.i103 = or i32 %and.i102, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i103) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %15 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx26, i32 -1226833921) #4, !srcloc !98
  %asmresult34 = extractvalue { i32, i64 } %15, 0
  %asmresult35 = extractvalue { i32, i64 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %16 = shl i64 %asmresult35, 32
  %conv37 = ashr exact i64 %16, 32
  %arrayidx38 = getelementptr inbounds [2 x %struct.timespec64], ptr %tv, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv37, ptr %arrayidx38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult34)
  %tobool41.not = icmp eq i32 %asmresult34, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false22
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 276) #4
  %tv_usec47 = getelementptr %struct.old_timeval32, ptr %t, i32 1, i32 1
  %18 = tail call i32 @llvm.read_register.i32(metadata !74) #4
  %and.i.i.i104 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i104 to ptr
  %cpu_domain.i.i105 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i105) #3, !srcloc !91
  %and.i106 = and i32 %20, -13
  %or.i107 = or i32 %and.i106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i107) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %tv_usec47, i32 -1226833921) #4, !srcloc !99
  %asmresult54 = extractvalue { i32, i32 } %21, 0
  %asmresult55 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #4, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %tv_nsec57 = getelementptr inbounds [2 x %struct.timespec64], ptr %tv, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult54)
  %tobool59.not = icmp eq i32 %asmresult54, 0
  br i1 %tobool59.not, label %if.end, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false42
  %22 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %23)
  %24 = icmp ugt i32 %23, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %asmresult55)
  %cmp72 = icmp sgt i32 %asmresult55, 999999
  %or.cond94 = select i1 %24, i1 true, i1 %cmp72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult55)
  %cmp77 = icmp slt i32 %asmresult55, 0
  %or.cond95 = select i1 %or.cond94, i1 true, i1 %cmp77
  br i1 %or.cond95, label %if.end.cleanup_crit_edge, label %if.end80

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end80:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul nuw nsw i32 %23, 1000
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %tv_nsec, align 8
  %mul85 = mul nuw nsw i32 %asmresult55, 1000
  %26 = ptrtoint ptr %tv_nsec57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul85, ptr %tv_nsec57, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end80, %entry.if.end86_crit_edge
  %cond = phi ptr [ %tv, %if.end80 ], [ null, %entry.if.end86_crit_edge ]
  %call88 = call i32 @do_utimes(i32 noundef %dfd, ptr noundef %filename, ptr noundef %cond, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call88, %if.end86 ], [ -14, %lor.lhs.false42.cleanup_crit_edge ], [ -14, %lor.lhs.false22.cleanup_crit_edge ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tv) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/utimes.c", i32 147, i32 1}
!2 = !{ptr @event_enter__utimensat, !1, !"event_enter__utimensat", i1 false, i1 false}
!3 = !{ptr @__event_enter__utimensat, !1, !"__event_enter__utimensat", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__utimensat, !1, !"event_exit__utimensat", i1 false, i1 false}
!6 = !{ptr @__event_exit__utimensat, !1, !"__event_exit__utimensat", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__utimensat, !1, !"__syscall_meta__utimensat", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__utimensat, !1, !"__p_syscall_meta__utimensat", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/utimes.c", i32 235, i32 1}
!12 = !{ptr @event_enter__utime32, !11, !"event_enter__utime32", i1 false, i1 false}
!13 = !{ptr @__event_enter__utime32, !11, !"__event_enter__utime32", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__utime32, !11, !"event_exit__utime32", i1 false, i1 false}
!16 = !{ptr @__event_exit__utime32, !11, !"__event_exit__utime32", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__utime32, !11, !"__syscall_meta__utime32", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__utime32, !11, !"__p_syscall_meta__utime32", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/utimes.c", i32 251, i32 1}
!22 = !{ptr @event_enter__utimensat_time32, !21, !"event_enter__utimensat_time32", i1 false, i1 false}
!23 = !{ptr @__event_enter__utimensat_time32, !21, !"__event_enter__utimensat_time32", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__utimensat_time32, !21, !"event_exit__utimensat_time32", i1 false, i1 false}
!26 = !{ptr @__event_exit__utimensat_time32, !21, !"__event_exit__utimensat_time32", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__utimensat_time32, !21, !"__syscall_meta__utimensat_time32", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__utimensat_time32, !21, !"__p_syscall_meta__utimensat_time32", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/utimes.c", i32 287, i32 1}
!32 = !{ptr @event_enter__futimesat_time32, !31, !"event_enter__futimesat_time32", i1 false, i1 false}
!33 = !{ptr @__event_enter__futimesat_time32, !31, !"__event_enter__futimesat_time32", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__futimesat_time32, !31, !"event_exit__futimesat_time32", i1 false, i1 false}
!36 = !{ptr @__event_exit__futimesat_time32, !31, !"__event_exit__futimesat_time32", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__futimesat_time32, !31, !"__syscall_meta__futimesat_time32", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__futimesat_time32, !31, !"__p_syscall_meta__futimesat_time32", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/utimes.c", i32 294, i32 1}
!42 = !{ptr @event_enter__utimes_time32, !41, !"event_enter__utimes_time32", i1 false, i1 false}
!43 = !{ptr @__event_enter__utimes_time32, !41, !"__event_enter__utimes_time32", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__utimes_time32, !41, !"event_exit__utimes_time32", i1 false, i1 false}
!46 = !{ptr @__event_exit__utimes_time32, !41, !"__event_exit__utimes_time32", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__utimes_time32, !41, !"__syscall_meta__utimes_time32", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__utimes_time32, !41, !"__p_syscall_meta__utimes_time32", i1 false, i1 false}
!50 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @types__utimensat, !1, !"types__utimensat", i1 false, i1 false}
!54 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @args__utimensat, !1, !"args__utimensat", i1 false, i1 false}
!59 = !{ptr @.str.22, !11, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @types__utime32, !11, !"types__utime32", i1 false, i1 false}
!61 = !{ptr @.str.23, !11, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @args__utime32, !11, !"args__utime32", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/utimes.c", i32 241, i32 7}
!65 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @types__utimensat_time32, !21, !"types__utimensat_time32", i1 false, i1 false}
!68 = !{ptr @args__utimensat_time32, !21, !"args__utimensat_time32", i1 false, i1 false}
!69 = !{ptr @.str.27, !31, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @types__futimesat_time32, !31, !"types__futimesat_time32", i1 false, i1 false}
!71 = !{ptr @args__futimesat_time32, !31, !"args__futimesat_time32", i1 false, i1 false}
!72 = !{ptr @types__utimes_time32, !41, !"types__utimes_time32", i1 false, i1 false}
!73 = !{ptr @args__utimes_time32, !41, !"args__utimes_time32", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2149679735}
!85 = !{i64 2152536952}
!86 = !{i64 2148105180}
!87 = !{!88}
!88 = distinct !{!88, !89, !"fdget: %agg.result"}
!89 = distinct !{!89, !"fdget"}
!90 = !{!"auto-init"}
!91 = !{i64 4684453}
!92 = !{i64 4684650}
!93 = !{i64 2152169883}
!94 = !{i64 2155028244, i64 2155028524, i64 2155028858, i64 2155029192}
!95 = !{i64 2155040490, i64 2155040770, i64 2155041104, i64 2155041438}
!96 = !{i64 2155071542, i64 2155071822, i64 2155072156, i64 2155072490}
!97 = !{i64 2155089139, i64 2155089419, i64 2155089753, i64 2155090087}
!98 = !{i64 2155100115, i64 2155100395, i64 2155100729, i64 2155101063}
!99 = !{i64 2155113651, i64 2155113931, i64 2155114265, i64 2155114599}
