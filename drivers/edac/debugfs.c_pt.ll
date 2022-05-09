; ModuleID = '/llk/IR_all_yes/drivers/edac/debugfs.c_pt.bc'
source_filename = "../drivers/edac/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_dir\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_dir\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_dir_at\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_dir_at\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_dir_at\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_dir_at:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_dir_at\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_dir_at:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_file\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_file\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_x8\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_x8\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_x8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_x8:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_x8\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_x8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_x16\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_x16\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_x16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_x16:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_x16\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_x16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_debugfs_create_x32\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debugfs_create_x32\09\09\09\09"
module asm "\09.long\09__crc_edac_debugfs_create_x32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debugfs_create_x32:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debugfs_create_x32\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debugfs_create_x32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edac\00", [27 x i8] zeroinitializer }, align 32
@edac_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fake_inject_%s\00", [17 x i8] zeroinitializer }, align 32
@edac_layer_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fake_inject_ue\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fake_inject_count\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fake_inject\00", [20 x i8] zeroinitializer }, align 32
@debug_fake_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @edac_fake_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_edac_debugfs_create_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_dir to i32), ptr @__kstrtab_edac_debugfs_create_dir, ptr @__kstrtabns_edac_debugfs_create_dir }, section "___ksymtab_gpl+edac_debugfs_create_dir", align 4
@__kstrtab_edac_debugfs_create_dir_at = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_dir_at = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_dir_at = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_dir_at to i32), ptr @__kstrtab_edac_debugfs_create_dir_at, ptr @__kstrtabns_edac_debugfs_create_dir_at }, section "___ksymtab_gpl+edac_debugfs_create_dir_at", align 4
@__kstrtab_edac_debugfs_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_file to i32), ptr @__kstrtab_edac_debugfs_create_file, ptr @__kstrtabns_edac_debugfs_create_file }, section "___ksymtab_gpl+edac_debugfs_create_file", align 4
@__kstrtab_edac_debugfs_create_x8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_x8 = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_x8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_x8 to i32), ptr @__kstrtab_edac_debugfs_create_x8, ptr @__kstrtabns_edac_debugfs_create_x8 }, section "___ksymtab_gpl+edac_debugfs_create_x8", align 4
@__kstrtab_edac_debugfs_create_x16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_x16 = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_x16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_x16 to i32), ptr @__kstrtab_edac_debugfs_create_x16, ptr @__kstrtabns_edac_debugfs_create_x16 }, section "___ksymtab_gpl+edac_debugfs_create_x16", align 4
@__kstrtab_edac_debugfs_create_x32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debugfs_create_x32 = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debugfs_create_x32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debugfs_create_x32 to i32), ptr @__kstrtab_edac_debugfs_create_x32, ptr @__kstrtabns_edac_debugfs_create_x32 }, section "___ksymtab_gpl+edac_debugfs_create_x32", align 4
@edac_fake_inject_write.type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@edac_fake_inject_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\017Generating %d %s fake error%s to %d.%d.%d to test core handling. NOTE: this won't test the driver-specific decoding logic.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"edac_fake_inject_write\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/edac/debugfs.c\00", [41 x i8] zeroinitializer }, align 32
@edac_fake_inject_write._entry_ptr = internal global ptr @edac_fake_inject_write._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UE\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CE\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FAKE ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"for EDAC testing only\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 47, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"edac_debugfs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 4, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 64, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 70, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 73, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 76, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"debug_fake_inject_fops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 39, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 12, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 21, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 34, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [26 x i8] c"../drivers/edac/debugfs.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 34, i32 23 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_edac_debugfs_create_dir, ptr @__ksymtab_edac_debugfs_create_dir_at, ptr @__ksymtab_edac_debugfs_create_file, ptr @__ksymtab_edac_debugfs_create_x16, ptr @__ksymtab_edac_debugfs_create_x32, ptr @__ksymtab_edac_debugfs_create_x8, ptr @edac_fake_inject_write._entry, ptr @edac_fake_inject_write._entry_ptr, ptr @.str, ptr @edac_debugfs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @debug_fake_inject_fops, ptr @edac_fake_inject_write.type, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_fake_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_fake_inject_write.type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_fake_inject_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_debugfs_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  store ptr %call, ptr @edac_debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_debugfs_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @edac_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_create_debugfs_nodes(ptr noundef %mci) local_unnamed_addr #2 align 64 {
entry:
  %name = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 80)
  %1 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mci, align 8
  %3 = load ptr, ptr @edac_debugfs, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %2, ptr noundef %3) #6
  %n_layers = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 17
  %4 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %layers = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layers, align 8
  %arrayidx = getelementptr %struct.edac_mc_layer, ptr %7, i32 %i.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.1, ptr noundef %11)
  %arrayidx5 = getelementptr %struct.mem_ctl_info, ptr %mci, i32 0, i32 38, i32 %i.023
  call void @debugfs_create_u8(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %call, ptr noundef %arrayidx5) #6
  %inc = add nuw i32 %i.023, 1
  %12 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_layers, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %fake_inject_ue = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 39
  call void @debugfs_create_bool(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %call, ptr noundef %fake_inject_ue) #6
  %fake_inject_count = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 40
  call void @debugfs_create_u16(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %call, ptr noundef %fake_inject_count) #6
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 128, ptr noundef %call, ptr noundef %mci, ptr noundef nonnull @debug_fake_inject_fops) #6
  %debugfs = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 37
  %14 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %debugfs, align 8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_debugfs_create_dir(ptr noundef %dirname) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @edac_debugfs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @debugfs_create_dir(ptr noundef %dirname, ptr noundef nonnull %0) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_debugfs_create_dir_at(ptr noundef %dirname, ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef %dirname, ptr noundef %parent) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_debugfs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @edac_debugfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %entry.if.end_crit_edge ], [ %0, %if.then ]
  %call = tail call ptr @debugfs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent.addr.0, ptr noundef %data, ptr noundef %fops) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_debugfs_create_x8(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @edac_debugfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %entry.if.end_crit_edge ], [ %0, %if.then ]
  tail call void @debugfs_create_x8(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent.addr.0, ptr noundef %value) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_debugfs_create_x16(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @edac_debugfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %entry.if.end_crit_edge ], [ %0, %if.then ]
  tail call void @debugfs_create_x16(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent.addr.0, ptr noundef %value) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_debugfs_create_x32(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @edac_debugfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %entry.if.end_crit_edge ], [ %0, %if.then ]
  tail call void @debugfs_create_x32(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent.addr.0, ptr noundef %value) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_fake_inject_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fake_inject_count = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %fake_inject_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fake_inject_count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %spec.store.select = select i1 %tobool.not, i16 1, i16 %3
  %fake_inject_ue = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %fake_inject_ue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fake_inject_ue, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %not.tobool1.not = xor i1 %tobool1.not, true
  %cond = zext i1 %not.tobool1.not to i32
  store i32 %cond, ptr @edac_fake_inject_write.type, align 4
  %conv = zext i16 %spec.store.select to i32
  %cond4 = select i1 %tobool1.not, ptr @.str.9, ptr @.str.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %spec.store.select)
  %cmp6 = icmp ugt i16 %spec.store.select, 1
  %cond8 = select i1 %cmp6, ptr @.str.10, ptr @.str.11
  %fake_inject_layer = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %fake_inject_layer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fake_inject_layer, align 4
  %conv9 = zext i8 %7 to i32
  %arrayidx11 = getelementptr %struct.mem_ctl_info, ptr %1, i32 0, i32 38, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %arrayidx14 = getelementptr %struct.mem_ctl_info, ptr %1, i32 0, i32 38, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 2
  %conv15 = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv, ptr noundef nonnull %cond4, ptr noundef nonnull %cond8, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15) #9
  %12 = load i32, ptr @edac_fake_inject_write.type, align 4
  %13 = ptrtoint ptr %fake_inject_layer to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fake_inject_layer, align 4
  %conv18 = zext i8 %14 to i32
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 1
  %conv21 = zext i8 %16 to i32
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 2
  %conv24 = zext i8 %18 to i32
  tail call void @edac_mc_handle_error(i32 noundef %12, ptr noundef %1, i16 noundef zeroext %spec.store.select, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #6
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/edac/debugfs.c", i32 47, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/edac/debugfs.c", i32 64, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/edac/debugfs.c", i32 70, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/edac/debugfs.c", i32 73, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/debugfs.c", i32 76, i32 22}
!10 = !{ptr @__ksymtab_edac_debugfs_create_dir, !11, !"__ksymtab_edac_debugfs_create_dir", i1 false, i1 false}
!11 = !{!"../drivers/edac/debugfs.c", i32 90, i32 1}
!12 = !{ptr @__ksymtab_edac_debugfs_create_dir_at, !13, !"__ksymtab_edac_debugfs_create_dir_at", i1 false, i1 false}
!13 = !{!"../drivers/edac/debugfs.c", i32 98, i32 1}
!14 = !{ptr @__ksymtab_edac_debugfs_create_file, !15, !"__ksymtab_edac_debugfs_create_file", i1 false, i1 false}
!15 = !{!"../drivers/edac/debugfs.c", i32 118, i32 1}
!16 = !{ptr @__ksymtab_edac_debugfs_create_x8, !17, !"__ksymtab_edac_debugfs_create_x8", i1 false, i1 false}
!17 = !{!"../drivers/edac/debugfs.c", i32 129, i32 1}
!18 = !{ptr @__ksymtab_edac_debugfs_create_x16, !19, !"__ksymtab_edac_debugfs_create_x16", i1 false, i1 false}
!19 = !{!"../drivers/edac/debugfs.c", i32 140, i32 1}
!20 = !{ptr @__ksymtab_edac_debugfs_create_x32, !21, !"__ksymtab_edac_debugfs_create_x32", i1 false, i1 false}
!21 = !{!"../drivers/edac/debugfs.c", i32 151, i32 1}
!22 = !{ptr @edac_debugfs, !23, !"edac_debugfs", i1 false, i1 false}
!23 = !{!"../drivers/edac/debugfs.c", i32 4, i32 23}
!24 = !{ptr @debug_fake_inject_fops, !25, !"debug_fake_inject_fops", i1 false, i1 false}
!25 = !{!"../drivers/edac/debugfs.c", i32 39, i32 37}
!26 = !{ptr @edac_fake_inject_write.type, !27, !"type", i1 false, i1 false}
!27 = !{!"../drivers/edac/debugfs.c", i32 12, i32 35}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/edac/debugfs.c", i32 21, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @edac_fake_inject_write._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @edac_fake_inject_write._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/debugfs.c", i32 34, i32 9}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/edac/debugfs.c", i32 34, i32 23}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
