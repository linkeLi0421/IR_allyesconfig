; ModuleID = '/llk/IR_all_yes/drivers/md/md-autodetect.c_pt.bc'
source_filename = "../drivers/md/md-autodetect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.md_setup_args = type { i32, i32, i32, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdu_array_info_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.mdu_disk_info_s = type { i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.82, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.82 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }

@__setup_str_raid_setup = internal constant [6 x i8] c"raid=\00", section ".init.rodata", align 1
@__setup_raid_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_raid_setup, ptr @raid_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_md_setup = internal constant [4 x i8] c"md=\00", section ".init.rodata", align 1
@__setup_md_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_md_setup, ptr @md_setup, i32 0 }, section ".init.setup", align 4
@raid_noautodetect = internal unnamed_addr global i1 false, section ".init.data", align 4
@md_run_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016md: Skipping autodetection of RAID arrays. (raid=autodetect will force)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"md_run_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/md/md-autodetect.c\00", [37 x i8] zeroinitializer }, align 32
@md_run_setup._entry_ptr = internal global ptr @md_run_setup._entry, section ".printk_index", align 4
@md_setup_ents = internal unnamed_addr global i32 0, section ".init.data", align 4
@md_setup_args = internal global [256 x %struct.md_setup_args] zeroinitializer, section ".init.data", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noautodetect\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autodetect\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"partitionable\00", [18 x i8] zeroinitializer }, align 32
@raid_autopart = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"part\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@md_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014md: Too few arguments supplied to md=.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"md_setup\00", [23 x i8] zeroinitializer }, align 32
@md_setup._entry_ptr = internal global ptr @md_setup._entry, section ".printk_index", align 4
@md_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014md: md=%s%d, Specified more than once. Replacing previous definition.\0A\00", [55 x i8] zeroinitializer }, align 32
@md_setup._entry_ptr.12 = internal global ptr @md_setup._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@md_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014md: md=%s%d - too many md initialisations\0A\00", [51 x i8] zeroinitializer }, align 32
@md_setup._entry_ptr.16 = internal global ptr @md_setup._entry.14, section ".printk_index", align 4
@md_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@md_setup._entry_ptr.18 = internal global ptr @md_setup._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid0\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"super-block\00", [20 x i8] zeroinitializer }, align 32
@md_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016md: Will configure md%d (%s) from %s, below.\0A\00", [48 x i8] zeroinitializer }, align 32
@md_setup._entry_ptr.24 = internal global ptr @md_setup._entry.22, section ".printk_index", align 4
@autodetect_raid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016md: Waiting for all devices to be available before autodetect\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"autodetect_raid\00", [16 x i8] zeroinitializer }, align 32
@autodetect_raid._entry_ptr = internal global ptr @autodetect_raid._entry, section ".printk_index", align 4
@autodetect_raid._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016md: If you don't use raid, use raid=noautodetect\0A\00", [44 x i8] zeroinitializer }, align 32
@autodetect_raid._entry_ptr.29 = internal global ptr @autodetect_raid._entry.27, section ".printk_index", align 4
@mdp_major = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"md_d%d\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"md%d\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/dev/\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/dev/%s\00", [24 x i8] zeroinitializer }, align 32
@md_setup_drive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014md: Unknown device name: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"md_setup_drive\00", [17 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr = internal global ptr @md_setup_drive._entry, section ".printk_index", align 4
@md_setup_drive._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016md: Loading %s: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr.38 = internal global ptr @md_setup_drive._entry.36, section ".printk_index", align 4
@md_setup_drive._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013md: open failed - cannot start array %s\0A\00", [53 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr.41 = internal global ptr @md_setup_drive._entry.39, section ".printk_index", align 4
@md_fops = external dso_local constant %struct.block_device_operations, align 4
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Opening block device %x resulted in non-md device\0A\00", [45 x i8] zeroinitializer }, align 32
@md_setup_drive._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013md: failed to lock array %s\0A\00", [33 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr.45 = internal global ptr @md_setup_drive._entry.43, section ".printk_index", align 4
@md_setup_drive._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014md: Ignoring %s, already autodetected. (Use raid=noautodetect)\0A\00", [62 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr.48 = internal global ptr @md_setup_drive._entry.46, section ".printk_index", align 4
@md_setup_drive._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014md: starting %s failed\0A\00", [38 x i8] zeroinitializer }, align 32
@md_setup_drive._entry_ptr.51 = internal global ptr @md_setup_drive._entry.49, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 285, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 251, i32 21 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 253, i32 21 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 255, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 257, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 63, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 72, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 79, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 84, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 94, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 100, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 102, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 111, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 114, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 273, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 274, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 135, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 138, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 152, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 154, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 158, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 170, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 174, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 179, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 188, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 193, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [30 x i8] c"../drivers/md/md-autodetect.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 230, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__setup_md_setup, ptr @__setup_raid_setup, ptr @autodetect_raid._entry, ptr @autodetect_raid._entry.27, ptr @autodetect_raid._entry_ptr, ptr @autodetect_raid._entry_ptr.29, ptr @md_run_setup._entry, ptr @md_run_setup._entry_ptr, ptr @md_setup._entry, ptr @md_setup._entry.10, ptr @md_setup._entry.14, ptr @md_setup._entry.17, ptr @md_setup._entry.22, ptr @md_setup._entry_ptr, ptr @md_setup._entry_ptr.12, ptr @md_setup._entry_ptr.16, ptr @md_setup._entry_ptr.18, ptr @md_setup._entry_ptr.24, ptr @md_setup_drive._entry, ptr @md_setup_drive._entry.36, ptr @md_setup_drive._entry.39, ptr @md_setup_drive._entry.43, ptr @md_setup_drive._entry.46, ptr @md_setup_drive._entry.49, ptr @md_setup_drive._entry_ptr, ptr @md_setup_drive._entry_ptr.38, ptr @md_setup_drive._entry_ptr.41, ptr @md_setup_drive._entry_ptr.45, ptr @md_setup_drive._entry_ptr.48, ptr @md_setup_drive._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_run_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autodetect_raid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autodetect_raid._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_setup_drive._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #10
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call)
  %cmp38 = icmp ult i32 %call, 2147483647
  br i1 %cmp38, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %str to i32
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %pos.039 = phi i32 [ 0, %while.body.lr.ph ], [ %add21, %if.end19.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %str, i32 %pos.039
  %call1 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 44)
  %tobool.not = icmp eq ptr %call1, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.sub.pn = select i1 %tobool.not, i32 %call, i32 %sub.ptr.sub
  %wlen.0 = sub i32 %sub.ptr.sub.pn, %pos.039
  %call4 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.3, i32 noundef %wlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %while.body.if.end7_crit_edge

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @raid_noautodetect, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.body.if.end7_crit_edge
  %call8 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.4, i32 noundef %wlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 false, ptr @raid_noautodetect, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %call12 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.5, i32 noundef %wlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @raid_autopart, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %call16 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.6, i32 noundef %wlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @raid_autopart, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %add21 = add i32 %sub.ptr.sub.pn, 1
  %cmp = icmp slt i32 %add21, %add
  br i1 %cmp, label %if.end19.while.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @md_setup(ptr noundef %str) #1 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %minor = alloca i32, align 4
  %level = alloca i32, align 4
  %factor = alloca i32, align 4
  %fault = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #7
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %minor, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #7
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %factor) #7
  %3 = ptrtoint ptr %factor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %factor, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault) #7
  %4 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fault, align 4, !annotation !110
  %5 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %6)
  %cmp = icmp eq i8 %6, 100
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %str, i32 1
  %7 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr, ptr %str.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %partitioned.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %minor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp2.not = icmp eq i32 %call, 2
  br i1 %cmp2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str.addr, align 4
  %10 = load i32, ptr @md_setup_ents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7109 = icmp sgt i32 %10, 0
  br i1 %cmp7109, label %for.body.lr.ph, label %if.end6.if.end33_crit_edge

if.end6.if.end33_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

for.body.lr.ph:                                   ; preds = %if.end6
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ent.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0110
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp10 = icmp eq i32 %14, %12
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %partitioned13 = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0110, i32 1
  %15 = ptrtoint ptr %partitioned13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %partitioned13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %partitioned.0)
  %cmp14 = icmp eq i32 %16, %partitioned.0
  br i1 %cmp14, label %do.end19, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %cmp, ptr @.str.13, ptr @.str.7
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, i32 noundef %12) #11
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ent.0110, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end19
  %ent.0105 = phi i32 [ %ent.0110, %do.end19 ], [ %10, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %ent.0105)
  %cmp23 = icmp ugt i32 %ent.0105, 255
  br i1 %cmp23, label %do.end28, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond31 = select i1 %cmp, ptr @.str.13, ptr @.str.7
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %cond31, i32 noundef %18) #11
  br label %cleanup

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %if.end6.if.end33_crit_edge
  %ent.0105115 = phi i32 [ %ent.0105, %for.end.if.end33_crit_edge ], [ 0, %if.end6.if.end33_crit_edge ]
  %19 = load i32, ptr @md_setup_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ent.0105115, i32 %19)
  %cmp34.not = icmp slt i32 %ent.0105115, %19
  br i1 %cmp34.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %inc37 = add i32 %19, 1
  store i32 %inc37, ptr @md_setup_ents, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  %call39 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %level) #7
  %20 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call39, label %if.end38.do.end73_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end38.sw.bb67_crit_edge
    i32 0, label %if.end38.sw.bb68_crit_edge
  ]

if.end38.sw.bb68_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

if.end38.sw.bb67_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end38.do.end73_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

sw.bb:                                            ; preds = %if.end38
  %21 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %level, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %22, label %sw.bb.sw.bb67_crit_edge [
    i32 0, label %sw.bb.if.then44_crit_edge
    i32 -1, label %sw.bb.if.then44_crit_edge123
  ]

sw.bb.if.then44_crit_edge123:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

sw.bb.if.then44_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

sw.bb.sw.bb67_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.then44:                                        ; preds = %sw.bb.if.then44_crit_edge, %sw.bb.if.then44_crit_edge123
  %call45 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %factor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 2
  br i1 %cmp46.not, label %lor.lhs.false48, label %if.then44.do.end55_crit_edge

if.then44.do.end55_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

lor.lhs.false48:                                  ; preds = %if.then44
  %call49 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %fault) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 2
  br i1 %cmp50.not, label %if.end58, label %lor.lhs.false48.do.end55_crit_edge

lor.lhs.false48.do.end55_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end55:                                         ; preds = %lor.lhs.false48.do.end55_crit_edge, %if.then44.do.end55_crit_edge
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level, align 4
  %level60 = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115, i32 2
  %26 = ptrtoint ptr %level60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %level60, align 4
  %27 = ptrtoint ptr %factor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %factor, align 4
  %add = add i32 %28, 12
  %shl = shl nuw i32 1, %add
  %chunk = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115, i32 3
  %29 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl, ptr %chunk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp62 = icmp eq i32 %25, -1
  %.str.19..str.20 = select i1 %cmp62, ptr @.str.19, ptr @.str.20
  br label %do.end73

sw.bb67:                                          ; preds = %sw.bb.sw.bb67_crit_edge, %if.end38.sw.bb67_crit_edge
  %30 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %9, ptr %str.addr, align 4
  br label %sw.bb68

sw.bb68:                                          ; preds = %sw.bb67, %if.end38.sw.bb68_crit_edge
  %level70 = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115, i32 2
  %31 = ptrtoint ptr %level70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1000000, ptr %level70, align 4
  br label %do.end73

do.end73:                                         ; preds = %sw.bb68, %if.end58, %if.end38.do.end73_crit_edge
  %pername.0 = phi ptr [ @.str.7, %if.end38.do.end73_crit_edge ], [ @.str.21, %sw.bb68 ], [ %.str.19..str.20, %if.end58 ]
  %32 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %minor, align 4
  %34 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %str.addr, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %33, ptr noundef nonnull %pername.0, ptr noundef %35) #11
  %36 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %str.addr, align 4
  %arrayidx76 = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115
  %device_names = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115, i32 4
  %38 = ptrtoint ptr %device_names to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %device_names, align 4
  %partitioned78 = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.0105115, i32 1
  %39 = ptrtoint ptr %partitioned78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %partitioned.0, ptr %partitioned78, align 4
  %40 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %minor, align 4
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx76, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.end55, %do.end28, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end28 ], [ 1, %do.end73 ], [ 0, %do.end55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %factor) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @md_run_setup() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @raid_noautodetect, align 4
  br i1 %.b, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @autodetect_raid() #12
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %0 = load i32, ptr @md_setup_ents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %ent.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.md_setup_args], ptr @md_setup_args, i32 0, i32 %ent.04
  tail call fastcc void @md_setup_drive(ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %ent.04, 1
  %1 = load i32, ptr @md_setup_ents, align 4
  %cmp = icmp slt i32 %inc, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @autodetect_raid() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  tail call void @wait_for_device_probe() #7
  %.b = load i1, ptr @raid_autopart, align 4
  %0 = zext i1 %.b to i32
  tail call void @md_autostart_arrays(i32 noundef %0) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @md_setup_drive(ptr nocapture noundef readonly %args) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %devices = alloca [28 x i32], align 4
  %ainfo = alloca %struct.mdu_array_info_s, align 4
  %name = alloca [16 x i8], align 1
  %stat = alloca %struct.kstat, align 8
  %comp_name = alloca [64 x i8], align 1
  %dinfo = alloca %struct.mdu_disk_info_s, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_names = getelementptr inbounds %struct.md_setup_args, ptr %args, i32 0, i32 4
  %0 = ptrtoint ptr %device_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_names, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %devices) #7
  %2 = call ptr @memset(ptr %devices, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ainfo) #7
  %3 = call ptr @memset(ptr %ainfo, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #7
  %partitioned = getelementptr inbounds %struct.md_setup_args, ptr %args, i32 0, i32 1
  %4 = call ptr @memset(ptr %name, i32 255, i32 16)
  %5 = ptrtoint ptr %partitioned to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %partitioned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp_major to i32))
  %7 = load i32, ptr @mdp_major, align 4
  %shl = shl i32 %7, 20
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %shl1 = shl i32 %9, 6
  %or = or i32 %shl1, %shl
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.30, i32 noundef %9)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %or4 = or i32 %11, 9437184
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.31, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mdev.0 = phi i32 [ %or, %if.then ], [ %or4, %if.else ]
  %cmp8.not223 = icmp eq ptr %1, null
  br i1 %cmp8.not223, label %if.end.cleanup159_crit_edge, label %for.body.lr.ph

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

for.body.lr.ph:                                   ; preds = %if.end
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %devname.0225 = phi ptr [ %1, %for.body.lr.ph ], [ %p.0, %for.inc.for.body_crit_edge ]
  %i.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #7
  %12 = call ptr @memset(ptr %stat, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %comp_name) #7
  %13 = call ptr @memset(ptr %comp_name, i32 255, i32 64)
  %call9 = call ptr @strchr(ptr noundef nonnull %devname.0225, i32 noundef 44)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.if.end12_crit_edge, label %if.then11

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %call9, i32 1
  %14 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %call9, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.body.if.end12_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %if.then11 ], [ null, %for.body.if.end12_crit_edge ]
  %call13 = call i32 @name_to_dev_t(ptr noundef nonnull %devname.0225) #7
  %call14 = call i32 @strncmp(ptr noundef nonnull %devname.0225, ptr noundef nonnull dereferenceable(6) @.str.32, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  %spec.select.idx = select i1 %cmp15, i32 5, i32 0
  %spec.select = getelementptr i8, ptr %devname.0225, i32 %spec.select.idx
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %comp_name, i32 noundef 63, ptr noundef nonnull @.str.33, ptr noundef %spec.select)
  %call21 = call i32 @init_stat(ptr noundef nonnull %comp_name, ptr noundef nonnull %stat, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end12
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 4
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %17)
  %cmp23 = icmp eq i16 %17, 24576
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rdev, align 4
  %and1.i = and i32 %19, 255
  %shr2.i = lshr i32 %19, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %20 = shl i32 %19, 12
  %shl.i = and i32 %20, -1048576
  %or4.i = or i32 %or.i, %shl.i
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  %dev.0 = phi i32 [ %or4.i, %if.then25 ], [ %call13, %land.lhs.true.if.end27_crit_edge ], [ %call13, %if.end12.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev.0)
  %tobool28.not = icmp eq i32 %dev.0, 0
  br i1 %tobool28.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end27
  %arrayidx = getelementptr [28 x i32], ptr %devices, i32 0, i32 %i.0224
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dev.0, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %comp_name) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #7
  %inc = add nuw nsw i32 %i.0224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %i.0224)
  %cmp = icmp ugt i32 %i.0224, 25
  %cmp8.not = icmp eq ptr %p.0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %for.end.thread234, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.thread234:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35236 = getelementptr [28 x i32], ptr %devices, i32 0, i32 %inc
  %22 = ptrtoint ptr %arrayidx35236 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx35236, align 4
  br label %do.end41

for.end:                                          ; preds = %if.end27
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %spec.select) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %comp_name) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #7
  %arrayidx35 = getelementptr [28 x i32], ptr %devices, i32 0, i32 %i.0224
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0224)
  %tobool36.not = icmp eq i32 %i.0224, 0
  br i1 %tobool36.not, label %for.end.cleanup159_crit_edge, label %for.end.do.end41_crit_edge

for.end.do.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

for.end.cleanup159_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

do.end41:                                         ; preds = %for.end.do.end41_crit_edge, %for.end.thread234
  %24 = ptrtoint ptr %device_names to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_names, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %name, ptr noundef %25) #11
  %call46 = call ptr @blkdev_get_by_dev(i32 noundef %mdev.0, i32 noundef 1, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.end55

do.end51:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %name) #11
  br label %cleanup159

if.end55:                                         ; preds = %do.end41
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %call46, i32 0, i32 17
  %26 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fops, align 8
  %cmp56.not = icmp eq ptr %29, @md_fops
  br i1 %cmp56.not, label %if.end85.critedge, label %do.end69, !prof !111

do.end69:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.42, i32 noundef %mdev.0) #7
  br label %out_blkdev_put

if.end85.critedge:                                ; preds = %if.end55
  %private_data = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 10
  %30 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data, align 8
  %reconfig_mutex.i = getelementptr inbounds %struct.mddev, ptr %31, i32 0, i32 60
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool88.not = icmp eq i32 %call.i, 0
  br i1 %tobool88.not, label %if.end96, label %do.end92

do.end92:                                         ; preds = %if.end85.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %name) #11
  br label %out_blkdev_put

if.end96:                                         ; preds = %if.end85.critedge
  %disks = getelementptr inbounds %struct.mddev, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %disks, align 4
  %cmp.i214.not = icmp eq ptr %33, %disks
  br i1 %cmp.i214.not, label %lor.lhs.false, label %if.end96.out_unlock.sink.split_crit_edge

if.end96.out_unlock.sink.split_crit_edge:         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.sink.split

lor.lhs.false:                                    ; preds = %if.end96
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %31, i32 0, i32 26
  %34 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool99.not = icmp eq i32 %35, 0
  br i1 %tobool99.not, label %if.end107, label %lor.lhs.false.out_unlock.sink.split_crit_edge

lor.lhs.false.out_unlock.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.sink.split

if.end107:                                        ; preds = %lor.lhs.false
  %level = getelementptr inbounds %struct.md_setup_args, ptr %args, i32 0, i32 2
  %36 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000000, i32 %37)
  %cmp108.not = icmp eq i32 %37, -1000000
  br i1 %cmp108.not, label %if.end107.if.end119_crit_edge, label %if.then110

if.end107.if.end119_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then110:                                       ; preds = %if.end107
  %level112 = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 4
  %38 = ptrtoint ptr %level112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %level112, align 4
  %39 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %args, align 4
  %md_minor = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 8
  %41 = ptrtoint ptr %md_minor to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %md_minor, align 4
  %not_persistent = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 9
  %42 = ptrtoint ptr %not_persistent to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %not_persistent, align 4
  %state = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 11
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %state, align 4
  %chunk = getelementptr inbounds %struct.md_setup_args, ptr %args, i32 0, i32 3
  %44 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chunk, align 4
  %chunk_size = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 17
  %46 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %chunk_size, align 4
  %raid_disks114 = getelementptr inbounds %struct.mdu_array_info_s, ptr %ainfo, i32 0, i32 7
  %47 = ptrtoint ptr %raid_disks114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %raid_disks114.promoted = load i32, ptr %raid_disks114, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then110
  %inc118226 = phi i32 [ %inc118, %while.cond.while.cond_crit_edge ], [ %raid_disks114.promoted, %if.then110 ]
  %arrayidx115 = getelementptr [28 x i32], ptr %devices, i32 0, i32 %inc118226
  %48 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx115, align 4
  %tobool116.not = icmp eq i32 %49, 0
  %inc118 = add i32 %inc118226, 1
  br i1 %tobool116.not, label %if.end119.loopexit, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end119.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %raid_disks114 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc118226, ptr %raid_disks114, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end119.loopexit, %if.end107.if.end119_crit_edge
  %call120 = call i32 @md_set_array_info(ptr noundef %31, ptr noundef nonnull %ainfo) #7
  %51 = getelementptr inbounds %struct.mdu_disk_info_s, ptr %dinfo, i32 0, i32 1
  %52 = getelementptr inbounds %struct.mdu_disk_info_s, ptr %dinfo, i32 0, i32 2
  %53 = getelementptr inbounds %struct.mdu_disk_info_s, ptr %dinfo, i32 0, i32 3
  %54 = getelementptr inbounds %struct.mdu_disk_info_s, ptr %dinfo, i32 0, i32 4
  br label %land.rhs124

land.rhs124:                                      ; preds = %if.end141.land.rhs124_crit_edge, %if.end119
  %i.1227 = phi i32 [ 0, %if.end119 ], [ %inc144, %if.end141.land.rhs124_crit_edge ]
  %arrayidx125 = getelementptr [28 x i32], ptr %devices, i32 0, i32 %i.1227
  %55 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool126.not = icmp eq i32 %56, 0
  br i1 %tobool126.not, label %land.rhs124.for.end145_crit_edge, label %for.body128

land.rhs124.for.end145_crit_edge:                 ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end145

for.body128:                                      ; preds = %land.rhs124
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dinfo) #7
  %57 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %dinfo, align 4
  %shr = lshr i32 %56, 20
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr, ptr %51, align 4
  %and132 = and i32 %56, 1048575
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and132, ptr %52, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %53, align 4
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %54, align 4
  %62 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000000, i32 %63)
  %cmp135.not = icmp eq i32 %63, -1000000
  br i1 %cmp135.not, label %for.body128.if.end141_crit_edge, label %if.then137

for.body128.if.end141_crit_edge:                  ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then137:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.1227, ptr %dinfo, align 4
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %i.1227, ptr %53, align 4
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 6, ptr %54, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %for.body128.if.end141_crit_edge
  %call142 = call i32 @md_add_new_disk(ptr noundef %31, ptr noundef nonnull %dinfo) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dinfo) #7
  %inc144 = add nuw nsw i32 %i.1227, 1
  %exitcond.not = icmp eq i32 %inc144, 28
  br i1 %exitcond.not, label %if.end141.for.end145_crit_edge, label %if.end141.land.rhs124_crit_edge

if.end141.land.rhs124_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs124

if.end141.for.end145_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end145

for.end145:                                       ; preds = %if.end141.for.end145_crit_edge, %land.rhs124.for.end145_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool146.not = icmp eq i32 %call120, 0
  br i1 %tobool146.not, label %if.end149, label %for.end145.out_unlock.sink.split_crit_edge

for.end145.out_unlock.sink.split_crit_edge:       ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.sink.split

if.end149:                                        ; preds = %for.end145
  %call148 = call i32 @do_md_run(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool150.not = icmp eq i32 %call148, 0
  br i1 %tobool150.not, label %if.end149.out_unlock_crit_edge, label %if.end149.out_unlock.sink.split_crit_edge

if.end149.out_unlock.sink.split_crit_edge:        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.sink.split

if.end149.out_unlock_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

out_unlock.sink.split:                            ; preds = %if.end149.out_unlock.sink.split_crit_edge, %for.end145.out_unlock.sink.split_crit_edge, %lor.lhs.false.out_unlock.sink.split_crit_edge, %if.end96.out_unlock.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.47, %if.end96.out_unlock.sink.split_crit_edge ], [ @.str.47, %lor.lhs.false.out_unlock.sink.split_crit_edge ], [ @.str.50, %for.end145.out_unlock.sink.split_crit_edge ], [ @.str.50, %if.end149.out_unlock.sink.split_crit_edge ]
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink, ptr noundef nonnull %name) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.end149.out_unlock_crit_edge
  call void @mddev_unlock(ptr noundef %31) #7
  br label %out_blkdev_put

out_blkdev_put:                                   ; preds = %out_unlock, %do.end92, %do.end69
  call void @blkdev_put(ptr noundef %call46, i32 noundef 1) #7
  br label %cleanup159

cleanup159:                                       ; preds = %out_blkdev_put, %do.end51, %for.end.cleanup159_crit_edge, %if.end.cleanup159_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ainfo) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %devices) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_autostart_arrays(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_dev_t(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_stat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_set_array_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_add_new_disk(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_md_run(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__setup_raid_setup, !1, !"__setup_raid_setup", i1 false, i1 false}
!1 = !{!"../drivers/md/md-autodetect.c", i32 264, i32 1}
!2 = !{ptr @__setup_md_setup, !3, !"__setup_md_setup", i1 false, i1 false}
!3 = !{!"../drivers/md/md-autodetect.c", i32 265, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/md-autodetect.c", i32 285, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @md_run_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @md_run_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"raid_noautodetect", i1 false, i1 false}
!11 = !{!"../drivers/md/md-autodetect.c", i32 24, i32 23}
!12 = !{ptr @md_setup_args, !13, !"md_setup_args", i1 false, i1 false}
!13 = !{!"../drivers/md/md-autodetect.c", i32 36, i32 3}
!14 = !{ptr @md_setup_ents, !15, !"md_setup_ents", i1 false, i1 false}
!15 = !{!"../drivers/md/md-autodetect.c", i32 38, i32 12}
!16 = !{ptr @__setup_str_raid_setup, !1, !"__setup_str_raid_setup", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/md-autodetect.c", i32 251, i32 21}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/md-autodetect.c", i32 253, i32 21}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/md-autodetect.c", i32 255, i32 20}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/md-autodetect.c", i32 257, i32 20}
!25 = distinct !{null, !26, !"raid_autopart", i1 false, i1 false}
!26 = !{!"../drivers/md/md-autodetect.c", i32 28, i32 23}
!27 = !{ptr @__setup_str_md_setup, !3, !"__setup_str_md_setup", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/md-autodetect.c", i32 63, i32 18}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/md-autodetect.c", i32 72, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @md_setup._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @md_setup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/md-autodetect.c", i32 79, i32 4}
!37 = !{ptr @md_setup._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @md_setup._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/md-autodetect.c", i32 84, i32 3}
!42 = !{ptr @md_setup._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @md_setup._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @md_setup._entry.17, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/md/md-autodetect.c", i32 94, i32 5}
!46 = !{ptr @md_setup._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/md-autodetect.c", i32 100, i32 15}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/md-autodetect.c", i32 102, i32 15}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/md-autodetect.c", i32 111, i32 11}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/md-autodetect.c", i32 114, i32 2}
!55 = !{ptr @md_setup._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @md_setup._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/md-autodetect.c", i32 273, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @autodetect_raid._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @autodetect_raid._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/md-autodetect.c", i32 274, i32 2}
!64 = !{ptr @autodetect_raid._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @autodetect_raid._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/md-autodetect.c", i32 135, i32 17}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/md-autodetect.c", i32 138, i32 17}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/md-autodetect.c", i32 152, i32 24}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/md-autodetect.c", i32 154, i32 27}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/md-autodetect.c", i32 158, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @md_setup_drive._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @md_setup_drive._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/md-autodetect.c", i32 170, i32 2}
!81 = !{ptr @md_setup_drive._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @md_setup_drive._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/md-autodetect.c", i32 174, i32 3}
!85 = !{ptr @md_setup_drive._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @md_setup_drive._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/md-autodetect.c", i32 179, i32 6}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/md-autodetect.c", i32 188, i32 3}
!91 = !{ptr @md_setup_drive._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @md_setup_drive._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/md-autodetect.c", i32 193, i32 3}
!95 = !{ptr @md_setup_drive._entry.46, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @md_setup_drive._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/md-autodetect.c", i32 230, i32 3}
!99 = !{ptr @md_setup_drive._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @md_setup_drive._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{!"branch_weights", i32 2000, i32 1}
