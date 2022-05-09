; ModuleID = '/llk/IR_all_yes/block/partitions/cmdline.c_pt.bc'
source_filename = "../block/partitions/cmdline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmdline_parts = type { [32 x i8], i32, ptr, ptr }
%struct.cmdline_subpart = type { [32 x i8], i64, i64, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@__setup_str_cmdline_parts_setup = internal constant [13 x i8] c"blkdevparts=\00", section ".init.rodata", align 1
@__setup_cmdline_parts_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parts_setup, ptr @cmdline_parts_setup, i32 0 }, section ".init.setup", align 4
@cmdline = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bdev_parts = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cmdline_parts_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014cmdline partition has no valid partition.\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmdline_parts_parse\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"block/partitions/cmdline.c\00", [37 x i8] zeroinitializer }, align 32
@cmdline_parts_parse._entry_ptr = internal global ptr @cmdline_parts_parse._entry, section ".printk_index", align 4
@parse_parts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cmdline partition has no block device.\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"parse_parts\00", [20 x i8] zeroinitializer }, align 32
@parse_parts._entry_ptr = internal global ptr @parse_parts._entry, section ".printk_index", align 4
@parse_parts._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parse_parts._entry_ptr.7 = internal global ptr @parse_parts._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_subpart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014cmdline partition size is invalid.\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_subpart\00", [18 x i8] zeroinitializer }, align 32
@parse_subpart._entry_ptr = internal global ptr @parse_subpart._entry, section ".printk_index", align 4
@parse_subpart._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cmdline partition format is invalid.\00", [57 x i8] zeroinitializer }, align 32
@parse_subpart._entry_ptr.12 = internal global ptr @parse_subpart._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lk\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%s)\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@cmdline_parts_verifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s[%llu,%llu] overlaps with %s[%llu,%llu].\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmdline_parts_verifier\00", [41 x i8] zeroinitializer }, align 32
@cmdline_parts_verifier._entry_ptr = internal global ptr @cmdline_parts_verifier._entry, section ".printk_index", align 4
@overlaps_warns_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014Overlapping partitions are used in command line partitions.\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"overlaps_warns_header\00", [42 x i8] zeroinitializer }, align 32
@overlaps_warns_header._entry_ptr = internal global ptr @overlaps_warns_header._entry, section ".printk_index", align 4
@overlaps_warns_header._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Don't use filesystems on overlapping partitions:\00", [45 x i8] zeroinitializer }, align 32
@overlaps_warns_header._entry_ptr.23 = internal global ptr @overlaps_warns_header._entry.21, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 250, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"bdev_parts\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 251, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 408, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 227, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 138, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 168, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 59, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 77, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 93, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 98, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 273, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 360, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 340, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [30 x i8] c"../block/partitions/cmdline.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 341, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__setup_cmdline_parts_setup, ptr @cmdline_parts_parse._entry, ptr @cmdline_parts_parse._entry_ptr, ptr @cmdline_parts_verifier._entry, ptr @cmdline_parts_verifier._entry_ptr, ptr @overlaps_warns_header._entry, ptr @overlaps_warns_header._entry.21, ptr @overlaps_warns_header._entry_ptr, ptr @overlaps_warns_header._entry_ptr.23, ptr @parse_parts._entry, ptr @parse_parts._entry.6, ptr @parse_parts._entry_ptr, ptr @parse_parts._entry_ptr.7, ptr @parse_subpart._entry, ptr @parse_subpart._entry.10, ptr @parse_subpart._entry_ptr, ptr @parse_subpart._entry_ptr.12, ptr @cmdline, ptr @bdev_parts, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdev_parts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_parts_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_parts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_parts._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_subpart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_subpart._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_parts_verifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlaps_warns_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlaps_warns_header._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cmdline_parts_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %s, ptr @cmdline, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmdline_partition(ptr noundef %state) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i.i.i = alloca [44 x i8], align 1
  %tmp.i.i = alloca [68 x i8], align 1
  %partdef.addr.i.i.i = alloca ptr, align 4
  %buf.i.i = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cmdline, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @bdev_parts, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.i:                                     ; preds = %free_subpart.exit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %2 = phi ptr [ %4, %free_subpart.exit.i.while.body.i_crit_edge ], [ %1, %if.then.while.body.i_crit_edge ]
  %next_parts1.i = getelementptr inbounds %struct.cmdline_parts, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %next_parts1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next_parts1.i, align 4
  %subpart1.i.i = getelementptr inbounds %struct.cmdline_parts, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %subpart1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subpart1.i.i, align 4
  %tobool.not7.i.i = icmp eq ptr %6, null
  br i1 %tobool.not7.i.i, label %while.body.i.free_subpart.exit.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.free_subpart.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %7 = phi ptr [ %12, %while.body.i.i.while.body.i.i_crit_edge ], [ %6, %while.body.i.while.body.i.i_crit_edge ]
  %next_subpart.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %next_subpart.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_subpart.i.i, align 4
  %10 = ptrtoint ptr %subpart1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %subpart1.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %7) #11
  %11 = ptrtoint ptr %subpart1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subpart1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %while.body.i.i.free_subpart.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.free_subpart.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i

free_subpart.exit.i:                              ; preds = %while.body.i.i.free_subpart.exit.i_crit_edge, %while.body.i.free_subpart.exit.i_crit_edge
  %13 = load ptr, ptr @bdev_parts, align 4
  tail call void @kfree(ptr noundef %13) #11
  store ptr %4, ptr @bdev_parts, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %free_subpart.exit.i.if.end_crit_edge, label %free_subpart.exit.i.while.body.i_crit_edge

free_subpart.exit.i.while.body.i_crit_edge:       ; preds = %free_subpart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

free_subpart.exit.i.if.end_crit_edge:             ; preds = %free_subpart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %free_subpart.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %14 = load ptr, ptr @cmdline, align 4
  store ptr null, ptr @bdev_parts, align 4
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %14, i32 noundef 3264) #11
  %tobool.not.i24 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i24, label %if.end.if.then4_crit_edge, label %if.end.land.rhs.i_crit_edge

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

land.rhs.i:                                       ; preds = %if.end10.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %next_parts.024.i = phi ptr [ %next_parts14.i, %if.end10.i.land.rhs.i_crit_edge ], [ @bdev_parts, %if.end.land.rhs.i_crit_edge ]
  %pbuf.023.i = phi ptr [ %spec.select13.i, %if.end10.i.land.rhs.i_crit_edge ], [ %call.i, %if.end.land.rhs.i_crit_edge ]
  %15 = ptrtoint ptr %pbuf.023.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pbuf.023.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  br i1 %tobool2.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i25

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i25:                                   ; preds = %land.rhs.i
  %call3.i = call ptr @strchr(ptr noundef %pbuf.023.i, i32 noundef 59) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i25.if.end6.i_crit_edge, label %if.then5.i

while.body.i25.if.end6.i_crit_edge:               ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call3.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %while.body.i25.if.end6.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i.i) #11
  %18 = call ptr @memset(ptr %buf.i.i, i32 255, i32 68)
  %19 = ptrtoint ptr %next_parts.024.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %next_parts.024.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 44) #14
  %tobool.not.i.i26 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i26, label %if.end6.i.parse_parts.exit.thread.i_crit_edge, label %if.end.i.i

if.end6.i.parse_parts.exit.thread.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_parts.exit.thread.i

if.end.i.i:                                       ; preds = %if.end6.i
  %call1.i.i = call ptr @strchr(ptr noundef %pbuf.023.i, i32 noundef 58) #11
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %fail.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %pbuf.023.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %21 = call i32 @llvm.smin.i32(i32 %sub.ptr.sub.i.i, i32 31) #11
  %call7.i.i = call ptr @strncpy(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %pbuf.023.i, i32 noundef %21) #11
  %arrayidx.i.i = getelementptr [32 x i8], ptr %call7.i.i.i.i, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i.i, align 1
  %nr_subparts.i.i = getelementptr inbounds %struct.cmdline_parts, ptr %call7.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %nr_subparts.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nr_subparts.i.i, align 8
  %subpart.i.i = getelementptr inbounds %struct.cmdline_parts, ptr %call7.i.i.i.i, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i.i.land.rhs.i.i_crit_edge, %if.end5.i.i
  %next.087.i.i = phi ptr [ %call1.i.i, %if.end5.i.i ], [ %call11.i.i, %if.end34.i.i.land.rhs.i.i_crit_edge ]
  %next_subpart.086.i.i = phi ptr [ %subpart.i.i, %if.end5.i.i ], [ %next_subpart36.i.i, %if.end34.i.i.land.rhs.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %next.087.i.i, i32 1
  %24 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool10.not.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %while.body.i.i27

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.i.i27:                                 ; preds = %land.rhs.i.i
  %call11.i.i = call ptr @strchr(ptr noundef %incdec.ptr.i.i, i32 noundef 44) #11
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  %sub.ptr.lhs.cast15.i.i = ptrtoint ptr %call11.i.i to i32
  %sub.ptr.rhs.cast16.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub17.i.i = sub i32 %sub.ptr.lhs.cast15.i.i, %sub.ptr.rhs.cast16.i.i
  %26 = call i32 @llvm.smin.i32(i32 %sub.ptr.sub17.i.i, i32 67) #11
  %cond26.i.i = select i1 %tobool12.not.i.i, i32 67, i32 %26
  %call28.i.i = call ptr @strncpy(ptr noundef nonnull %buf.i.i, ptr noundef %incdec.ptr.i.i, i32 noundef %cond26.i.i) #11
  %arrayidx29.i.i = getelementptr [68 x i8], ptr %buf.i.i, i32 0, i32 %cond26.i.i
  %27 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx29.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %partdef.addr.i.i.i) #11
  %28 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i.i, ptr %partdef.addr.i.i.i, align 4
  %29 = ptrtoint ptr %next_subpart.086.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %next_subpart.086.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 56) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i27.parse_subpart.exit.thread.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i27.parse_subpart.exit.thread.i.i_crit_edge: ; preds = %while.body.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_subpart.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i27
  %31 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %partdef.addr.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %34)
  %cmp.i.i.i = icmp eq i8 %34, 45
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %size.i.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %size.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %32, i32 1
  %36 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %incdec.ptr.i.i.i, ptr %partdef.addr.i.i.i, align 4
  br label %if.end11.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %call3.i.i.i = call i64 @memparse(ptr noundef %32, ptr noundef nonnull %partdef.addr.i.i.i) #11
  %size4.i.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %size4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call3.i.i.i, ptr %size4.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call3.i.i.i)
  %cmp6.i.i.i = icmp ult i64 %call3.i.i.i, 4096
  br i1 %cmp6.i.i.i, label %if.else.i.i.i.fail.i.i.i_crit_edge, label %if.else.i.i.i.if.end11.i.i.i_crit_edge

if.else.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i.i

if.else.i.i.i.fail.i.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i.if.end11.i.i.i_crit_edge, %if.then2.i.i.i
  %38 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %partdef.addr.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %41)
  %cmp13.i.i.i = icmp eq i8 %41, 64
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %if.end11.i.i.i.if.end20.i.i.i_crit_edge

if.end11.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr16.i.i.i = getelementptr i8, ptr %39, i32 1
  %42 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr16.i.i.i, ptr %partdef.addr.i.i.i, align 4
  %call17.i.i.i = call i64 @memparse(ptr noundef %incdec.ptr16.i.i.i, ptr noundef nonnull %partdef.addr.i.i.i) #11
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then15.i.i.i, %if.end11.i.i.i.if.end20.i.i.i_crit_edge
  %.sink.i.i.i = phi i64 [ %call17.i.i.i, %if.then15.i.i.i ], [ -1, %if.end11.i.i.i.if.end20.i.i.i_crit_edge ]
  %43 = getelementptr inbounds %struct.cmdline_subpart, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %.sink.i.i.i, ptr %43, align 8
  %45 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %partdef.addr.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %48)
  %cmp22.i.i.i = icmp eq i8 %48, 40
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.else42.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end20.i.i.i
  %incdec.ptr25.i.i.i = getelementptr i8, ptr %46, i32 1
  %49 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr25.i.i.i, ptr %partdef.addr.i.i.i, align 4
  %call26.i.i.i = call ptr @strchr(ptr noundef %incdec.ptr25.i.i.i, i32 noundef 41) #11
  %tobool27.not.i.i.i = icmp eq ptr %call26.i.i.i, null
  br i1 %tobool27.not.i.i.i, label %if.then24.i.i.i.fail.i.i.i_crit_edge, label %cleanup.thread.i.i.i

if.then24.i.i.i.fail.i.i.i_crit_edge:             ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call26.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %incdec.ptr25.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %50 = call i32 @llvm.smin.i32(i32 %sub.ptr.sub.i.i.i, i32 31) #11
  %call38.i.i.i = call ptr @strncpy(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %incdec.ptr25.i.i.i, i32 noundef %50) #11
  %arrayidx.i.i.i = getelementptr [32 x i8], ptr %call7.i.i.i.i.i, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %incdec.ptr40.i.i.i = getelementptr i8, ptr %call26.i.i.i, i32 1
  %52 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %incdec.ptr40.i.i.i, ptr %partdef.addr.i.i.i, align 4
  br label %if.end45.i.i.i

if.else42.i.i.i:                                  ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %call7.i.i.i.i.i, align 8
  br label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %if.else42.i.i.i, %cleanup.thread.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %flags.i.i.i, align 8
  %55 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %partdef.addr.i.i.i, align 4
  %call46.i.i.i = call i32 @strncmp(ptr noundef %56, ptr noundef nonnull dereferenceable(3) @.str.13, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %call46.i.i.i, 0
  br i1 %tobool47.not.i.i.i, label %if.then48.i.i.i, label %if.end45.i.i.i.if.end50.i.i.i_crit_edge

if.end45.i.i.i.if.end50.i.i.i_crit_edge:          ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i.i.i

if.then48.i.i.i:                                  ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %flags.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 2
  %58 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i.i, ptr %partdef.addr.i.i.i, align 4
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.then48.i.i.i, %if.end45.i.i.i.if.end50.i.i.i_crit_edge
  %59 = ptrtoint ptr %partdef.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %partdef.addr.i.i.i, align 4
  %call51.i.i.i = call i32 @strncmp(ptr noundef %60, ptr noundef nonnull dereferenceable(3) @.str.14, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %call51.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %if.then53.i.i.i, label %if.end50.i.i.i.if.end34.i.i_crit_edge

if.end50.i.i.i.if.end34.i.i_crit_edge:            ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i.i

if.then53.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i.i, align 8
  %or55.i.i.i = or i32 %62, 2
  store i32 %or55.i.i.i, ptr %flags.i.i.i, align 8
  br label %if.end34.i.i

fail.i.i.i:                                       ; preds = %if.then24.i.i.i.fail.i.i.i_crit_edge, %if.else.i.i.i.fail.i.i.i_crit_edge
  %.str.11.sink.i.i.i = phi ptr [ @.str.8, %if.else.i.i.i.fail.i.i.i_crit_edge ], [ @.str.11, %if.then24.i.i.i.fail.i.i.i_crit_edge ]
  %call33.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink.i.i.i) #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %parse_subpart.exit.thread.i.i

parse_subpart.exit.thread.i.i:                    ; preds = %fail.i.i.i, %while.body.i.i27.parse_subpart.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partdef.addr.i.i.i) #11
  br label %fail.i.i

if.end34.i.i:                                     ; preds = %if.then53.i.i.i, %if.end50.i.i.i.if.end34.i.i_crit_edge
  %63 = ptrtoint ptr %next_subpart.086.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i.i.i, ptr %next_subpart.086.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partdef.addr.i.i.i) #11
  %64 = ptrtoint ptr %nr_subparts.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_subparts.i.i, align 8
  %inc.i.i = add i32 %65, 1
  store i32 %inc.i.i, ptr %nr_subparts.i.i, align 8
  %66 = ptrtoint ptr %next_subpart.086.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %next_subpart.086.i.i, align 4
  %next_subpart36.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %67, i32 0, i32 4
  br i1 %tobool12.not.i.i, label %if.end34.i.i.while.end.i.i_crit_edge, label %if.end34.i.i.land.rhs.i.i_crit_edge

if.end34.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

if.end34.i.i.while.end.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end34.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge
  %68 = ptrtoint ptr %subpart.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %subpart.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %69, null
  br i1 %tobool38.not.i.i, label %do.end42.i.i, label %if.end10.i

do.end42.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %fail.i.i

fail.i.i:                                         ; preds = %do.end42.i.i, %parse_subpart.exit.thread.i.i, %do.end.i.i
  %subpart1.i.i.i = getelementptr inbounds %struct.cmdline_parts, ptr %call7.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %subpart1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %subpart1.i.i.i, align 4
  %tobool.not7.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not7.i.i.i, label %fail.i.i.free_subpart.exit.i.i_crit_edge, label %fail.i.i.while.body.i.i.i_crit_edge

fail.i.i.while.body.i.i.i_crit_edge:              ; preds = %fail.i.i
  br label %while.body.i.i.i

fail.i.i.free_subpart.exit.i.i_crit_edge:         ; preds = %fail.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %fail.i.i.while.body.i.i.i_crit_edge
  %72 = phi ptr [ %77, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %71, %fail.i.i.while.body.i.i.i_crit_edge ]
  %next_subpart.i.i.i = getelementptr inbounds %struct.cmdline_subpart, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %next_subpart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %next_subpart.i.i.i, align 4
  %75 = ptrtoint ptr %subpart1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %subpart1.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %72) #11
  %76 = ptrtoint ptr %subpart1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %subpart1.i.i.i, align 4
  %tobool.not.i81.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i81.i.i, label %while.body.i.i.i.free_subpart.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

while.body.i.i.i.free_subpart.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i.i

free_subpart.exit.i.i:                            ; preds = %while.body.i.i.i.free_subpart.exit.i.i_crit_edge, %fail.i.i.free_subpart.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %parse_parts.exit.thread.i

parse_parts.exit.thread.i:                        ; preds = %free_subpart.exit.i.i, %if.end6.i.parse_parts.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i.i) #11
  br label %fail.i

if.end10.i:                                       ; preds = %while.end.i.i
  %78 = ptrtoint ptr %next_parts.024.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i.i.i, ptr %next_parts.024.i, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i.i) #11
  %incdec.ptr.i = getelementptr i8, ptr %call3.i, i32 1
  %79 = ptrtoint ptr %next_parts.024.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %next_parts.024.i, align 4
  %next_parts14.i = getelementptr inbounds %struct.cmdline_parts, ptr %80, i32 0, i32 3
  %spec.select13.i = select i1 %tobool4.not.i, ptr %pbuf.023.i, ptr %incdec.ptr.i
  %tobool1.not25.i = icmp eq ptr %incdec.ptr.i, null
  %tobool1.not.i = or i1 %tobool4.not.i, %tobool1.not25.i
  br i1 %tobool1.not.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.land.rhs.i_crit_edge

if.end10.i.land.rhs.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end10.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %81 = load ptr, ptr @bdev_parts, align 4
  %tobool15.not.i = icmp eq ptr %81, null
  br i1 %tobool15.not.i, label %do.end.i, label %if.end5

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %fail.i

fail.i:                                           ; preds = %do.end.i, %parse_parts.exit.thread.i
  %.pr.i.i = load ptr, ptr @bdev_parts, align 4
  %tobool.not1.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not1.i.i, label %fail.i.cmdline_parts_parse.exit.thread54_crit_edge, label %fail.i.while.body.i4.i_crit_edge

fail.i.while.body.i4.i_crit_edge:                 ; preds = %fail.i
  br label %while.body.i4.i

fail.i.cmdline_parts_parse.exit.thread54_crit_edge: ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_parse.exit.thread54

while.body.i4.i:                                  ; preds = %free_subpart.exit.i9.i.while.body.i4.i_crit_edge, %fail.i.while.body.i4.i_crit_edge
  %82 = phi ptr [ %84, %free_subpart.exit.i9.i.while.body.i4.i_crit_edge ], [ %.pr.i.i, %fail.i.while.body.i4.i_crit_edge ]
  %next_parts1.i.i = getelementptr inbounds %struct.cmdline_parts, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %next_parts1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next_parts1.i.i, align 4
  %subpart1.i.i2.i = getelementptr inbounds %struct.cmdline_parts, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %subpart1.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %subpart1.i.i2.i, align 4
  %tobool.not7.i.i3.i = icmp eq ptr %86, null
  br i1 %tobool.not7.i.i3.i, label %while.body.i4.i.free_subpart.exit.i9.i_crit_edge, label %while.body.i4.i.while.body.i.i7.i_crit_edge

while.body.i4.i.while.body.i.i7.i_crit_edge:      ; preds = %while.body.i4.i
  br label %while.body.i.i7.i

while.body.i4.i.free_subpart.exit.i9.i_crit_edge: ; preds = %while.body.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i9.i

while.body.i.i7.i:                                ; preds = %while.body.i.i7.i.while.body.i.i7.i_crit_edge, %while.body.i4.i.while.body.i.i7.i_crit_edge
  %87 = phi ptr [ %92, %while.body.i.i7.i.while.body.i.i7.i_crit_edge ], [ %86, %while.body.i4.i.while.body.i.i7.i_crit_edge ]
  %next_subpart.i.i5.i = getelementptr inbounds %struct.cmdline_subpart, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %next_subpart.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %next_subpart.i.i5.i, align 4
  %90 = ptrtoint ptr %subpart1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %subpart1.i.i2.i, align 4
  call void @kfree(ptr noundef nonnull %87) #11
  %91 = ptrtoint ptr %subpart1.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %subpart1.i.i2.i, align 4
  %tobool.not.i.i6.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i6.i, label %while.body.i.i7.i.free_subpart.exit.i9.i_crit_edge, label %while.body.i.i7.i.while.body.i.i7.i_crit_edge

while.body.i.i7.i.while.body.i.i7.i_crit_edge:    ; preds = %while.body.i.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i7.i

while.body.i.i7.i.free_subpart.exit.i9.i_crit_edge: ; preds = %while.body.i.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_subpart.exit.i9.i

free_subpart.exit.i9.i:                           ; preds = %while.body.i.i7.i.free_subpart.exit.i9.i_crit_edge, %while.body.i4.i.free_subpart.exit.i9.i_crit_edge
  %93 = load ptr, ptr @bdev_parts, align 4
  call void @kfree(ptr noundef %93) #11
  store ptr %84, ptr @bdev_parts, align 4
  %tobool.not.i8.i = icmp eq ptr %84, null
  br i1 %tobool.not.i8.i, label %free_subpart.exit.i9.i.cmdline_parts_parse.exit.thread54_crit_edge, label %free_subpart.exit.i9.i.while.body.i4.i_crit_edge

free_subpart.exit.i9.i.while.body.i4.i_crit_edge: ; preds = %free_subpart.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i4.i

free_subpart.exit.i9.i.cmdline_parts_parse.exit.thread54_crit_edge: ; preds = %free_subpart.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_parse.exit.thread54

cmdline_parts_parse.exit.thread54:                ; preds = %free_subpart.exit.i9.i.cmdline_parts_parse.exit.thread54_crit_edge, %fail.i.cmdline_parts_parse.exit.thread54_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #11
  br label %if.then4

if.then4:                                         ; preds = %cmdline_parts_parse.exit.thread54, %if.end.if.then4_crit_edge
  store ptr null, ptr @cmdline, align 4
  br label %cleanup

if.end5:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call.i) #11
  store ptr null, ptr @cmdline, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry.if.end6_crit_edge
  %94 = load ptr, ptr @bdev_parts, align 4
  %tobool7.not = icmp eq ptr %94, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 3
  br label %land.rhs.i30

land.rhs.i30:                                     ; preds = %while.body.i32.land.rhs.i30_crit_edge, %if.end9
  %parts.addr.06.i = phi ptr [ %98, %while.body.i32.land.rhs.i30_crit_edge ], [ %94, %if.end9 ]
  %call.i28 = call i32 @strncmp(ptr noundef %disk_name, ptr noundef nonnull %parts.addr.06.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool1.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool1.not.i29, label %if.end13, label %while.body.i32

while.body.i32:                                   ; preds = %land.rhs.i30
  %next_parts.i = getelementptr inbounds %struct.cmdline_parts, ptr %parts.addr.06.i, i32 0, i32 3
  %97 = ptrtoint ptr %next_parts.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %next_parts.i, align 4
  %tobool.not.i31 = icmp eq ptr %98, null
  br i1 %tobool.not.i31, label %while.body.i32.cleanup_crit_edge, label %while.body.i32.land.rhs.i30_crit_edge

while.body.i32.land.rhs.i30_crit_edge:            ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i30

while.body.i32.cleanup_crit_edge:                 ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %land.rhs.i30
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %99 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl = shl i64 %102, 9
  %subpart1.i = getelementptr inbounds %struct.cmdline_parts, ptr %parts.addr.06.i, i32 0, i32 2
  %103 = ptrtoint ptr %subpart1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %subpart.03.i = load ptr, ptr %subpart1.i, align 4
  %tobool.not4.i = icmp eq ptr %subpart.03.i, null
  br i1 %tobool.not4.i, label %if.end13.cmdline_parts_set.exit_crit_edge, label %for.body.lr.ph.i

if.end13.cmdline_parts_set.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_set.exit

for.body.lr.ph.i:                                 ; preds = %if.end13
  %limit.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %subpart.07.i = phi ptr [ %subpart.03.i, %for.body.lr.ph.i ], [ %subpart.0.i, %for.inc.i.for.body.i_crit_edge ]
  %slot.06.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %from.05.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %from2.i = getelementptr inbounds %struct.cmdline_subpart, ptr %subpart.07.i, i32 0, i32 1
  %104 = ptrtoint ptr %from2.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %from2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %105)
  %cmp.i = icmp eq i64 %105, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %from2.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %from.05.i, ptr %from2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %from.1.i = phi i64 [ %from.05.i, %if.then.i ], [ %105, %for.body.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %from.1.i)
  %cmp5.not.i = icmp ugt i64 %shl, %from.1.i
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.cmdline_parts_set.exit_crit_edge

if.end.i.cmdline_parts_set.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_set.exit

if.end7.i:                                        ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.cmdline_subpart, ptr %subpart.07.i, i32 0, i32 2
  %107 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %size.i, align 8
  %sub.i = sub i64 %shl, %from.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %sub.i)
  %cmp8.i = icmp ugt i64 %108, %sub.i
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %sub.i, ptr %size.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end12.i_crit_edge
  %110 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %size.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tmp.i.i) #11
  %112 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 68)
  %113 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %limit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %slot.06.i)
  %cmp.not.i.i = icmp sgt i32 %114, %slot.06.i
  br i1 %cmp.not.i.i, label %for.inc.i, label %add_part.exit.i

add_part.exit.i:                                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tmp.i.i) #11
  br label %cmdline_parts_set.exit

for.inc.i:                                        ; preds = %if.end12.i
  %115 = ptrtoint ptr %from2.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %from2.i, align 8
  %shr.i.i = lshr i64 %116, 9
  %117 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %size.i, align 8
  %shr1.i.i = lshr i64 %118, 9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i.i.i) #11
  %119 = call ptr @memset(ptr %tmp.i.i.i, i32 255, i32 44)
  %120 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parts.i.i.i, align 4
  %arrayidx.i.i.i34 = getelementptr %struct.anon.83, ptr %121, i32 %slot.06.i
  %122 = ptrtoint ptr %arrayidx.i.i.i34 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %shr.i.i, ptr %arrayidx.i.i.i34, align 8
  %123 = load ptr, ptr %parts.i.i.i, align 4
  %size4.i.i.i35 = getelementptr %struct.anon.83, ptr %123, i32 %slot.06.i, i32 1
  %124 = ptrtoint ptr %size4.i.i.i35 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %shr1.i.i, ptr %size4.i.i.i35, align 8
  %call.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i.i.i, i32 noundef 44, ptr noundef nonnull @.str.16, ptr noundef %name.i.i.i, i32 noundef %slot.06.i) #11
  %125 = ptrtoint ptr %pp_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pp_buf.i.i.i, align 4
  %call7.i.i.i = call i32 @strlcat(ptr noundef %126, ptr noundef nonnull %tmp.i.i.i, i32 noundef 4096) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i.i.i) #11
  %127 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %parts.i.i.i, align 4
  %volname.i.i = getelementptr %struct.anon.83, ptr %128, i32 %slot.06.i, i32 4, i32 1
  %call.i.i = call ptr @strncpy(ptr noundef %volname.i.i, ptr noundef nonnull %subpart.07.i, i32 noundef 32) #11
  %arrayidx5.i.i = getelementptr %struct.anon.83, ptr %128, i32 %slot.06.i, i32 4, i32 1, i32 32
  %129 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx5.i.i, align 1
  %call9.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i.i, i32 noundef 68, ptr noundef nonnull @.str.15, ptr noundef %volname.i.i) #11
  %130 = ptrtoint ptr %pp_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pp_buf.i.i.i, align 4
  %call11.i.i36 = call i32 @strlcat(ptr noundef %131, ptr noundef nonnull %tmp.i.i, i32 noundef 4096) #11
  %132 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %parts.i.i.i, align 4
  %has_info.i.i = getelementptr %struct.anon.83, ptr %133, i32 %slot.06.i, i32 3
  %134 = ptrtoint ptr %has_info.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %has_info.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tmp.i.i) #11
  %add.i = add i64 %111, %from.1.i
  %next_subpart.i = getelementptr inbounds %struct.cmdline_subpart, ptr %subpart.07.i, i32 0, i32 4
  %inc.i = add nuw nsw i32 %slot.06.i, 1
  %135 = ptrtoint ptr %next_subpart.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %subpart.0.i = load ptr, ptr %next_subpart.i, align 4
  %tobool.not.i37 = icmp eq ptr %subpart.0.i, null
  br i1 %tobool.not.i37, label %for.inc.i.cmdline_parts_set.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cmdline_parts_set.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_set.exit

cmdline_parts_set.exit:                           ; preds = %for.inc.i.cmdline_parts_set.exit_crit_edge, %add_part.exit.i, %if.end.i.cmdline_parts_set.exit_crit_edge, %if.end13.cmdline_parts_set.exit_crit_edge
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %136 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp13.i = icmp sgt i32 %137, 1
  br i1 %cmp13.i, label %cmdline_parts_set.exit.land.rhs.i39_crit_edge, label %cmdline_parts_set.exit.cmdline_parts_verifier.exit_crit_edge

cmdline_parts_set.exit.cmdline_parts_verifier.exit_crit_edge: ; preds = %cmdline_parts_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_verifier.exit

cmdline_parts_set.exit.land.rhs.i39_crit_edge:    ; preds = %cmdline_parts_set.exit
  br label %land.rhs.i39

land.rhs.i39:                                     ; preds = %for.inc47.i.land.rhs.i39_crit_edge, %cmdline_parts_set.exit.land.rhs.i39_crit_edge
  %slot.addr.015.i = phi i32 [ %add.i40, %for.inc47.i.land.rhs.i39_crit_edge ], [ 1, %cmdline_parts_set.exit.land.rhs.i39_crit_edge ]
  %header.0.off014.i = phi i1 [ %header.1.off0.lcssa.i, %for.inc47.i.land.rhs.i39_crit_edge ], [ true, %cmdline_parts_set.exit.land.rhs.i39_crit_edge ]
  %138 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %parts.i, align 4
  %has_info.i = getelementptr %struct.anon.83, ptr %139, i32 %slot.addr.015.i, i32 3
  %140 = ptrtoint ptr %has_info.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %has_info.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i38 = icmp eq i8 %141, 0
  br i1 %tobool.not.i38, label %land.rhs.i39.cmdline_parts_verifier.exit_crit_edge, label %for.body.i41

land.rhs.i39.cmdline_parts_verifier.exit_crit_edge: ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_verifier.exit

for.body.i41:                                     ; preds = %land.rhs.i39
  %add.i40 = add nuw nsw i32 %slot.addr.015.i, 1
  %142 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i40, i32 %143)
  %cmp37.i = icmp slt i32 %add.i40, %143
  br i1 %cmp37.i, label %for.body.i41.land.rhs4.i_crit_edge, label %for.body.i41.for.inc47.i_crit_edge

for.body.i41.for.inc47.i_crit_edge:               ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47.i

for.body.i41.land.rhs4.i_crit_edge:               ; preds = %for.body.i41
  br label %land.rhs4.i

land.rhs4.i:                                      ; preds = %for.inc.i50.land.rhs4.i_crit_edge, %for.body.i41.land.rhs4.i_crit_edge
  %header.1.off010.i = phi i1 [ %header.3.off0.i, %for.inc.i50.land.rhs4.i_crit_edge ], [ %header.0.off014.i, %for.body.i41.land.rhs4.i_crit_edge ]
  %i.08.i = phi i32 [ %inc.i49, %for.inc.i50.land.rhs4.i_crit_edge ], [ %add.i40, %for.body.i41.land.rhs4.i_crit_edge ]
  %144 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %parts.i, align 4
  %has_info7.i = getelementptr %struct.anon.83, ptr %145, i32 %i.08.i, i32 3
  %146 = ptrtoint ptr %has_info7.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %has_info7.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool8.not.i = icmp eq i8 %147, 0
  br i1 %tobool8.not.i, label %land.rhs4.i.for.inc47.i_crit_edge, label %for.body10.i

land.rhs4.i.for.inc47.i_crit_edge:                ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47.i

for.body10.i:                                     ; preds = %land.rhs4.i
  %arrayidx6.i = getelementptr %struct.anon.83, ptr %145, i32 %i.08.i
  %arrayidx12.i = getelementptr %struct.anon.83, ptr %145, i32 %slot.addr.015.i
  %148 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx12.i, align 8
  %150 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx6.i, align 8
  %size20.i = getelementptr %struct.anon.83, ptr %145, i32 %i.08.i, i32 1
  %152 = ptrtoint ptr %size20.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %size20.i, align 8
  %add1.i.i = add i64 %153, %151
  call void @__sanitizer_cov_trace_cmp8(i64 %149, i64 %151)
  %cmp.not.i.i42 = icmp uge i64 %149, %151
  call void @__sanitizer_cov_trace_cmp8(i64 %add1.i.i, i64 %149)
  %cmp2.i.i = icmp ugt i64 %add1.i.i, %149
  %or.cond.i.i = and i1 %cmp.not.i.i42, %cmp2.i.i
  br i1 %or.cond.i.i, label %for.body10.i.if.then.i45_crit_edge, label %if.end.i.i44

for.body10.i.if.then.i45_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i45

if.end.i.i44:                                     ; preds = %for.body10.i
  %size.i43 = getelementptr %struct.anon.83, ptr %145, i32 %slot.addr.015.i, i32 1
  %154 = ptrtoint ptr %size.i43 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %size.i43, align 8
  %add.i.i = add i64 %155, %149
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %151)
  %cmp3.i.i = icmp ule i64 %add.i.i, %151
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %add1.i.i)
  %cmp5.not.i.i = icmp ugt i64 %add.i.i, %add1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %151, i64 %149)
  %cmp8.not.i.i = icmp ult i64 %151, %149
  %brmerge37.i.i = and i1 %cmp8.not.i.i, %cmp5.not.i.i
  %or.cond36.i.i = or i1 %cmp3.i.i, %brmerge37.i.i
  %or.cond36.i.not.i = xor i1 %or.cond36.i.i, true
  call void @__sanitizer_cov_trace_cmp8(i64 %add1.i.i, i64 %add.i.i)
  %cmp15.not.i.i = icmp ule i64 %add1.i.i, %add.i.i
  %not.or.cond35.i.i = and i1 %cmp2.i.i, %cmp15.not.i.i
  %or.cond.i = select i1 %or.cond36.i.not.i, i1 true, i1 %not.or.cond35.i.i
  br i1 %or.cond.i, label %if.end.i.i44.if.then.i45_crit_edge, label %if.end.i.i44.for.inc.i50_crit_edge

if.end.i.i44.for.inc.i50_crit_edge:               ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i50

if.end.i.i44.if.then.i45_crit_edge:               ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i45

if.then.i45:                                      ; preds = %if.end.i.i44.if.then.i45_crit_edge, %for.body10.i.if.then.i45_crit_edge
  br i1 %header.1.off010.i, label %if.then22.i, label %if.then.i45.do.end.i48_crit_edge

if.then.i45.do.end.i48_crit_edge:                 ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i48

if.then22.i:                                      ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  %call4.i.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %do.end.i48

do.end.i48:                                       ; preds = %if.then22.i, %if.then.i45.do.end.i48_crit_edge
  %156 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %parts.i, align 4
  %arrayidx24.i = getelementptr %struct.anon.83, ptr %157, i32 %slot.addr.015.i
  %volname.i = getelementptr %struct.anon.83, ptr %157, i32 %slot.addr.015.i, i32 4, i32 1
  %158 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx24.i, align 8
  %shl.i = shl i64 %159, 9
  %size30.i = getelementptr %struct.anon.83, ptr %157, i32 %slot.addr.015.i, i32 1
  %160 = ptrtoint ptr %size30.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %size30.i, align 8
  %shl31.i = shl i64 %161, 9
  %arrayidx33.i = getelementptr %struct.anon.83, ptr %157, i32 %i.08.i
  %volname35.i = getelementptr %struct.anon.83, ptr %157, i32 %i.08.i, i32 4, i32 1
  %162 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx33.i, align 8
  %shl40.i = shl i64 %163, 9
  %size43.i = getelementptr %struct.anon.83, ptr %157, i32 %i.08.i, i32 1
  %164 = ptrtoint ptr %size43.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %size43.i, align 8
  %shl44.i = shl i64 %165, 9
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %volname.i, i64 noundef %shl.i, i64 noundef %shl31.i, ptr noundef %volname35.i, i64 noundef %shl40.i, i64 noundef %shl44.i) #15
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %do.end.i48, %if.end.i.i44.for.inc.i50_crit_edge
  %header.3.off0.i = phi i1 [ false, %do.end.i48 ], [ %header.1.off010.i, %if.end.i.i44.for.inc.i50_crit_edge ]
  %inc.i49 = add nuw nsw i32 %i.08.i, 1
  %166 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %limit.i, align 4
  %cmp3.i = icmp slt i32 %inc.i49, %167
  br i1 %cmp3.i, label %for.inc.i50.land.rhs4.i_crit_edge, label %for.inc.i50.for.inc47.i_crit_edge

for.inc.i50.for.inc47.i_crit_edge:                ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47.i

for.inc.i50.land.rhs4.i_crit_edge:                ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs4.i

for.inc47.i:                                      ; preds = %for.inc.i50.for.inc47.i_crit_edge, %land.rhs4.i.for.inc47.i_crit_edge, %for.body.i41.for.inc47.i_crit_edge
  %header.1.off0.lcssa.i = phi i1 [ %header.0.off014.i, %for.body.i41.for.inc47.i_crit_edge ], [ %header.3.off0.i, %for.inc.i50.for.inc47.i_crit_edge ], [ %header.1.off010.i, %land.rhs4.i.for.inc47.i_crit_edge ]
  %168 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %limit.i, align 4
  %cmp.i51 = icmp slt i32 %add.i40, %169
  br i1 %cmp.i51, label %for.inc47.i.land.rhs.i39_crit_edge, label %for.inc47.i.cmdline_parts_verifier.exit_crit_edge

for.inc47.i.cmdline_parts_verifier.exit_crit_edge: ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cmdline_parts_verifier.exit

for.inc47.i.land.rhs.i39_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i39

cmdline_parts_verifier.exit:                      ; preds = %for.inc47.i.cmdline_parts_verifier.exit_crit_edge, %land.rhs.i39.cmdline_parts_verifier.exit_crit_edge, %cmdline_parts_set.exit.cmdline_parts_verifier.exit_crit_edge
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %170 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pp_buf, align 4
  %call17 = call i32 @strlcat(ptr noundef %171, ptr noundef nonnull @.str, i32 noundef 4096) #11
  br label %cleanup

cleanup:                                          ; preds = %cmdline_parts_verifier.exit, %while.body.i32.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 1, %cmdline_parts_verifier.exit ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %while.body.i32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__setup_cmdline_parts_setup, !1, !"__setup_cmdline_parts_setup", i1 false, i1 false}
!1 = !{!"../block/partitions/cmdline.c", i32 315, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/cmdline.c", i32 408, i32 25}
!4 = !{ptr @cmdline, !5, !"cmdline", i1 false, i1 false}
!5 = !{!"../block/partitions/cmdline.c", i32 250, i32 14}
!6 = !{ptr @bdev_parts, !7, !"bdev_parts", i1 false, i1 false}
!7 = !{!"../block/partitions/cmdline.c", i32 251, i32 30}
!8 = !{ptr @__setup_str_cmdline_parts_setup, !1, !"__setup_str_cmdline_parts_setup", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../block/partitions/cmdline.c", i32 227, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cmdline_parts_parse._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @cmdline_parts_parse._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../block/partitions/cmdline.c", i32 138, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @parse_parts._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @parse_parts._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @parse_parts._entry.6, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../block/partitions/cmdline.c", i32 168, i32 3}
!22 = !{ptr @parse_parts._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/partitions/cmdline.c", i32 59, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @parse_subpart._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @parse_subpart._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/partitions/cmdline.c", i32 77, i32 4}
!30 = !{ptr @parse_subpart._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @parse_subpart._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/partitions/cmdline.c", i32 93, i32 24}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/cmdline.c", i32 98, i32 24}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/partitions/cmdline.c", i32 273, i32 29}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/partitions/check.h", i32 45, i32 30}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/partitions/cmdline.c", i32 360, i32 5}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cmdline_parts_verifier._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cmdline_parts_verifier._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../block/partitions/cmdline.c", i32 340, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @overlaps_warns_header._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @overlaps_warns_header._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../block/partitions/cmdline.c", i32 341, i32 2}
!52 = !{ptr @overlaps_warns_header._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @overlaps_warns_header._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
