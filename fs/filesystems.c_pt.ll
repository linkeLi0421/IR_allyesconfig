; ModuleID = '/llk/IR_all_yes/fs/filesystems.c_pt.bc'
source_filename = "../fs/filesystems.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_filesystem\22, \22a\22\09"
module asm "\09.weak\09__crc_register_filesystem\09\09\09\09"
module asm "\09.long\09__crc_register_filesystem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22register_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_register_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_filesystem\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_filesystem\09\09\09\09"
module asm "\09.long\09__crc_unregister_filesystem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_fs_type\22, \22a\22\09"
module asm "\09.weak\09__crc_get_fs_type\09\09\09\09"
module asm "\09.long\09__crc_get_fs_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22get_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_get_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }

@file_systems_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_register_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_register_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_filesystem to i32), ptr @__kstrtab_register_filesystem, ptr @__kstrtabns_register_filesystem }, section "___ksymtab+register_filesystem", align 4
@file_systems = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_unregister_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_filesystem to i32), ptr @__kstrtab_unregister_filesystem, ptr @__kstrtabns_unregister_filesystem }, section "___ksymtab+unregister_filesystem", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_sysfs\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__sysfs = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__sysfs, ptr @args__sysfs, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sysfs, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sysfs, i64 20) }, ptr @event_enter__sysfs, ptr @event_exit__sysfs }, align 4
@event_enter__sysfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sysfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sysfs = internal global ptr @event_enter__sysfs, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_sysfs\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__sysfs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__sysfs, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sysfs = internal global ptr @event_exit__sysfs, section "_ftrace_events", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_sysfs\00", [22 x i8] zeroinitializer }, align 32
@types__sysfs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@args__sysfs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sysfs = internal global ptr @__syscall_meta__sysfs, section "__syscalls_metadata", align 4
@list_bdev_fs_names._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: truncating file system list\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list_bdev_fs_names\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/filesystems.c\00", [47 x i8] zeroinitializer }, align 32
@list_bdev_fs_names._entry_ptr = internal global ptr @list_bdev_fs_names._entry, section ".printk_index", align 4
@__initcall__kmod_filesystems__253_258_proc_filesystems_init6 = internal global ptr @proc_filesystems_init, section ".initcall6.init", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs-%.*s\00", [24 x i8] zeroinitializer }, align 32
@get_fs_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_fs_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014request_module fs-%.*s succeeded, but still no fs?\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_fs_type\00", [20 x i8] zeroinitializer }, align 32
@get_fs_type._entry_ptr = internal global ptr @get_fs_type._entry, section ".printk_index", align 4
@__kstrtab_get_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_get_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_fs_type to i32), ptr @__kstrtab_get_fs_type, ptr @__kstrtabns_get_fs_type }, section "___ksymtab+get_fs_type", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"file_systems_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"option\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg2\00", [27 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filesystems\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s\09%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodev\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"file_systems_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"file_systems\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 34, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"event_enter__sysfs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"event_exit__sysfs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"types__sysfs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"args__sysfs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 224, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 280, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 283, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 35, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 191, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 255, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 244, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 245, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [20 x i8] c"../fs/filesystems.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 245, i32 45 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__event_enter__sysfs, ptr @__event_exit__sysfs, ptr @__initcall__kmod_filesystems__253_258_proc_filesystems_init6, ptr @__ksymtab_get_fs_type, ptr @__ksymtab_register_filesystem, ptr @__ksymtab_unregister_filesystem, ptr @__p_syscall_meta__sysfs, ptr @__syscall_meta__sysfs, ptr @event_enter__sysfs, ptr @event_exit__sysfs, ptr @get_fs_type._entry, ptr @get_fs_type._entry_ptr, ptr @list_bdev_fs_names._entry, ptr @list_bdev_fs_names._entry_ptr, ptr @file_systems_lock, ptr @file_systems, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__sysfs, ptr @args__sysfs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_systems_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_systems to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sysfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sysfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sysfs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sysfs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_bdev_fs_names._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fs_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_sysfs = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_sysfs

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_filesystem(ptr noundef readonly returned %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.file_system_type, ptr %fs, i32 0, i32 6
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  tail call void @__module_get(ptr noundef %1) #5
  ret ptr %fs
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_filesystem(ptr nocapture noundef readonly %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.file_system_type, ptr %fs, i32 0, i32 6
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_filesystem(ptr noundef %fs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parameters = getelementptr inbounds %struct.file_system_type, ptr %fs, i32 0, i32 3
  %0 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parameters, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs, align 4
  %call = tail call zeroext i1 @fs_validate_description(ptr noundef %3, ptr noundef nonnull %1) #5
  br i1 %call, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs, align 4
  %call3 = tail call ptr @strchr(ptr noundef %5, i32 noundef 46)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !68

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/filesystems.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #5, !srcloc !69
  unreachable

do.end14:                                         ; preds = %do.body
  %next = getelementptr inbounds %struct.file_system_type, ptr %fs, i32 0, i32 7
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.end17, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %do.end14
  tail call void @_raw_write_lock(ptr noundef nonnull @file_systems_lock) #5
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs, align 4
  %call20 = tail call i32 @strlen(ptr noundef %9) #8
  %10 = load ptr, ptr @file_systems, align 4
  %tobool.not9.i = icmp eq ptr %10, null
  br i1 %tobool.not9.i, label %if.end17.if.else_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %11 = phi ptr [ %17, %for.inc.i.for.body.i_crit_edge ], [ %10, %if.end17.for.body.i_crit_edge ]
  %p.010.i = phi ptr [ %next.i, %for.inc.i.for.body.i_crit_edge ], [ @file_systems, %if.end17.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %13, ptr noundef %9, i32 noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %13, i32 %call20
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i = icmp eq i8 %15, 0
  br i1 %tobool3.not.i, label %find_filesystem.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.file_system_type, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

find_filesystem.exit:                             ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %p.010.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %p.010.i, align 4
  %tobool22.not = icmp eq ptr %.pr, null
  br i1 %tobool22.not, label %find_filesystem.exit.if.else_crit_edge, label %find_filesystem.exit.if.end24_crit_edge

find_filesystem.exit.if.end24_crit_edge:          ; preds = %find_filesystem.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

find_filesystem.exit.if.else_crit_edge:           ; preds = %find_filesystem.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %find_filesystem.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end17.if.else_crit_edge
  %p.0.lcssa.i36 = phi ptr [ %p.010.i, %find_filesystem.exit.if.else_crit_edge ], [ @file_systems, %if.end17.if.else_crit_edge ], [ %next.i, %for.inc.i.if.else_crit_edge ]
  %19 = ptrtoint ptr %p.0.lcssa.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fs, ptr %p.0.lcssa.i36, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %find_filesystem.exit.if.end24_crit_edge
  %res.0 = phi i32 [ 0, %if.else ], [ -16, %find_filesystem.exit.if.end24_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %if.end24 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -16, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fs_validate_description(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_filesystem(ptr noundef %fs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @file_systems_lock) #5
  %0 = load ptr, ptr @file_systems, align 4
  %tobool.not9 = icmp eq ptr %0, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %cmp14 = icmp eq ptr %0, %fs
  br i1 %cmp14, label %while.body.preheader.if.then_crit_edge, label %while.body.preheader.while.cond_crit_edge

while.body.preheader.while.cond_crit_edge:        ; preds = %while.body.preheader
  br label %while.cond

while.body.preheader.if.then_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.preheader.while.cond_crit_edge
  %1 = phi ptr [ %3, %while.body.while.cond_crit_edge ], [ %0, %while.body.preheader.while.cond_crit_edge ]
  %next2 = getelementptr inbounds %struct.file_system_type, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq ptr %3, %fs
  br i1 %cmp, label %if.then.loopexit, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then.loopexit:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %next2.le = getelementptr inbounds %struct.file_system_type, ptr %1, i32 0, i32 7
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %while.body.preheader.if.then_crit_edge
  %tmp.010.lcssa = phi ptr [ @file_systems, %while.body.preheader.if.then_crit_edge ], [ %next2.le, %if.then.loopexit ]
  %next = getelementptr inbounds %struct.file_system_type, ptr %fs, i32 0, i32 7
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %tmp.010.lcssa to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tmp.010.lcssa, align 4
  store ptr null, ptr %next, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @file_systems_lock) #5
  tail call void @synchronize_rcu() #5
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sysfs(i32 noundef %option, i32 noundef %arg1, i32 noundef %arg2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %option to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %option, label %entry.__do_sys_sysfs.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

entry.__do_sys_sysfs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_sysfs.exit

sw.bb.i:                                          ; preds = %entry
  %1 = inttoptr i32 %arg1 to ptr
  %call.i.i = tail call ptr @getname(ptr noundef %1) #5
  %2 = ptrtoint ptr %call.i.i to i32
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.bb.i.__do_sys_sysfs.exit_crit_edge, label %if.end.i.i

sw.bb.i.__do_sys_sysfs.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_sysfs.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %tmp.018.i.i = load ptr, ptr @file_systems, align 4
  %tobool.not19.i.i = icmp eq ptr %tmp.018.i.i, null
  br i1 %tobool.not19.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %tmp.021.i.i = phi ptr [ %tmp.018.i.i, %for.body.lr.ph.i.i ], [ %tmp.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %index.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %tmp.021.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp.021.i.i, align 4
  %call5.i.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.file_system_type, ptr %tmp.021.i.i, i32 0, i32 7
  %inc.i.i = add i32 %index.020.i.i, 1
  %7 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %tmp.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %err.0.i.i = phi i32 [ -22, %if.end.i.i.for.end.i.i_crit_edge ], [ %index.020.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ -22, %for.inc.i.i.for.end.i.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  tail call void @putname(ptr noundef %call.i.i) #5
  br label %__do_sys_sysfs.exit

sw.bb2.i:                                         ; preds = %entry
  %8 = inttoptr i32 %arg2 to ptr
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %tmp.018.i7.i = load ptr, ptr @file_systems, align 4
  %tobool.not19.i8.i = icmp eq ptr %tmp.018.i7.i, null
  br i1 %tobool.not19.i8.i, label %sw.bb2.i.if.then2.critedge.i.i_crit_edge, label %sw.bb2.i.for.body.i11.i_crit_edge

sw.bb2.i.for.body.i11.i_crit_edge:                ; preds = %sw.bb2.i
  br label %for.body.i11.i

sw.bb2.i.if.then2.critedge.i.i_crit_edge:         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2.critedge.i.i

for.body.i11.i:                                   ; preds = %for.inc.i16.i.for.body.i11.i_crit_edge, %sw.bb2.i.for.body.i11.i_crit_edge
  %tmp.021.i9.i = phi ptr [ %tmp.0.i14.i, %for.inc.i16.i.for.body.i11.i_crit_edge ], [ %tmp.018.i7.i, %sw.bb2.i.for.body.i11.i_crit_edge ]
  %index.addr.020.i.i = phi i32 [ %dec.i.i, %for.inc.i16.i.for.body.i11.i_crit_edge ], [ %arg1, %sw.bb2.i.for.body.i11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.020.i.i)
  %cmp.i10.i = icmp eq i32 %index.addr.020.i.i, 0
  br i1 %cmp.i10.i, label %land.lhs.true.i.i, label %for.body.i11.i.for.inc.i16.i_crit_edge

for.body.i11.i.for.inc.i16.i_crit_edge:           ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i16.i

land.lhs.true.i.i:                                ; preds = %for.body.i11.i
  %owner.i.i = getelementptr inbounds %struct.file_system_type, ptr %tmp.021.i9.i, i32 0, i32 6
  %9 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i.i, align 4
  %call.i12.i = tail call zeroext i1 @try_module_get(ptr noundef %10) #5
  br i1 %call.i12.i, label %if.end3.critedge.i.i, label %land.lhs.true.i.i.for.inc.i16.i_crit_edge

land.lhs.true.i.i.for.inc.i16.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i16.i

for.inc.i16.i:                                    ; preds = %land.lhs.true.i.i.for.inc.i16.i_crit_edge, %for.body.i11.i.for.inc.i16.i_crit_edge
  %next.i13.i = getelementptr inbounds %struct.file_system_type, ptr %tmp.021.i9.i, i32 0, i32 7
  %dec.i.i = add i32 %index.addr.020.i.i, -1
  %11 = ptrtoint ptr %next.i13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.0.i14.i = load ptr, ptr %next.i13.i, align 4
  %tobool.not.i15.i = icmp eq ptr %tmp.0.i14.i, null
  br i1 %tobool.not.i15.i, label %for.inc.i16.i.if.then2.critedge.i.i_crit_edge, label %for.inc.i16.i.for.body.i11.i_crit_edge

for.inc.i16.i.for.body.i11.i_crit_edge:           ; preds = %for.inc.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i11.i

for.inc.i16.i.if.then2.critedge.i.i_crit_edge:    ; preds = %for.inc.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2.critedge.i.i

if.then2.critedge.i.i:                            ; preds = %for.inc.i16.i.if.then2.critedge.i.i_crit_edge, %sw.bb2.i.if.then2.critedge.i.i_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %__do_sys_sysfs.exit

if.end3.critedge.i.i:                             ; preds = %land.lhs.true.i.i
  %owner.i.i.le = getelementptr inbounds %struct.file_system_type, ptr %tmp.021.i9.i, i32 0, i32 6
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  %12 = ptrtoint ptr %tmp.021.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmp.021.i9.i, align 4
  %call4.i.i = tail call i32 @strlen(ptr noundef %13) #9
  %add.i.i = add i32 %call4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end3.critedge.i.i
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_to_user.exit.thread.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !68

land.rhs16.i.i.i.i.copy_to_user.exit.thread.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.thread.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %copy_to_user.exit.thread.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end3.critedge.i.i
  tail call void @__check_object_size(ptr noundef %13, i32 noundef %add.i.i, i1 noundef zeroext true) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #5
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %add.i.i, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef %add.i.i) #5
  %call.i12.i.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %13, i32 noundef %add.i.i) #5
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %add.i.i, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %add.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  %spec.select.i.i = select i1 %tobool7.not.i.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i.i

copy_to_user.exit.thread.i.i:                     ; preds = %copy_to_user.exit.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_to_user.exit.thread.i.i_crit_edge
  %15 = phi i32 [ -14, %if.then27.i.i.i.i ], [ -14, %land.rhs16.i.i.i.i.copy_to_user.exit.thread.i.i_crit_edge ], [ %spec.select.i.i, %copy_to_user.exit.i.i ]
  %16 = ptrtoint ptr %owner.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner.i.i.le, align 4
  tail call void @module_put(ptr noundef %17) #5
  br label %__do_sys_sysfs.exit

sw.bb4.i:                                         ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %tmp.03.i.i = load ptr, ptr @file_systems, align 4
  %tobool.not4.i.i = icmp eq ptr %tmp.03.i.i, null
  br i1 %tobool.not4.i.i, label %sw.bb4.i.fs_maxindex.exit.i_crit_edge, label %sw.bb4.i.for.inc.i22.i_crit_edge

sw.bb4.i.for.inc.i22.i_crit_edge:                 ; preds = %sw.bb4.i
  br label %for.inc.i22.i

sw.bb4.i.fs_maxindex.exit.i_crit_edge:            ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs_maxindex.exit.i

for.inc.i22.i:                                    ; preds = %for.inc.i22.i.for.inc.i22.i_crit_edge, %sw.bb4.i.for.inc.i22.i_crit_edge
  %tmp.06.i.i = phi ptr [ %tmp.0.i20.i, %for.inc.i22.i.for.inc.i22.i_crit_edge ], [ %tmp.03.i.i, %sw.bb4.i.for.inc.i22.i_crit_edge ]
  %index.05.i.i = phi i32 [ %inc.i19.i, %for.inc.i22.i.for.inc.i22.i_crit_edge ], [ 0, %sw.bb4.i.for.inc.i22.i_crit_edge ]
  %next.i18.i = getelementptr inbounds %struct.file_system_type, ptr %tmp.06.i.i, i32 0, i32 7
  %inc.i19.i = add i32 %index.05.i.i, 1
  %18 = ptrtoint ptr %next.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.0.i20.i = load ptr, ptr %next.i18.i, align 4
  %tobool.not.i21.i = icmp eq ptr %tmp.0.i20.i, null
  br i1 %tobool.not.i21.i, label %for.inc.i22.i.fs_maxindex.exit.i_crit_edge, label %for.inc.i22.i.for.inc.i22.i_crit_edge

for.inc.i22.i.for.inc.i22.i_crit_edge:            ; preds = %for.inc.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i22.i

for.inc.i22.i.fs_maxindex.exit.i_crit_edge:       ; preds = %for.inc.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs_maxindex.exit.i

fs_maxindex.exit.i:                               ; preds = %for.inc.i22.i.fs_maxindex.exit.i_crit_edge, %sw.bb4.i.fs_maxindex.exit.i_crit_edge
  %index.0.lcssa.i.i = phi i32 [ 0, %sw.bb4.i.fs_maxindex.exit.i_crit_edge ], [ %inc.i19.i, %for.inc.i22.i.fs_maxindex.exit.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %__do_sys_sysfs.exit

__do_sys_sysfs.exit:                              ; preds = %fs_maxindex.exit.i, %copy_to_user.exit.thread.i.i, %if.then2.critedge.i.i, %for.end.i.i, %sw.bb.i.__do_sys_sysfs.exit_crit_edge, %entry.__do_sys_sysfs.exit_crit_edge
  %retval1.0.i = phi i32 [ -22, %entry.__do_sys_sysfs.exit_crit_edge ], [ %index.0.lcssa.i.i, %fs_maxindex.exit.i ], [ %err.0.i.i, %for.end.i.i ], [ %2, %sw.bb.i.__do_sys_sysfs.exit_crit_edge ], [ %15, %copy_to_user.exit.thread.i.i ], [ -22, %if.then2.critedge.i.i ]
  ret i32 %retval1.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @list_bdev_fs_names(ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %p.018 = load ptr, ptr @file_systems, align 4
  %tobool.not19 = icmp eq ptr %p.018, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.023 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.018, %entry.for.body_crit_edge ]
  %buf.addr.022 = phi ptr [ %buf.addr.1, %for.inc.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %count.021 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size.addr.020 = phi i32 [ %size.addr.1, %for.inc.for.body_crit_edge ], [ %size, %entry.for.body_crit_edge ]
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %p.023, i32 0, i32 1
  %0 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %p.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.023, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #8
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.020, i32 %add)
  %cmp = icmp ult i32 %size.addr.020, %add
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %for.end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = call ptr @memcpy(ptr %buf.addr.022, ptr %3, i32 %add)
  %add.ptr = getelementptr i8, ptr %buf.addr.022, i32 %add
  %sub = sub i32 %size.addr.020, %add
  %inc = add i32 %count.021, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %size.addr.1 = phi i32 [ %sub, %if.end4 ], [ %size.addr.020, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %inc, %if.end4 ], [ %count.021, %for.body.for.inc_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.end4 ], [ %buf.addr.022, %for.body.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.file_system_type, ptr %p.023, i32 0, i32 7
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  %count.017 = phi i32 [ %count.021, %do.end ], [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  ret i32 %count.017
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_filesystems_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.18, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @filesystems_proc_show, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_fs_type(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %name, i32 noundef 46)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @strlen(ptr noundef %name) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub.ptr.sub, %cond.true ], [ %call1, %cond.false ]
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %0 = load ptr, ptr @file_systems, align 4
  %tobool.not9.i.i = icmp eq ptr %0, null
  br i1 %tobool.not9.i.i, label %cond.end.land.lhs.true_crit_edge, label %cond.end.for.body.i.i_crit_edge

cond.end.for.body.i.i_crit_edge:                  ; preds = %cond.end
  br label %for.body.i.i

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %cond.end.for.body.i.i_crit_edge
  %1 = phi ptr [ %7, %for.inc.i.i.for.body.i.i_crit_edge ], [ %0, %cond.end.for.body.i.i_crit_edge ]
  %p.010.i.i = phi ptr [ %next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ @file_systems, %cond.end.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @strncmp(ptr noundef %3, ptr noundef %name, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i.i, label %find_filesystem.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.file_system_type, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.land.lhs.true_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.land.lhs.true_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

find_filesystem.exit.i:                           ; preds = %land.lhs.true.i.i
  %8 = ptrtoint ptr %p.010.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i = load ptr, ptr %p.010.i.i, align 4
  %tobool.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i, label %find_filesystem.exit.i.land.lhs.true_crit_edge, label %land.lhs.true.i

find_filesystem.exit.i.land.lhs.true_crit_edge:   ; preds = %find_filesystem.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %find_filesystem.exit.i
  %owner.i = getelementptr inbounds %struct.file_system_type, ptr %.pr.i, i32 0, i32 6
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %10) #5
  br i1 %call1.i, label %__get_fs_type.exit, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

__get_fs_type.exit:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %if.end23

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %find_filesystem.exit.i.land.lhs.true_crit_edge, %for.inc.i.i.land.lhs.true_crit_edge, %cond.end.land.lhs.true_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef %cond, ptr noundef %name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %11 = load ptr, ptr @file_systems, align 4
  %tobool.not9.i.i49 = icmp eq ptr %11, null
  br i1 %tobool.not9.i.i49, label %if.then.land.end_crit_edge, label %if.then.for.body.i.i53_crit_edge

if.then.for.body.i.i53_crit_edge:                 ; preds = %if.then
  br label %for.body.i.i53

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

for.body.i.i53:                                   ; preds = %for.inc.i.i59.for.body.i.i53_crit_edge, %if.then.for.body.i.i53_crit_edge
  %12 = phi ptr [ %18, %for.inc.i.i59.for.body.i.i53_crit_edge ], [ %11, %if.then.for.body.i.i53_crit_edge ]
  %p.010.i.i50 = phi ptr [ %next.i.i57, %for.inc.i.i59.for.body.i.i53_crit_edge ], [ @file_systems, %if.then.for.body.i.i53_crit_edge ]
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i.i51 = tail call i32 @strncmp(ptr noundef %14, ptr noundef %name, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %cmp.i.i52, label %land.lhs.true.i.i56, label %for.body.i.i53.for.inc.i.i59_crit_edge

for.body.i.i53.for.inc.i.i59_crit_edge:           ; preds = %for.body.i.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i59

land.lhs.true.i.i56:                              ; preds = %for.body.i.i53
  %arrayidx.i.i54 = getelementptr i8, ptr %14, i32 %cond
  %15 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not.i.i55 = icmp eq i8 %16, 0
  br i1 %tobool3.not.i.i55, label %find_filesystem.exit.i62, label %land.lhs.true.i.i56.for.inc.i.i59_crit_edge

land.lhs.true.i.i56.for.inc.i.i59_crit_edge:      ; preds = %land.lhs.true.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i59

for.inc.i.i59:                                    ; preds = %land.lhs.true.i.i56.for.inc.i.i59_crit_edge, %for.body.i.i53.for.inc.i.i59_crit_edge
  %next.i.i57 = getelementptr inbounds %struct.file_system_type, ptr %12, i32 0, i32 7
  %17 = ptrtoint ptr %next.i.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next.i.i57, align 4
  %tobool.not.i.i58 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i58, label %for.inc.i.i59.land.end_crit_edge, label %for.inc.i.i59.for.body.i.i53_crit_edge

for.inc.i.i59.for.body.i.i53_crit_edge:           ; preds = %for.inc.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i53

for.inc.i.i59.land.end_crit_edge:                 ; preds = %for.inc.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

find_filesystem.exit.i62:                         ; preds = %land.lhs.true.i.i56
  %19 = ptrtoint ptr %p.010.i.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i60 = load ptr, ptr %p.010.i.i50, align 4
  %tobool.not.i61 = icmp eq ptr %.pr.i60, null
  br i1 %tobool.not.i61, label %find_filesystem.exit.i62.land.end_crit_edge, label %land.lhs.true.i66

find_filesystem.exit.i62.land.end_crit_edge:      ; preds = %find_filesystem.exit.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true.i66:                                ; preds = %find_filesystem.exit.i62
  %owner.i63 = getelementptr inbounds %struct.file_system_type, ptr %.pr.i60, i32 0, i32 6
  %20 = ptrtoint ptr %owner.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner.i63, align 4
  %call1.i64 = tail call zeroext i1 @try_module_get(ptr noundef %21) #5
  br i1 %call1.i64, label %__get_fs_type.exit68, label %land.lhs.true.i66.land.end_crit_edge

land.lhs.true.i66.land.end_crit_edge:             ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

__get_fs_type.exit68:                             ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  br label %if.end23

land.end:                                         ; preds = %land.lhs.true.i66.land.end_crit_edge, %find_filesystem.exit.i62.land.end_crit_edge, %for.inc.i.i59.land.end_crit_edge, %if.then.land.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  %.b48 = load i1, ptr @get_fs_type.__already_done, align 1
  br i1 %.b48, label %land.end.if.end23_crit_edge, label %if.then13, !prof !68

land.end.if.end23_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @get_fs_type.__already_done, align 1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %cond, ptr noundef %name) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %land.end.if.end23_crit_edge, %__get_fs_type.exit68, %land.lhs.true.if.end23_crit_edge, %__get_fs_type.exit
  %fs.0 = phi ptr [ %.pr.i, %__get_fs_type.exit ], [ %.pr.i60, %__get_fs_type.exit68 ], [ null, %land.lhs.true.if.end23_crit_edge ], [ null, %if.then13 ], [ null, %land.end.if.end23_crit_edge ]
  br i1 %tobool.not, label %if.end23.if.end30_crit_edge, label %land.lhs.true25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %tobool26.not = icmp eq ptr %fs.0, null
  br i1 %tobool26.not, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true27

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %fs.0, i32 0, i32 1
  %22 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs_flags, align 4
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true27.if.end30_crit_edge

land.lhs.true27.if.end30_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  %owner.i69 = getelementptr inbounds %struct.file_system_type, ptr %fs.0, i32 0, i32 6
  %24 = ptrtoint ptr %owner.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i69, align 4
  tail call void @module_put(ptr noundef %25) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true27.if.end30_crit_edge, %land.lhs.true25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %fs.1 = phi ptr [ %fs.0, %land.lhs.true27.if.end30_crit_edge ], [ null, %if.then29 ], [ null, %land.lhs.true25.if.end30_crit_edge ], [ %fs.0, %if.end23.if.end30_crit_edge ]
  ret ptr %fs.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filesystems_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @file_systems_lock) #5
  %tmp.05 = load ptr, ptr @file_systems, align 4
  %tobool.not6 = icmp eq ptr %tmp.05, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tmp.07 = phi ptr [ %tmp.0, %while.body.while.body_crit_edge ], [ %tmp.05, %entry.while.body_crit_edge ]
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %tmp.07, i32 0, i32 1
  %0 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, ptr @.str.21, ptr @.str.20
  %2 = ptrtoint ptr %tmp.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmp.07, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef %3) #5
  %next = getelementptr inbounds %struct.file_system_type, ptr %tmp.07, i32 0, i32 7
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @file_systems_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__ksymtab_register_filesystem, !1, !"__ksymtab_register_filesystem", i1 false, i1 false}
!1 = !{!"../fs/filesystems.c", i32 94, i32 1}
!2 = !{ptr @__ksymtab_unregister_filesystem, !3, !"__ksymtab_unregister_filesystem", i1 false, i1 false}
!3 = !{!"../fs/filesystems.c", i32 129, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/filesystems.c", i32 191, i32 1}
!6 = !{ptr @event_enter__sysfs, !5, !"event_enter__sysfs", i1 false, i1 false}
!7 = !{ptr @__event_enter__sysfs, !5, !"__event_enter__sysfs", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__sysfs, !5, !"event_exit__sysfs", i1 false, i1 false}
!10 = !{ptr @__event_exit__sysfs, !5, !"__event_exit__sysfs", i1 false, i1 false}
!11 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__sysfs, !5, !"__syscall_meta__sysfs", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__sysfs, !5, !"__p_syscall_meta__sysfs", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/filesystems.c", i32 224, i32 4}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @list_bdev_fs_names._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @list_bdev_fs_names._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_filesystems__253_258_proc_filesystems_init6, !21, !"__initcall__kmod_filesystems__253_258_proc_filesystems_init6", i1 false, i1 false}
!21 = !{!"../fs/filesystems.c", i32 258, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/filesystems.c", i32 280, i32 14}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/filesystems.c", i32 283, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @get_fs_type._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @get_fs_type._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_get_fs_type, !31, !"__ksymtab_get_fs_type", i1 false, i1 false}
!31 = !{!"../fs/filesystems.c", i32 294, i32 1}
!32 = !{ptr @file_systems, !33, !"file_systems", i1 false, i1 false}
!33 = !{!"../fs/filesystems.c", i32 34, i32 33}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/filesystems.c", i32 35, i32 8}
!36 = !{ptr @file_systems_lock, !35, !"file_systems_lock", i1 false, i1 false}
!37 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @types__sysfs, !5, !"types__sysfs", i1 false, i1 false}
!40 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @args__sysfs, !5, !"args__sysfs", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/filesystems.c", i32 255, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/filesystems.c", i32 244, i32 17}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/filesystems.c", i32 245, i32 40}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/filesystems.c", i32 245, i32 45}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2154904354, i64 2154904834, i64 2154904391, i64 2154904447, i64 2154904481, i64 2154904505, i64 2154904546, i64 2154904567, i64 2154904595, i64 2154904629}
!70 = !{i64 2152230533, i64 2152230558}
