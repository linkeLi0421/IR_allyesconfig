; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/core.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crashpoint = type { ptr, %struct.file_operations, %struct.kprobe }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.crashtype = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.check_cmdline_args = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_recur_count = internal constant [18 x i8] c"lkdtm.recur_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@recur_count = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_recur_count = internal constant %struct.kernel_param { ptr @__param_str_recur_count, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @recur_count } }, section "__param", align 4
@__UNIQUE_ID_recur_counttype257 = internal constant [31 x i8] c"lkdtm.parmtype=recur_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_recur_count258 = internal constant [68 x i8] c"lkdtm.parm=recur_count: Recursion level for the stack overflow test\00", section ".modinfo", align 1
@__param_str_cpoint_name = internal constant [18 x i8] c"lkdtm.cpoint_name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@cpoint_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_cpoint_name = internal constant %struct.kernel_param { ptr @__param_str_cpoint_name, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @cpoint_name } }, section "__param", align 4
@__UNIQUE_ID_cpoint_nametype259 = internal constant [33 x i8] c"lkdtm.parmtype=cpoint_name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_cpoint_name260 = internal constant [67 x i8] c"lkdtm.parm=cpoint_name: Crash Point, where kernel is to be crashed\00", section ".modinfo", align 1
@__param_str_cpoint_type = internal constant [18 x i8] c"lkdtm.cpoint_type\00", align 1
@cpoint_type = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_cpoint_type = internal constant %struct.kernel_param { ptr @__param_str_cpoint_type, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @cpoint_type } }, section "__param", align 4
@__UNIQUE_ID_cpoint_typetype261 = internal constant [33 x i8] c"lkdtm.parmtype=cpoint_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_cpoint_type262 = internal constant [88 x i8] c"lkdtm.parm=cpoint_type: Crash Point Type, action to be taken on hitting the crash point\00", section ".modinfo", align 1
@__param_str_cpoint_count = internal constant [19 x i8] c"lkdtm.cpoint_count\00", align 1
@cpoint_count = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_cpoint_count = internal constant %struct.kernel_param { ptr @__param_str_cpoint_count, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @cpoint_count } }, section "__param", align 4
@__UNIQUE_ID_cpoint_counttype263 = internal constant [32 x i8] c"lkdtm.parmtype=cpoint_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cpoint_count264 = internal constant [107 x i8] c"lkdtm.parm=cpoint_count: Crash Point Count, number of times the crash point is to be hit to trigger action\00", section ".modinfo", align 1
@saved_command_line = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Setting sysctl args\00", [44 x i8] zeroinitializer }, align 32
@lkdtm_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_kprobe = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_kernel_info = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_module_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lkdtm: Crash point unregistered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lkdtm_module_exit\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/misc/lkdtm/core.c\00", [38 x i8] zeroinitializer }, align 32
@lkdtm_module_exit._entry_ptr = internal global ptr @lkdtm_module_exit._entry, section ".printk_index", align 4
@__initcall__kmod_lkdtm__265_559_lkdtm_module_init6 = internal global ptr @lkdtm_module_init, section ".initcall6.init", align 4
@__exitcall_lkdtm_module_exit = internal global ptr @lkdtm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file266 = internal constant [36 x i8] c"lkdtm.file=drivers/misc/lkdtm/lkdtm\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [18 x i8] c"lkdtm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [46 x i8] c"lkdtm.description=Kernel crash testing module\00", section ".modinfo", align 1
@lkdtm_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013lkdtm: Need both cpoint_type and cpoint_name or neither\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lkdtm_module_init\00", [46 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr = internal global ptr @lkdtm_module_init._entry, section ".printk_index", align 4
@lkdtm_module_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013lkdtm: Unknown crashtype '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr.8 = internal global ptr @lkdtm_module_init._entry.6, section ".printk_index", align 4
@crashpoints = internal global { [8 x %struct.crashpoint], [416 x i8] } { [8 x %struct.crashpoint] [%struct.crashpoint { ptr @.str.104, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @direct_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.105, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.106, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.107, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.108, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.109, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.110, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.111, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.112, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.113, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.114, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.115, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.116, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }, %struct.crashpoint { ptr @.str.117, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lkdtm_debugfs_read, ptr @lkdtm_debugfs_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lkdtm_debugfs_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.118, i32 0, ptr @lkdtm_kprobe_handler, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 } }], [416 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013lkdtm: Invalid crashpoint %s\0A\00", [32 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr.11 = internal global ptr @lkdtm_module_init._entry.9, section ".printk_index", align 4
@crash_count = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel (%s %s)\00", [17 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"provoke-crash\00", [18 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016lkdtm: Invalid crashpoint %s\0A\00", [32 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr.16 = internal global ptr @lkdtm_module_init._entry.14, section ".printk_index", align 4
@lkdtm_module_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lkdtm: Crash point %s of type %s registered\0A\00", [49 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr.19 = internal global ptr @lkdtm_module_init._entry.17, section ".printk_index", align 4
@lkdtm_module_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.3, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016lkdtm: No crash points registered, enable through debugfs\0A\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_module_init._entry_ptr.22 = internal global ptr @lkdtm_module_init._entry.20, section ".printk_index", align 4
@crashtypes = internal constant { [81 x %struct.crashtype], [184 x i8] } { [81 x %struct.crashtype] [%struct.crashtype { ptr @.str.23, ptr @lkdtm_PANIC }, %struct.crashtype { ptr @.str.24, ptr @lkdtm_BUG }, %struct.crashtype { ptr @.str.25, ptr @lkdtm_WARNING }, %struct.crashtype { ptr @.str.26, ptr @lkdtm_WARNING_MESSAGE }, %struct.crashtype { ptr @.str.27, ptr @lkdtm_EXCEPTION }, %struct.crashtype { ptr @.str.28, ptr @lkdtm_LOOP }, %struct.crashtype { ptr @.str.29, ptr @lkdtm_EXHAUST_STACK }, %struct.crashtype { ptr @.str.30, ptr @lkdtm_CORRUPT_STACK }, %struct.crashtype { ptr @.str.31, ptr @lkdtm_CORRUPT_STACK_STRONG }, %struct.crashtype { ptr @.str.32, ptr @lkdtm_REPORT_STACK }, %struct.crashtype { ptr @.str.33, ptr @lkdtm_REPORT_STACK_CANARY }, %struct.crashtype { ptr @.str.34, ptr @lkdtm_CORRUPT_LIST_ADD }, %struct.crashtype { ptr @.str.35, ptr @lkdtm_CORRUPT_LIST_DEL }, %struct.crashtype { ptr @.str.36, ptr @lkdtm_STACK_GUARD_PAGE_LEADING }, %struct.crashtype { ptr @.str.37, ptr @lkdtm_STACK_GUARD_PAGE_TRAILING }, %struct.crashtype { ptr @.str.38, ptr @lkdtm_UNSET_SMEP }, %struct.crashtype { ptr @.str.39, ptr @lkdtm_CORRUPT_PAC }, %struct.crashtype { ptr @.str.40, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE }, %struct.crashtype { ptr @.str.41, ptr @lkdtm_SLAB_LINEAR_OVERFLOW }, %struct.crashtype { ptr @.str.42, ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW }, %struct.crashtype { ptr @.str.43, ptr @lkdtm_WRITE_AFTER_FREE }, %struct.crashtype { ptr @.str.44, ptr @lkdtm_READ_AFTER_FREE }, %struct.crashtype { ptr @.str.45, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE }, %struct.crashtype { ptr @.str.46, ptr @lkdtm_READ_BUDDY_AFTER_FREE }, %struct.crashtype { ptr @.str.47, ptr @lkdtm_SLAB_INIT_ON_ALLOC }, %struct.crashtype { ptr @.str.48, ptr @lkdtm_BUDDY_INIT_ON_ALLOC }, %struct.crashtype { ptr @.str.49, ptr @lkdtm_SLAB_FREE_DOUBLE }, %struct.crashtype { ptr @.str.50, ptr @lkdtm_SLAB_FREE_CROSS }, %struct.crashtype { ptr @.str.51, ptr @lkdtm_SLAB_FREE_PAGE }, %struct.crashtype { ptr @.str.52, ptr @lkdtm_SOFTLOCKUP }, %struct.crashtype { ptr @.str.53, ptr @lkdtm_HARDLOCKUP }, %struct.crashtype { ptr @.str.54, ptr @lkdtm_SPINLOCKUP }, %struct.crashtype { ptr @.str.55, ptr @lkdtm_HUNG_TASK }, %struct.crashtype { ptr @.str.56, ptr @lkdtm_OVERFLOW_SIGNED }, %struct.crashtype { ptr @.str.57, ptr @lkdtm_OVERFLOW_UNSIGNED }, %struct.crashtype { ptr @.str.58, ptr @lkdtm_ARRAY_BOUNDS }, %struct.crashtype { ptr @.str.59, ptr @lkdtm_EXEC_DATA }, %struct.crashtype { ptr @.str.60, ptr @lkdtm_EXEC_STACK }, %struct.crashtype { ptr @.str.61, ptr @lkdtm_EXEC_KMALLOC }, %struct.crashtype { ptr @.str.62, ptr @lkdtm_EXEC_VMALLOC }, %struct.crashtype { ptr @.str.63, ptr @lkdtm_EXEC_RODATA }, %struct.crashtype { ptr @.str.64, ptr @lkdtm_EXEC_USERSPACE }, %struct.crashtype { ptr @.str.65, ptr @lkdtm_EXEC_NULL }, %struct.crashtype { ptr @.str.66, ptr @lkdtm_ACCESS_USERSPACE }, %struct.crashtype { ptr @.str.67, ptr @lkdtm_ACCESS_NULL }, %struct.crashtype { ptr @.str.68, ptr @lkdtm_WRITE_RO }, %struct.crashtype { ptr @.str.69, ptr @lkdtm_WRITE_RO_AFTER_INIT }, %struct.crashtype { ptr @.str.70, ptr @lkdtm_WRITE_KERN }, %struct.crashtype { ptr @.str.71, ptr @lkdtm_REFCOUNT_INC_OVERFLOW }, %struct.crashtype { ptr @.str.72, ptr @lkdtm_REFCOUNT_ADD_OVERFLOW }, %struct.crashtype { ptr @.str.73, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW }, %struct.crashtype { ptr @.str.74, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW }, %struct.crashtype { ptr @.str.75, ptr @lkdtm_REFCOUNT_DEC_ZERO }, %struct.crashtype { ptr @.str.76, ptr @lkdtm_REFCOUNT_DEC_NEGATIVE }, %struct.crashtype { ptr @.str.77, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE }, %struct.crashtype { ptr @.str.78, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE }, %struct.crashtype { ptr @.str.79, ptr @lkdtm_REFCOUNT_INC_ZERO }, %struct.crashtype { ptr @.str.80, ptr @lkdtm_REFCOUNT_ADD_ZERO }, %struct.crashtype { ptr @.str.81, ptr @lkdtm_REFCOUNT_INC_SATURATED }, %struct.crashtype { ptr @.str.82, ptr @lkdtm_REFCOUNT_DEC_SATURATED }, %struct.crashtype { ptr @.str.83, ptr @lkdtm_REFCOUNT_ADD_SATURATED }, %struct.crashtype { ptr @.str.84, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED }, %struct.crashtype { ptr @.str.85, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED }, %struct.crashtype { ptr @.str.86, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED }, %struct.crashtype { ptr @.str.87, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED }, %struct.crashtype { ptr @.str.88, ptr @lkdtm_REFCOUNT_TIMING }, %struct.crashtype { ptr @.str.89, ptr @lkdtm_ATOMIC_TIMING }, %struct.crashtype { ptr @.str.90, ptr @lkdtm_USERCOPY_HEAP_SIZE_TO }, %struct.crashtype { ptr @.str.91, ptr @lkdtm_USERCOPY_HEAP_SIZE_FROM }, %struct.crashtype { ptr @.str.92, ptr @lkdtm_USERCOPY_HEAP_WHITELIST_TO }, %struct.crashtype { ptr @.str.93, ptr @lkdtm_USERCOPY_HEAP_WHITELIST_FROM }, %struct.crashtype { ptr @.str.94, ptr @lkdtm_USERCOPY_STACK_FRAME_TO }, %struct.crashtype { ptr @.str.95, ptr @lkdtm_USERCOPY_STACK_FRAME_FROM }, %struct.crashtype { ptr @.str.96, ptr @lkdtm_USERCOPY_STACK_BEYOND }, %struct.crashtype { ptr @.str.97, ptr @lkdtm_USERCOPY_KERNEL }, %struct.crashtype { ptr @.str.98, ptr @lkdtm_STACKLEAK_ERASING }, %struct.crashtype { ptr @.str.99, ptr @lkdtm_CFI_FORWARD_PROTO }, %struct.crashtype { ptr @.str.100, ptr @lkdtm_FORTIFIED_OBJECT }, %struct.crashtype { ptr @.str.101, ptr @lkdtm_FORTIFIED_SUBOBJECT }, %struct.crashtype { ptr @.str.102, ptr @lkdtm_FORTIFIED_STRSCPY }, %struct.crashtype { ptr @.str.103, ptr @lkdtm_DOUBLE_FAULT }], [184 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PANIC\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BUG\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WARNING\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WARNING_MESSAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXCEPTION\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOOP\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXHAUST_STACK\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CORRUPT_STACK\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CORRUPT_STACK_STRONG\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPORT_STACK\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPORT_STACK_CANARY\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CORRUPT_LIST_ADD\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CORRUPT_LIST_DEL\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"STACK_GUARD_PAGE_LEADING\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"STACK_GUARD_PAGE_TRAILING\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNSET_SMEP\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CORRUPT_PAC\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UNALIGNED_LOAD_STORE_WRITE\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SLAB_LINEAR_OVERFLOW\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VMALLOC_LINEAR_OVERFLOW\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WRITE_AFTER_FREE\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"READ_AFTER_FREE\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WRITE_BUDDY_AFTER_FREE\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"READ_BUDDY_AFTER_FREE\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SLAB_INIT_ON_ALLOC\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BUDDY_INIT_ON_ALLOC\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SLAB_FREE_DOUBLE\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SLAB_FREE_CROSS\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SLAB_FREE_PAGE\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOFTLOCKUP\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HARDLOCKUP\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPINLOCKUP\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HUNG_TASK\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OVERFLOW_SIGNED\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OVERFLOW_UNSIGNED\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ARRAY_BOUNDS\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXEC_DATA\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXEC_STACK\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EXEC_KMALLOC\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EXEC_VMALLOC\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EXEC_RODATA\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXEC_USERSPACE\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXEC_NULL\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ACCESS_USERSPACE\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACCESS_NULL\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WRITE_RO\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WRITE_RO_AFTER_INIT\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_KERN\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REFCOUNT_INC_OVERFLOW\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REFCOUNT_ADD_OVERFLOW\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REFCOUNT_INC_NOT_ZERO_OVERFLOW\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REFCOUNT_ADD_NOT_ZERO_OVERFLOW\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REFCOUNT_DEC_ZERO\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REFCOUNT_DEC_NEGATIVE\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REFCOUNT_DEC_AND_TEST_NEGATIVE\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REFCOUNT_SUB_AND_TEST_NEGATIVE\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REFCOUNT_INC_ZERO\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REFCOUNT_ADD_ZERO\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REFCOUNT_INC_SATURATED\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REFCOUNT_DEC_SATURATED\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REFCOUNT_ADD_SATURATED\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"REFCOUNT_INC_NOT_ZERO_SATURATED\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"REFCOUNT_ADD_NOT_ZERO_SATURATED\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"REFCOUNT_DEC_AND_TEST_SATURATED\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"REFCOUNT_SUB_AND_TEST_SATURATED\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REFCOUNT_TIMING\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATOMIC_TIMING\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USERCOPY_HEAP_SIZE_TO\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USERCOPY_HEAP_SIZE_FROM\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USERCOPY_HEAP_WHITELIST_TO\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USERCOPY_HEAP_WHITELIST_FROM\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USERCOPY_STACK_FRAME_TO\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USERCOPY_STACK_FRAME_FROM\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USERCOPY_STACK_BEYOND\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USERCOPY_KERNEL\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STACKLEAK_ERASING\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CFI_FORWARD_PROTO\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FORTIFIED_OBJECT\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FORTIFIED_SUBOBJECT\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FORTIFIED_STRSCPY\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DOUBLE_FAULT\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIRECT\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INT_HARDWARE_ENTRY\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"do_IRQ\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INT_HW_IRQ_EN\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_irq_event\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INT_TASKLET_ENTRY\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tasklet_action\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FS_DEVRW\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ll_rw_block\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MEM_SWAPOUT\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shrink_inactive_list\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TIMERADD\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hrtimer_start\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI_QUEUE_RQ\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scsi_queue_rq\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Available crash types:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@direct_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016lkdtm: Performing direct entry %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"direct_entry\00", [19 x i8] zeroinitializer }, align 32
@direct_entry._entry_ptr = internal global ptr @direct_entry._entry, section ".printk_index", align 4
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_crashpoint = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_crashtype = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@crash_count_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.128, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@lkdtm_kprobe_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016lkdtm: Crash point %s of type %s hit, trigger in %d rounds\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lkdtm_kprobe_handler\00", [43 x i8] zeroinitializer }, align 32
@lkdtm_kprobe_handler._entry_ptr = internal global ptr @lkdtm_kprobe_handler._entry, section ".printk_index", align 4
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crash_count_lock\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_register_cpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016lkdtm: Couldn't register kprobe %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_register_cpoint\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_register_cpoint._entry_ptr = internal global ptr @lkdtm_register_cpoint._entry, section ".printk_index", align 4
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"recur_count\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 197, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"cpoint_name\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 201, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"cpoint_type\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 205, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"cpoint_count\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 210, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 451, i32 13 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"lkdtm_debugfs_root\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 460, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"lkdtm_kprobe\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 192, i32 23 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"lkdtm_kernel_info\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 220, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 556, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 471, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 478, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"crashpoints\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 76, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 491, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"crash_count\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 277, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 502, i32 44 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 513, i32 42 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 527, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 530, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 533, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"crashtypes\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 103, i32 31 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 104, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 105, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 106, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 107, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 108, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 109, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 110, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 111, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 112, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 113, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 114, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 115, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 116, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 117, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 118, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 119, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 120, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 121, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 122, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 123, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 124, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 125, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 126, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 127, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 128, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 129, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 130, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 131, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 132, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 133, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 134, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 135, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 136, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 137, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 138, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 139, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 140, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 141, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 142, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 143, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 144, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 145, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 146, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 147, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 148, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 149, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 150, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 151, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 152, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 153, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 154, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 155, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 156, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 157, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 158, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 159, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 160, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 161, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 162, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 163, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 164, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 165, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 166, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 167, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 168, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 169, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 170, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 171, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 172, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 173, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 174, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 175, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 176, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 177, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 178, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 179, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 180, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 181, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 182, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 183, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 184, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 77, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 79, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 80, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 81, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 82, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 83, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 84, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 85, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 356, i32 32 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 358, i32 42 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 403, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 230, i32 6 }
@___asan_gen_.528 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 214, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 156, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"lkdtm_crashpoint\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 193, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant [16 x i8] c"lkdtm_crashtype\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 194, i32 32 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"crash_count_lock\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 291, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 278, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.561 = private constant [29 x i8] c"../drivers/misc/lkdtm/core.c\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.561, i32 265, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_cpoint_count264, ptr @__UNIQUE_ID_cpoint_counttype263, ptr @__UNIQUE_ID_cpoint_name260, ptr @__UNIQUE_ID_cpoint_nametype259, ptr @__UNIQUE_ID_cpoint_type262, ptr @__UNIQUE_ID_cpoint_typetype261, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__UNIQUE_ID_recur_count258, ptr @__UNIQUE_ID_recur_counttype257, ptr @__exitcall_lkdtm_module_exit, ptr @__initcall__kmod_lkdtm__265_559_lkdtm_module_init6, ptr @__param_cpoint_count, ptr @__param_cpoint_name, ptr @__param_cpoint_type, ptr @__param_recur_count, ptr @direct_entry._entry, ptr @direct_entry._entry_ptr, ptr @lkdtm_kprobe_handler._entry, ptr @lkdtm_kprobe_handler._entry_ptr, ptr @lkdtm_module_exit, ptr @lkdtm_module_exit._entry, ptr @lkdtm_module_exit._entry_ptr, ptr @lkdtm_module_init._entry, ptr @lkdtm_module_init._entry.14, ptr @lkdtm_module_init._entry.17, ptr @lkdtm_module_init._entry.20, ptr @lkdtm_module_init._entry.6, ptr @lkdtm_module_init._entry.9, ptr @lkdtm_module_init._entry_ptr, ptr @lkdtm_module_init._entry_ptr.11, ptr @lkdtm_module_init._entry_ptr.16, ptr @lkdtm_module_init._entry_ptr.19, ptr @lkdtm_module_init._entry_ptr.22, ptr @lkdtm_module_init._entry_ptr.8, ptr @lkdtm_register_cpoint._entry, ptr @lkdtm_register_cpoint._entry_ptr, ptr @recur_count, ptr @cpoint_name, ptr @cpoint_type, ptr @cpoint_count, ptr @.str, ptr @lkdtm_debugfs_root, ptr @lkdtm_kprobe, ptr @lkdtm_kernel_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @crashpoints, ptr @.str.10, ptr @crash_count, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @crashtypes, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @lkdtm_crashpoint, ptr @lkdtm_crashtype, ptr @crash_count_lock, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recur_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpoint_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpoint_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpoint_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_kprobe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_kernel_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crashpoints to i32), i32 1696, i32 2112, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_module_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crashtypes to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_crashpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_crashtype to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_count_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_kprobe_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_register_cpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lkdtm_check_bool_cmdline(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.check_cmdline_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct.check_cmdline_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %param, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -3, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saved_command_line to i32))
  %3 = load ptr, ptr @saved_command_line, align 4
  %call = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call ptr @parse_args(ptr noundef nonnull @.str, ptr noundef nonnull %call, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef nonnull %args, ptr noundef nonnull @lkdtm_parse_one) #9
  call void @kfree(ptr noundef nonnull %call) #9
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkdtm_parse_one(ptr nocapture noundef readonly %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %bool_result = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.check_cmdline_args, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %1)
  %cmp.not = icmp eq i32 %1, -3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #12
  %call3 = tail call i32 @strncmp(ptr noundef %param, ptr noundef %3, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bool_result) #9
  %4 = ptrtoint ptr %bool_result to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %bool_result, align 1, !annotation !318
  %call6 = call i32 @kstrtobool(ptr noundef %val, ptr noundef nonnull %bool_result) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bool_result to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bool_result, align 1, !range !319
  %7 = zext i8 %6 to i32
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bool_result) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lkdtm_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @lkdtm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  tail call void @lkdtm_heap_exit() #13
  tail call void @lkdtm_usercopy_exit() #13
  %1 = load ptr, ptr @lkdtm_kprobe, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_kprobe(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @lkdtm_kernel_info, align 4
  tail call void @kfree(ptr noundef %2) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_heap_exit() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_usercopy_exit() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lkdtm_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpoint_type, align 4
  %tobool.not = icmp eq ptr %0, null
  %1 = load ptr, ptr @cpoint_name, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true3

lor.lhs.false:                                    ; preds = %entry
  br i1 %tobool1.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true3:                                   ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true3.for.body.i_crit_edge

land.lhs.true3.for.body.i_crit_edge:              ; preds = %land.lhs.true3
  br label %for.body.i

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.lhs.true3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 81
  br i1 %exitcond.not.i, label %for.cond.i.do.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %land.lhs.true3.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %land.lhs.true3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [81 x %struct.crashtype], ptr @crashtypes, i32 0, i32 %i.06.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %find_crashtype.exit, label %for.cond.i

find_crashtype.exit:                              ; preds = %for.body.i
  %tobool8.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool8.not, label %find_crashtype.exit.do.end12_crit_edge, label %if.end16

find_crashtype.exit.do.end12_crit_edge:           ; preds = %find_crashtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12:                                         ; preds = %find_crashtype.exit.do.end12_crit_edge, %for.cond.i.do.end12_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %0) #13
  br label %cleanup

if.end16:                                         ; preds = %find_crashtype.exit
  %.pr = load ptr, ptr @cpoint_name, align 4
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.end16.if.end32_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %crashpoint.097 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %if.end16.for.body_crit_edge ]
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.crashpoint], ptr @crashpoints, i32 0, i32 %i.096
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @strcmp(ptr noundef nonnull %.pr, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %spec.select = select i1 %tobool20.not, ptr %arrayidx, ptr %crashpoint.097
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool24.not = icmp eq ptr %spec.select, null
  br i1 %tobool24.not, label %do.end28, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %.pr) #13
  br label %cleanup

if.end32:                                         ; preds = %for.end.if.end32_crit_edge, %if.end16.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %crashtype.092 = phi ptr [ %arrayidx.i, %for.end.if.end32_crit_edge ], [ %arrayidx.i, %if.end16.if.end32_crit_edge ], [ null, %lor.lhs.false.if.end32_crit_edge ]
  %crashpoint.2 = phi ptr [ %spec.select, %for.end.if.end32_crit_edge ], [ null, %if.end16.if.end32_crit_edge ], [ null, %lor.lhs.false.if.end32_crit_edge ]
  %6 = load i32, ptr @cpoint_count, align 4
  store i32 %6, ptr @crash_count, align 4
  %call33 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4)) #9
  store ptr %call33, ptr @lkdtm_kernel_info, align 4
  tail call void @lkdtm_bugs_init(ptr noundef nonnull @recur_count) #13
  tail call void @lkdtm_perms_init() #13
  tail call void @lkdtm_usercopy_init() #13
  tail call void @lkdtm_heap_init() #13
  %call34 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.13, ptr noundef null) #9
  store ptr %call34, ptr @lkdtm_debugfs_root, align 4
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %if.end32
  %i.198 = phi i32 [ 0, %if.end32 ], [ %inc42, %for.body37.for.body37_crit_edge ]
  %arrayidx38 = getelementptr [8 x %struct.crashpoint], ptr @crashpoints, i32 0, i32 %i.198
  %7 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx38, align 4
  %9 = load ptr, ptr @lkdtm_debugfs_root, align 4
  %fops = getelementptr [8 x %struct.crashpoint], ptr @crashpoints, i32 0, i32 %i.198, i32 1
  %call40 = tail call ptr @debugfs_create_file(ptr noundef %8, i16 noundef zeroext 420, ptr noundef %9, ptr noundef %arrayidx38, ptr noundef %fops) #9
  %inc42 = add nuw nsw i32 %i.198, 1
  %exitcond100.not = icmp eq i32 %inc42, 8
  br i1 %exitcond100.not, label %for.end43, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

for.end43:                                        ; preds = %for.body37
  %tobool44.not = icmp eq ptr %crashpoint.2, null
  br i1 %tobool44.not, label %do.end64, label %if.then45

if.then45:                                        ; preds = %for.end43
  %kprobe.i = getelementptr inbounds %struct.crashpoint, ptr %crashpoint.2, i32 0, i32 2
  %symbol_name.i = getelementptr inbounds %struct.crashpoint, ptr %crashpoint.2, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %symbol_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %symbol_name.i, align 4
  %tobool.not.i85 = icmp eq ptr %11, null
  br i1 %tobool.not.i85, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @lkdtm_do_action(ptr noundef %crashtype.092) #9
  br label %do.end58

if.end.i:                                         ; preds = %if.then45
  %12 = load ptr, ptr @lkdtm_kprobe, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_kprobe(ptr noundef nonnull %12) #9
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  store ptr %crashpoint.2, ptr @lkdtm_crashpoint, align 4
  store ptr %crashtype.092, ptr @lkdtm_crashtype, align 4
  store ptr %kprobe.i, ptr @lkdtm_kprobe, align 4
  %call.i86 = tail call i32 @register_kprobe(ptr noundef %kprobe.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp4.i = icmp slt i32 %call.i86, 0
  br i1 %cmp4.i, label %do.end51, label %if.end2.i.do.end58_crit_edge

if.end2.i.do.end58_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.end51:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %symbol_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %symbol_name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %14) #13
  store ptr null, ptr @lkdtm_kprobe, align 4
  store ptr null, ptr @lkdtm_crashpoint, align 4
  store ptr null, ptr @lkdtm_crashtype, align 4
  %15 = ptrtoint ptr %crashpoint.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crashpoint.2, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %16) #13
  %17 = load ptr, ptr @lkdtm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %17) #9
  br label %cleanup

do.end58:                                         ; preds = %if.end2.i.do.end58_crit_edge, %if.then.i
  %18 = ptrtoint ptr %crashpoint.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crashpoint.2, align 4
  %20 = load ptr, ptr @cpoint_type, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %19, ptr noundef %20) #13
  br label %cleanup

do.end64:                                         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end58, %do.end51, %do.end28, %do.end12, %do.end
  %retval.0 = phi i32 [ %call.i86, %do.end51 ], [ -22, %do.end28 ], [ -22, %do.end12 ], [ -22, %do.end ], [ 0, %do.end64 ], [ 0, %do.end58 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_bugs_init(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_perms_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_usercopy_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lkdtm_heap_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_PANIC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_BUG() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WARNING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WARNING_MESSAGE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXCEPTION() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_LOOP() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXHAUST_STACK() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CORRUPT_STACK() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CORRUPT_STACK_STRONG() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REPORT_STACK() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REPORT_STACK_CANARY() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CORRUPT_LIST_ADD() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CORRUPT_LIST_DEL() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_STACK_GUARD_PAGE_LEADING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_STACK_GUARD_PAGE_TRAILING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_UNSET_SMEP() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CORRUPT_PAC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_UNALIGNED_LOAD_STORE_WRITE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SLAB_LINEAR_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_VMALLOC_LINEAR_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WRITE_AFTER_FREE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_READ_AFTER_FREE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WRITE_BUDDY_AFTER_FREE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_READ_BUDDY_AFTER_FREE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SLAB_INIT_ON_ALLOC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_BUDDY_INIT_ON_ALLOC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SLAB_FREE_DOUBLE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SLAB_FREE_CROSS() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SLAB_FREE_PAGE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SOFTLOCKUP() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_HARDLOCKUP() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_SPINLOCKUP() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_HUNG_TASK() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_OVERFLOW_SIGNED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_OVERFLOW_UNSIGNED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_ARRAY_BOUNDS() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_DATA() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_STACK() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_KMALLOC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_VMALLOC() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_RODATA() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_USERSPACE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_EXEC_NULL() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_ACCESS_USERSPACE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_ACCESS_NULL() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WRITE_RO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WRITE_RO_AFTER_INIT() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_WRITE_KERN() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_INC_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_ADD_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_DEC_ZERO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_DEC_NEGATIVE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_INC_ZERO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_ADD_ZERO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_INC_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_DEC_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_ADD_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_REFCOUNT_TIMING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_ATOMIC_TIMING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_HEAP_SIZE_TO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_HEAP_SIZE_FROM() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_HEAP_WHITELIST_TO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_HEAP_WHITELIST_FROM() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_STACK_FRAME_TO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_STACK_FRAME_FROM() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_STACK_BEYOND() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_USERCOPY_KERNEL() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_STACKLEAK_ERASING() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_CFI_FORWARD_PROTO() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_FORTIFIED_OBJECT() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_FORTIFIED_SUBOBJECT() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_FORTIFIED_STRSCPY() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lkdtm_DOUBLE_FAULT() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkdtm_debugfs_read(ptr nocapture noundef readnone %f, ptr noundef %user_buf, i32 noundef %count, ptr noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %0, i32 noundef 4096, ptr noundef nonnull @.str.119) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %n.021 = phi i32 [ %call1, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %i.020 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %0, i32 %n.021
  %sub = sub i32 4096, %n.021
  %arrayidx = getelementptr [81 x %struct.crashtype], ptr @crashtypes, i32 0, i32 %i.020
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.120, ptr noundef %2) #9
  %add = add i32 %call3, %n.021
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 81
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr i8, ptr %0, i32 %add
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx4, align 1
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %off, ptr noundef nonnull %0, i32 noundef %add) #9
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direct_entry(ptr nocapture noundef readnone %f, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %count, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %0)
  %1 = icmp ult i32 %0, -4095
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then.i.i.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end3
  tail call void @__check_object_size(ptr noundef nonnull %2, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.125, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #15, !srcloc !320
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !321

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef %count) #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !308) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !322
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %user_buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !321

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i32 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i32)
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr i8, ptr %2, i32 %count
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %call10 = tail call ptr @strim(ptr noundef nonnull %2) #9
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 81
  br i1 %exitcond.not.i, label %find_crashtype.exit.thread, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

find_crashtype.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end9
  %i.06.i = phi i32 [ 0, %if.end9 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [81 x %struct.crashtype], ptr @crashtypes, i32 0, i32 %i.06.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %find_crashtype.exit, label %for.cond.i

find_crashtype.exit:                              ; preds = %for.body.i
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  %tobool12.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool12.not, label %find_crashtype.exit.cleanup_crit_edge, label %do.end

find_crashtype.exit.cleanup_crit_edge:            ; preds = %find_crashtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %find_crashtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %12) #13
  tail call fastcc void @lkdtm_do_action(ptr noundef nonnull %arrayidx.i)
  %conv = zext i32 %count to i64
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %off, align 8
  %add = add i64 %14, %conv
  store i64 %add, ptr %off, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %find_crashtype.exit.cleanup_crit_edge, %find_crashtype.exit.thread, %if.then11.i.i, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %count, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %find_crashtype.exit.cleanup_crit_edge ], [ -22, %find_crashtype.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lkdtm_debugfs_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkdtm_kprobe_handler(ptr nocapture noundef readnone %kp, ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lkdtm_crashpoint, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr @lkdtm_crashtype, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %do.body26, !prof !325

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 286, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body26:                                        ; preds = %lor.rhs
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @crash_count_lock) #9
  %2 = load i32, ptr @crash_count, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @crash_count, align 4
  %3 = load ptr, ptr @lkdtm_crashpoint, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr @lkdtm_crashtype, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %5, ptr noundef %8, i32 noundef %dec) #13
  %9 = load i32, ptr @crash_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp39 = icmp eq i32 %9, 0
  br i1 %cmp39, label %if.then41, label %if.end45.critedge

if.then41:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load i32, ptr @cpoint_count, align 4
  store i32 %10, ptr @crash_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @crash_count_lock, i32 noundef %call28) #9
  %11 = load ptr, ptr @lkdtm_crashtype, align 4
  tail call fastcc void @lkdtm_do_action(ptr noundef %11)
  br label %cleanup

if.end45.critedge:                                ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @crash_count_lock, i32 noundef %call28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45.critedge, %if.then41, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkdtm_debugfs_entry(ptr nocapture noundef readonly %f, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp = icmp ugt i32 %count, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %4 = inttoptr i32 %call1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %4, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.125, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #15, !srcloc !320
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !321

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef %count) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !308) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !322
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %user_buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !321

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr i8, ptr %4, i32 %count
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call8 = tail call ptr @strim(ptr noundef nonnull %4) #9
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 81
  br i1 %exitcond.not.i, label %find_crashtype.exit.thread, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

find_crashtype.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end7
  %i.06.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [81 x %struct.crashtype], ptr @crashtypes, i32 0, i32 %i.06.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %find_crashtype.exit, label %for.cond.i

find_crashtype.exit:                              ; preds = %for.body.i
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #9
  %tobool10.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool10.not, label %find_crashtype.exit.cleanup_crit_edge, label %if.end12

find_crashtype.exit.cleanup_crit_edge:            ; preds = %find_crashtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %find_crashtype.exit
  %kprobe.i = getelementptr inbounds %struct.crashpoint, ptr %3, i32 0, i32 2
  %symbol_name.i = getelementptr inbounds %struct.crashpoint, ptr %3, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %symbol_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %symbol_name.i, align 4
  %tobool.not.i32 = icmp eq ptr %14, null
  br i1 %tobool.not.i32, label %if.then.i33, label %if.end.i

if.then.i33:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @lkdtm_do_action(ptr noundef nonnull %arrayidx.i) #9
  br label %if.end16

if.end.i:                                         ; preds = %if.end12
  %15 = load ptr, ptr @lkdtm_kprobe, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_kprobe(ptr noundef nonnull %15) #9
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  store ptr %3, ptr @lkdtm_crashpoint, align 4
  store ptr %arrayidx.i, ptr @lkdtm_crashtype, align 4
  store ptr %kprobe.i, ptr @lkdtm_kprobe, align 4
  %call.i34 = tail call i32 @register_kprobe(ptr noundef %kprobe.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp4.i = icmp slt i32 %call.i34, 0
  br i1 %cmp4.i, label %lkdtm_register_cpoint.exit, label %if.end2.i.if.end16_crit_edge

if.end2.i.if.end16_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

lkdtm_register_cpoint.exit:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %symbol_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %symbol_name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %17) #13
  store ptr null, ptr @lkdtm_kprobe, align 4
  store ptr null, ptr @lkdtm_crashpoint, align 4
  store ptr null, ptr @lkdtm_crashtype, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end2.i.if.end16_crit_edge, %if.then.i33
  %conv = zext i32 %count to i64
  %18 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %off, align 8
  %add = add i64 %19, %conv
  store i64 %add, ptr %off, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lkdtm_register_cpoint.exit, %find_crashtype.exit.cleanup_crit_edge, %find_crashtype.exit.thread, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %count, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %find_crashtype.exit.cleanup_crit_edge ], [ %call.i34, %lkdtm_register_cpoint.exit ], [ -22, %find_crashtype.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lkdtm_do_action(ptr noundef readonly %crashtype) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crashtype, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %func = getelementptr inbounds %struct.crashtype, ptr %crashtype, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24.critedge, !prof !325

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end24.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %1() #9
  br label %return

return:                                           ; preds = %if.end24.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !275, !277, !279, !280, !281, !282, !284, !285, !287, !289, !291, !292, !293, !294, !296, !298, !300, !301, !303, !305, !306, !307}
!llvm.named.register.sp = !{!308}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @__param_recur_count, !1, !"__param_recur_count", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/core.c", i32 198, i32 1}
!2 = !{ptr @__UNIQUE_ID_recur_counttype257, !1, !"__UNIQUE_ID_recur_counttype257", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_recur_count258, !4, !"__UNIQUE_ID_recur_count258", i1 false, i1 false}
!4 = !{!"../drivers/misc/lkdtm/core.c", i32 199, i32 1}
!5 = !{ptr @__param_cpoint_name, !6, !"__param_cpoint_name", i1 false, i1 false}
!6 = !{!"../drivers/misc/lkdtm/core.c", i32 202, i32 1}
!7 = !{ptr @__UNIQUE_ID_cpoint_nametype259, !6, !"__UNIQUE_ID_cpoint_nametype259", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_cpoint_name260, !9, !"__UNIQUE_ID_cpoint_name260", i1 false, i1 false}
!9 = !{!"../drivers/misc/lkdtm/core.c", i32 203, i32 1}
!10 = !{ptr @__param_cpoint_type, !11, !"__param_cpoint_type", i1 false, i1 false}
!11 = !{!"../drivers/misc/lkdtm/core.c", i32 206, i32 1}
!12 = !{ptr @__UNIQUE_ID_cpoint_typetype261, !11, !"__UNIQUE_ID_cpoint_typetype261", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_cpoint_type262, !14, !"__UNIQUE_ID_cpoint_type262", i1 false, i1 false}
!14 = !{!"../drivers/misc/lkdtm/core.c", i32 207, i32 1}
!15 = !{ptr @__param_cpoint_count, !16, !"__param_cpoint_count", i1 false, i1 false}
!16 = !{!"../drivers/misc/lkdtm/core.c", i32 211, i32 1}
!17 = !{ptr @__UNIQUE_ID_cpoint_counttype263, !16, !"__UNIQUE_ID_cpoint_counttype263", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_cpoint_count264, !19, !"__UNIQUE_ID_cpoint_count264", i1 false, i1 false}
!19 = !{!"../drivers/misc/lkdtm/core.c", i32 212, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/lkdtm/core.c", i32 451, i32 13}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/lkdtm/core.c", i32 556, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lkdtm_module_exit._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @lkdtm_module_exit._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_lkdtm__265_559_lkdtm_module_init6, !29, !"__initcall__kmod_lkdtm__265_559_lkdtm_module_init6", i1 false, i1 false}
!29 = !{!"../drivers/misc/lkdtm/core.c", i32 559, i32 1}
!30 = !{ptr @__exitcall_lkdtm_module_exit, !31, !"__exitcall_lkdtm_module_exit", i1 false, i1 false}
!31 = !{!"../drivers/misc/lkdtm/core.c", i32 560, i32 1}
!32 = !{ptr @__UNIQUE_ID_file266, !33, !"__UNIQUE_ID_file266", i1 false, i1 false}
!33 = !{!"../drivers/misc/lkdtm/core.c", i32 562, i32 1}
!34 = !{ptr @__UNIQUE_ID_license267, !33, !"__UNIQUE_ID_license267", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_description268, !36, !"__UNIQUE_ID_description268", i1 false, i1 false}
!36 = !{!"../drivers/misc/lkdtm/core.c", i32 563, i32 1}
!37 = !{ptr @lkdtm_kprobe, !38, !"lkdtm_kprobe", i1 false, i1 false}
!38 = !{!"../drivers/misc/lkdtm/core.c", i32 192, i32 23}
!39 = !{ptr @cpoint_name, !40, !"cpoint_name", i1 false, i1 false}
!40 = !{!"../drivers/misc/lkdtm/core.c", i32 201, i32 14}
!41 = !{ptr @cpoint_type, !42, !"cpoint_type", i1 false, i1 false}
!42 = !{!"../drivers/misc/lkdtm/core.c", i32 205, i32 14}
!43 = !{ptr @lkdtm_kernel_info, !44, !"lkdtm_kernel_info", i1 false, i1 false}
!44 = !{!"../drivers/misc/lkdtm/core.c", i32 220, i32 7}
!45 = !{ptr @lkdtm_debugfs_root, !46, !"lkdtm_debugfs_root", i1 false, i1 false}
!46 = !{!"../drivers/misc/lkdtm/core.c", i32 460, i32 23}
!47 = !{ptr @__param_str_recur_count, !1, !"__param_str_recur_count", i1 false, i1 false}
!48 = !{ptr @recur_count, !49, !"recur_count", i1 false, i1 false}
!49 = !{!"../drivers/misc/lkdtm/core.c", i32 197, i32 12}
!50 = !{ptr @__param_str_cpoint_name, !6, !"__param_str_cpoint_name", i1 false, i1 false}
!51 = !{ptr @__param_str_cpoint_type, !11, !"__param_str_cpoint_type", i1 false, i1 false}
!52 = !{ptr @__param_str_cpoint_count, !16, !"__param_str_cpoint_count", i1 false, i1 false}
!53 = !{ptr @cpoint_count, !54, !"cpoint_count", i1 false, i1 false}
!54 = !{!"../drivers/misc/lkdtm/core.c", i32 210, i32 12}
!55 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/lkdtm/core.c", i32 471, i32 3}
!57 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lkdtm_module_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @lkdtm_module_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/lkdtm/core.c", i32 478, i32 4}
!62 = !{ptr @lkdtm_module_init._entry.6, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lkdtm_module_init._entry_ptr.8, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/lkdtm/core.c", i32 491, i32 4}
!66 = !{ptr @lkdtm_module_init._entry.9, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lkdtm_module_init._entry_ptr.11, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/lkdtm/core.c", i32 502, i32 44}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/lkdtm/core.c", i32 513, i32 42}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/lkdtm/core.c", i32 527, i32 4}
!74 = !{ptr @lkdtm_module_init._entry.14, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lkdtm_module_init._entry_ptr.16, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/lkdtm/core.c", i32 530, i32 3}
!78 = !{ptr @lkdtm_module_init._entry.17, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lkdtm_module_init._entry_ptr.19, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/lkdtm/core.c", i32 533, i32 3}
!82 = !{ptr @lkdtm_module_init._entry.20, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lkdtm_module_init._entry_ptr.22, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/lkdtm/core.c", i32 104, i32 2}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/lkdtm/core.c", i32 105, i32 2}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/lkdtm/core.c", i32 106, i32 2}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/lkdtm/core.c", i32 107, i32 2}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/lkdtm/core.c", i32 108, i32 2}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/lkdtm/core.c", i32 109, i32 2}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/lkdtm/core.c", i32 110, i32 2}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/lkdtm/core.c", i32 111, i32 2}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/lkdtm/core.c", i32 112, i32 2}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/lkdtm/core.c", i32 113, i32 2}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/lkdtm/core.c", i32 114, i32 2}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/lkdtm/core.c", i32 115, i32 2}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/lkdtm/core.c", i32 116, i32 2}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/misc/lkdtm/core.c", i32 117, i32 2}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/lkdtm/core.c", i32 118, i32 2}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/lkdtm/core.c", i32 119, i32 2}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/lkdtm/core.c", i32 120, i32 2}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/lkdtm/core.c", i32 121, i32 2}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/lkdtm/core.c", i32 122, i32 2}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/misc/lkdtm/core.c", i32 123, i32 2}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/misc/lkdtm/core.c", i32 124, i32 2}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/lkdtm/core.c", i32 125, i32 2}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/misc/lkdtm/core.c", i32 126, i32 2}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/lkdtm/core.c", i32 127, i32 2}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/lkdtm/core.c", i32 128, i32 2}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/lkdtm/core.c", i32 129, i32 2}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/misc/lkdtm/core.c", i32 130, i32 2}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/lkdtm/core.c", i32 131, i32 2}
!140 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/lkdtm/core.c", i32 132, i32 2}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/lkdtm/core.c", i32 133, i32 2}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/misc/lkdtm/core.c", i32 134, i32 2}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/misc/lkdtm/core.c", i32 135, i32 2}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/misc/lkdtm/core.c", i32 136, i32 2}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/misc/lkdtm/core.c", i32 137, i32 2}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/misc/lkdtm/core.c", i32 138, i32 2}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/misc/lkdtm/core.c", i32 139, i32 2}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/misc/lkdtm/core.c", i32 140, i32 2}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/misc/lkdtm/core.c", i32 141, i32 2}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/misc/lkdtm/core.c", i32 142, i32 2}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/lkdtm/core.c", i32 143, i32 2}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/misc/lkdtm/core.c", i32 144, i32 2}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/misc/lkdtm/core.c", i32 145, i32 2}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/misc/lkdtm/core.c", i32 146, i32 2}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/misc/lkdtm/core.c", i32 147, i32 2}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/misc/lkdtm/core.c", i32 148, i32 2}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/misc/lkdtm/core.c", i32 149, i32 2}
!176 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/lkdtm/core.c", i32 150, i32 2}
!178 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/misc/lkdtm/core.c", i32 151, i32 2}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/misc/lkdtm/core.c", i32 152, i32 2}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/misc/lkdtm/core.c", i32 153, i32 2}
!184 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/misc/lkdtm/core.c", i32 154, i32 2}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/misc/lkdtm/core.c", i32 155, i32 2}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/misc/lkdtm/core.c", i32 156, i32 2}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/misc/lkdtm/core.c", i32 157, i32 2}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/misc/lkdtm/core.c", i32 158, i32 2}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/misc/lkdtm/core.c", i32 159, i32 2}
!196 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/lkdtm/core.c", i32 160, i32 2}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/misc/lkdtm/core.c", i32 161, i32 2}
!200 = !{ptr @.str.81, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/misc/lkdtm/core.c", i32 162, i32 2}
!202 = !{ptr @.str.82, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/misc/lkdtm/core.c", i32 163, i32 2}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/misc/lkdtm/core.c", i32 164, i32 2}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/lkdtm/core.c", i32 165, i32 2}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/misc/lkdtm/core.c", i32 166, i32 2}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/misc/lkdtm/core.c", i32 167, i32 2}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/misc/lkdtm/core.c", i32 168, i32 2}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/misc/lkdtm/core.c", i32 169, i32 2}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/misc/lkdtm/core.c", i32 170, i32 2}
!218 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/misc/lkdtm/core.c", i32 171, i32 2}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/misc/lkdtm/core.c", i32 172, i32 2}
!222 = !{ptr @.str.92, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/misc/lkdtm/core.c", i32 173, i32 2}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/misc/lkdtm/core.c", i32 174, i32 2}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/misc/lkdtm/core.c", i32 175, i32 2}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/misc/lkdtm/core.c", i32 176, i32 2}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/misc/lkdtm/core.c", i32 177, i32 2}
!232 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/misc/lkdtm/core.c", i32 178, i32 2}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/misc/lkdtm/core.c", i32 179, i32 2}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/misc/lkdtm/core.c", i32 180, i32 2}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/misc/lkdtm/core.c", i32 181, i32 2}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/misc/lkdtm/core.c", i32 182, i32 2}
!242 = !{ptr @.str.102, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/misc/lkdtm/core.c", i32 183, i32 2}
!244 = !{ptr @.str.103, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/misc/lkdtm/core.c", i32 184, i32 2}
!246 = !{ptr @crashtypes, !247, !"crashtypes", i1 false, i1 false}
!247 = !{!"../drivers/misc/lkdtm/core.c", i32 103, i32 31}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/misc/lkdtm/core.c", i32 77, i32 2}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/misc/lkdtm/core.c", i32 79, i32 2}
!252 = !{ptr @.str.106, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/misc/lkdtm/core.c", i32 80, i32 2}
!255 = !{ptr @.str.108, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.109, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/misc/lkdtm/core.c", i32 81, i32 2}
!258 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/misc/lkdtm/core.c", i32 82, i32 2}
!261 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.113, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/misc/lkdtm/core.c", i32 83, i32 2}
!264 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/misc/lkdtm/core.c", i32 84, i32 2}
!267 = !{ptr @.str.116, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/misc/lkdtm/core.c", i32 85, i32 2}
!270 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @crashpoints, !272, !"crashpoints", i1 false, i1 false}
!272 = !{!"../drivers/misc/lkdtm/core.c", i32 76, i32 26}
!273 = !{ptr @.str.119, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/misc/lkdtm/core.c", i32 356, i32 32}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/misc/lkdtm/core.c", i32 358, i32 42}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/lkdtm/core.c", i32 403, i32 2}
!279 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @direct_entry._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @direct_entry._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = distinct !{null, !283, !"__already_done", i1 false, i1 false}
!283 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!284 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.124, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!287 = !{ptr @.str.125, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/misc/lkdtm/core.c", i32 291, i32 2}
!291 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @lkdtm_kprobe_handler._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @lkdtm_kprobe_handler._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @lkdtm_crashpoint, !295, !"lkdtm_crashpoint", i1 false, i1 false}
!295 = !{!"../drivers/misc/lkdtm/core.c", i32 193, i32 27}
!296 = !{ptr @lkdtm_crashtype, !297, !"lkdtm_crashtype", i1 false, i1 false}
!297 = !{!"../drivers/misc/lkdtm/core.c", i32 194, i32 32}
!298 = !{ptr @.str.128, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/misc/lkdtm/core.c", i32 278, i32 8}
!300 = !{ptr @crash_count_lock, !299, !"crash_count_lock", i1 false, i1 false}
!301 = !{ptr @crash_count, !302, !"crash_count", i1 false, i1 false}
!302 = !{!"../drivers/misc/lkdtm/core.c", i32 277, i32 12}
!303 = !{ptr @.str.129, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/misc/lkdtm/core.c", i32 265, i32 3}
!305 = !{ptr @.str.130, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @lkdtm_register_cpoint._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @lkdtm_register_cpoint._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{!"sp"}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{!"auto-init"}
!319 = !{i8 0, i8 2}
!320 = !{i64 2152183768, i64 2152183793}
!321 = !{!"branch_weights", i32 2000, i32 1}
!322 = !{i64 4679323}
!323 = !{i64 4679520}
!324 = !{i64 2152164753}
!325 = !{!"branch_weights", i32 1, i32 2000}
