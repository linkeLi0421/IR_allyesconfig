; ModuleID = '/llk/IR_all_yes/block/partitions/efi.c_pt.bc'
source_filename = "../block/partitions/efi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.guid_t = type { [16 x i8] }
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
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct._gpt_header = type <{ i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.guid_t, i64, i32, i32, i32 }>
%struct._gpt_entry = type { %struct.guid_t, %struct.guid_t, i64, i64, %struct._gpt_entry_attributes, [36 x i16] }
%struct._gpt_entry_attributes = type { i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sector = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct._legacy_mbr = type <{ [440 x i8], i32, i16, [4 x %struct._gpt_mbr_record], i16 }>
%struct._gpt_mbr_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@__setup_str_force_gpt_fn = internal constant [4 x i8] c"gpt\00", section ".init.rodata", align 1
@__setup_force_gpt_fn = internal global %struct.obs_kernel_param { ptr @__setup_str_force_gpt_fn, ptr @force_gpt_fn, i32 0 }, section ".init.setup", align 4
@efi_partition.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"efi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efi_partition\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/partitions/efi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GUID Partition Table is valid!  Yea!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@force_gpt = internal global { i1, [31 x i8] } zeroinitializer, align 32
@find_valid_gpt.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_valid_gpt\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device has a %s MBR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"protective\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hybrid\00", [25 x i8] zeroinitializer }, align 32
@find_valid_gpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Alternate GPT is invalid, using primary GPT.\0A\00", [48 x i8] zeroinitializer }, align 32
@find_valid_gpt._entry_ptr = internal global ptr @find_valid_gpt._entry, section ".printk_index", align 4
@find_valid_gpt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Primary GPT is invalid, using alternate GPT.\0A\00", [48 x i8] zeroinitializer }, align 32
@find_valid_gpt._entry_ptr.12 = internal global ptr @find_valid_gpt._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@is_pmbr_valid.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"is_pmbr_valid\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"GPT: mbr size in lba (%u) different than whole disk (%u).\0A\00", [37 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"is_gpt_valid\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"GUID Partition Table Header signature is wrong:%lld != %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"GUID Partition Table Header size is too large: %u > %u\0A\00", [40 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"GUID Partition Table Header size is too small: %u < %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"GUID Partition Table Header CRC is wrong: %x != %x\0A\00", [44 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPT my_lba incorrect: %lld != %lld\0A\00", [60 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GPT: first_usable_lba incorrect: %lld > %lld\0A\00", [50 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GPT: last_usable_lba incorrect: %lld > %lld\0A\00", [51 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@is_gpt_valid.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GUID Partition Entry Size check failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"GUID Partition Table is too large: %llu > %lu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@is_gpt_valid.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.26, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GUID Partition Entry Array CRC check failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@compare_gpts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014GPT:Primary header LBA != Alt. header alternate_lba\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"compare_gpts\00", [19 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr = internal global ptr @compare_gpts._entry, section ".printk_index", align 4
@compare_gpts._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014GPT:%lld != %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.31 = internal global ptr @compare_gpts._entry.29, section ".printk_index", align 4
@compare_gpts._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014GPT:Primary header alternate_lba != Alt. header my_lba\0A\00", [38 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.34 = internal global ptr @compare_gpts._entry.32, section ".printk_index", align 4
@compare_gpts._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.36 = internal global ptr @compare_gpts._entry.35, section ".printk_index", align 4
@compare_gpts._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014GPT:first_usable_lbas don't match.\0A\00", [58 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.39 = internal global ptr @compare_gpts._entry.37, section ".printk_index", align 4
@compare_gpts._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.41 = internal global ptr @compare_gpts._entry.40, section ".printk_index", align 4
@compare_gpts._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014GPT:last_usable_lbas don't match.\0A\00", [59 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.44 = internal global ptr @compare_gpts._entry.42, section ".printk_index", align 4
@compare_gpts._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.46 = internal global ptr @compare_gpts._entry.45, section ".printk_index", align 4
@compare_gpts._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014GPT:disk_guids don't match.\0A\00", [33 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.49 = internal global ptr @compare_gpts._entry.47, section ".printk_index", align 4
@compare_gpts._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.28, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014GPT:num_partition_entries don't match: 0x%x != 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.52 = internal global ptr @compare_gpts._entry.50, section ".printk_index", align 4
@compare_gpts._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.28, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014GPT:sizeof_partition_entry values don't match: 0x%x != 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.55 = internal global ptr @compare_gpts._entry.53, section ".printk_index", align 4
@compare_gpts._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.28, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014GPT:partition_entry_array_crc32 values don't match: 0x%x != 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.58 = internal global ptr @compare_gpts._entry.56, section ".printk_index", align 4
@compare_gpts._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.28, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014GPT:Primary header thinks Alt. header is not at the end of the disk.\0A\00", [56 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.61 = internal global ptr @compare_gpts._entry.59, section ".printk_index", align 4
@compare_gpts._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.63 = internal global ptr @compare_gpts._entry.62, section ".printk_index", align 4
@compare_gpts._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.28, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014GPT:Alternate GPT header not at the end of the disk.\0A\00", [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.66 = internal global ptr @compare_gpts._entry.64, section ".printk_index", align 4
@compare_gpts._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.68 = internal global ptr @compare_gpts._entry.67, section ".printk_index", align 4
@compare_gpts._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.28, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014GPT: Use GNU Parted to correct GPT errors.\0A\00", [50 x i8] zeroinitializer }, align 32
@compare_gpts._entry_ptr.71 = internal global ptr @compare_gpts._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 238]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 238]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 238]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 726, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 755, i32 25 }
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"force_gpt\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 610, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 647, i32 25 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 655, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 717, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 217, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 348, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 358, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 366, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 378, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 387, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 398, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 404, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 417, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 425, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 437, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 487, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 488, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 494, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 495, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 502, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 503, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 510, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 511, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 517, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 522, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 530, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 538, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 545, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 546, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 553, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 554, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private constant [26 x i8] c"../block/partitions/efi.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 561, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 45, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [23 x i8] c"../include/linux/efi.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 650, i32 15 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__setup_force_gpt_fn, ptr @compare_gpts._entry, ptr @compare_gpts._entry.29, ptr @compare_gpts._entry.32, ptr @compare_gpts._entry.35, ptr @compare_gpts._entry.37, ptr @compare_gpts._entry.40, ptr @compare_gpts._entry.42, ptr @compare_gpts._entry.45, ptr @compare_gpts._entry.47, ptr @compare_gpts._entry.50, ptr @compare_gpts._entry.53, ptr @compare_gpts._entry.56, ptr @compare_gpts._entry.59, ptr @compare_gpts._entry.62, ptr @compare_gpts._entry.64, ptr @compare_gpts._entry.67, ptr @compare_gpts._entry.69, ptr @compare_gpts._entry_ptr, ptr @compare_gpts._entry_ptr.31, ptr @compare_gpts._entry_ptr.34, ptr @compare_gpts._entry_ptr.36, ptr @compare_gpts._entry_ptr.39, ptr @compare_gpts._entry_ptr.41, ptr @compare_gpts._entry_ptr.44, ptr @compare_gpts._entry_ptr.46, ptr @compare_gpts._entry_ptr.49, ptr @compare_gpts._entry_ptr.52, ptr @compare_gpts._entry_ptr.55, ptr @compare_gpts._entry_ptr.58, ptr @compare_gpts._entry_ptr.61, ptr @compare_gpts._entry_ptr.63, ptr @compare_gpts._entry_ptr.66, ptr @compare_gpts._entry_ptr.68, ptr @compare_gpts._entry_ptr.71, ptr @find_valid_gpt._entry, ptr @find_valid_gpt._entry.10, ptr @find_valid_gpt._entry_ptr, ptr @find_valid_gpt._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @force_gpt, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.38, ptr @.str.43, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.65, ptr @.str.70, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_gpt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_valid_gpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_valid_gpt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_gpts._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @force_gpt_fn(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @force_gpt, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efi_partition(ptr noundef %state) local_unnamed_addr #1 align 64 {
entry:
  %left.i = alloca %struct.guid_t, align 4
  %right.i = alloca %struct.guid_t, align 4
  %tmp.i = alloca [44 x i8], align 1
  %left.i.i = alloca %struct.guid_t, align 4
  %right.i.i = alloca %struct.guid_t, align 4
  %gpt = alloca ptr, align 4
  %ptes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpt) #14
  %0 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gpt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptes) #14
  %1 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ptes, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

entry.queue_logical_block_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %.op = lshr i32 %7, 9
  %phi.bo = select i1 %tobool2.not.i, i32 1, i32 %.op
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %entry.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 1, %entry.queue_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i ]
  %call1 = call fastcc i32 @find_valid_gpt(ptr noundef %state, ptr noundef nonnull %gpt, ptr noundef nonnull %ptes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %queue_logical_block_size.exit.if.then_crit_edge, label %lor.lhs.false

queue_logical_block_size.exit.if.then_crit_edge:  ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %queue_logical_block_size.exit
  %8 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpt, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptes, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false3.if.then_crit_edge, label %do.body

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %queue_logical_block_size.exit.if.then_crit_edge
  %12 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpt, align 4
  call void @kfree(ptr noundef %13) #14
  %14 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptes, align 4
  call void @kfree(ptr noundef %15) #14
  br label %cleanup64

do.body:                                          ; preds = %lor.lhs.false3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efi_partition.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efi_partition, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !143

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efi_partition.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.3) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %num_partition_entries to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_partition_entries, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp110.not = icmp eq i32 %17, 0
  br i1 %cmp110.not, label %do.end.for.end_crit_edge, label %land.rhs.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %do.end
  %left.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 1
  %left.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 2
  %left.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 3
  %conv = zext i32 %retval1.0.i to i64
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %left.coerce.fca.1.gep.i = getelementptr inbounds [4 x i32], ptr %left.i, i32 0, i32 1
  %left.coerce.fca.2.gep.i = getelementptr inbounds [4 x i32], ptr %left.i, i32 0, i32 2
  %left.coerce.fca.3.gep.i = getelementptr inbounds [4 x i32], ptr %left.i, i32 0, i32 3
  %right.coerce.fca.1.gep.i = getelementptr inbounds [4 x i32], ptr %right.i, i32 0, i32 1
  %right.coerce.fca.2.gep.i = getelementptr inbounds [4 x i32], ptr %right.i, i32 0, i32 2
  %right.coerce.fca.3.gep.i = getelementptr inbounds [4 x i32], ptr %right.i, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0111 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit, align 4
  %sub = add i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111, i32 %sub)
  %cmp11 = icmp ult i32 %i.0111, %sub
  br i1 %cmp11, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %20 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptes, align 4
  %arrayidx = getelementptr %struct._gpt_entry, ptr %21, i32 %i.0111
  %starting_lba = getelementptr %struct._gpt_entry, ptr %21, i32 %i.0111, i32 2
  %22 = ptrtoint ptr %starting_lba to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %starting_lba, align 1
  %ending_lba = getelementptr %struct._gpt_entry, ptr %21, i32 %i.0111, i32 3
  %24 = ptrtoint ptr %ending_lba to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %ending_lba, align 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %31, 9
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 9
  %32 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %for.body.if.else162.i.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.else162.i.i.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else162.i.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 37, i32 9
  %34 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i.i = icmp eq i32 %35, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %35
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %land.lhs.true.i.i, %for.body.if.else162.i.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %for.body.if.else162.i.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !144

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %shl.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %retval1.0.i.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %last_lba.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i.i, i64 %shl.i.i) #17, !srcloc !145
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %36, 1
  br label %last_lba.exit

last_lba.exit:                                    ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %sub.i = add i64 %dividend.addr.0.i.i.i, -1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %.unpack.i = load i32, ptr %arrayidx, align 1
  %.elt21.i = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 1
  %38 = ptrtoint ptr %.elt21.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %.unpack22.i = load i32, ptr %.elt21.i, align 1
  %.elt23.i = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 2
  %39 = ptrtoint ptr %.elt23.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %.unpack24.i = load i32, ptr %.elt23.i, align 1
  %.elt25.i = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 3
  %40 = ptrtoint ptr %.elt25.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %.unpack26.i = load i32, ptr %.elt25.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %right.i.i) #14
  %41 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.unpack.i, ptr %left.i.i, align 4
  %42 = ptrtoint ptr %left.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.unpack22.i, ptr %left.coerce.fca.1.gep.i.i, align 4
  %43 = ptrtoint ptr %left.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.unpack24.i, ptr %left.coerce.fca.2.gep.i.i, align 4
  %44 = ptrtoint ptr %left.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.unpack26.i, ptr %left.coerce.fca.3.gep.i.i, align 4
  %45 = call ptr @memset(ptr %right.i.i, i32 0, i32 16)
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %left.i.i, ptr noundef nonnull dereferenceable(16) %right.i.i, i32 16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %right.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i98 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i98, label %last_lba.exit.cleanup_crit_edge, label %lor.lhs.false.i

last_lba.exit.cleanup_crit_edge:                  ; preds = %last_lba.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %last_lba.exit
  %46 = ptrtoint ptr %starting_lba to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %starting_lba, align 1
  %48 = call i64 @llvm.bswap.i64(i64 %47) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %sub.i)
  %cmp.i = icmp ugt i64 %48, %sub.i
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_pte_valid.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_pte_valid.exit:                                ; preds = %lor.lhs.false.i
  %49 = ptrtoint ptr %ending_lba to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %ending_lba, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %sub.i)
  %cmp17.i.not = icmp ugt i64 %51, %sub.i
  br i1 %cmp17.i.not, label %is_pte_valid.exit.cleanup_crit_edge, label %if.end22

is_pte_valid.exit.cleanup_crit_edge:              ; preds = %is_pte_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %is_pte_valid.exit
  %add23 = add nuw i32 %i.0111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add23)
  %cmp.i101 = icmp sgt i32 %19, %add23
  br i1 %cmp.i101, label %if.then.i, label %if.end22.put_partition.exit_crit_edge

if.end22.put_partition.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %52 = call i64 @llvm.bswap.i64(i64 %25)
  %53 = call i64 @llvm.bswap.i64(i64 %23)
  %sub15 = sub i64 1, %53
  %add = add i64 %sub15, %52
  %mul25 = mul i64 %add, %conv
  %mul = mul i64 %53, %conv
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #14
  %54 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %55 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %56, i32 %add23
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %mul, ptr %arrayidx.i, align 8
  %58 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %58, i32 %add23, i32 1
  %59 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul25, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.72, ptr noundef %name.i, i32 noundef %add23) #14
  %60 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %61, ptr noundef nonnull %tmp.i, i32 noundef 4096) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #14
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.end22.put_partition.exit_crit_edge
  %62 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ptes, align 4
  %arrayidx26 = getelementptr %struct._gpt_entry, ptr %63, i32 %i.0111
  %64 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %.unpack = load i32, ptr %arrayidx26, align 1
  %.elt92 = getelementptr inbounds [4 x i32], ptr %arrayidx26, i32 0, i32 1
  %65 = ptrtoint ptr %.elt92 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %.unpack93 = load i32, ptr %.elt92, align 1
  %.elt94 = getelementptr inbounds [4 x i32], ptr %arrayidx26, i32 0, i32 2
  %66 = ptrtoint ptr %.elt94 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %.unpack95 = load i32, ptr %.elt94, align 1
  %.elt96 = getelementptr inbounds [4 x i32], ptr %arrayidx26, i32 0, i32 3
  %67 = ptrtoint ptr %.elt96 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %.unpack97 = load i32, ptr %.elt96, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %right.i)
  %68 = ptrtoint ptr %left.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.unpack, ptr %left.i, align 4
  %69 = ptrtoint ptr %left.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.unpack93, ptr %left.coerce.fca.1.gep.i, align 4
  %70 = ptrtoint ptr %left.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.unpack95, ptr %left.coerce.fca.2.gep.i, align 4
  %71 = ptrtoint ptr %left.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.unpack97, ptr %left.coerce.fca.3.gep.i, align 4
  %72 = ptrtoint ptr %right.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 260611489, ptr %right.i, align 4
  %73 = ptrtoint ptr %right.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -66766003, ptr %right.coerce.fca.1.gep.i, align 4
  %74 = ptrtoint ptr %right.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1610189761, ptr %right.coerce.fca.2.gep.i, align 4
  %75 = ptrtoint ptr %right.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 260346142, ptr %right.coerce.fca.3.gep.i, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %left.i, ptr noundef nonnull dereferenceable(16) %right.i, i32 16) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %right.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.then44, label %put_partition.exit.if.end47_crit_edge

put_partition.exit.if.end47_crit_edge:            ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then44:                                        ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parts.i, align 4
  %flags = getelementptr %struct.anon.83, ptr %77, i32 %add23, i32 2
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %flags, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %put_partition.exit.if.end47_crit_edge
  %79 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parts.i, align 4
  %info51 = getelementptr %struct.anon.83, ptr %80, i32 %add23, i32 4
  %81 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptes, align 4
  %unique_partition_guid = getelementptr %struct._gpt_entry, ptr %82, i32 %i.0111, i32 1
  %call.i103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %info51, ptr noundef nonnull @.str.73, ptr noundef %unique_partition_guid) #14
  %83 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ptes, align 4
  %partition_name = getelementptr %struct._gpt_entry, ptr %84, i32 %i.0111, i32 5
  %volname = getelementptr %struct.anon.83, ptr %80, i32 %add23, i32 4, i32 1
  %arrayidx.i104 = getelementptr i8, ptr %volname, i32 36
  %85 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx.i104, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end47
  %i.01.i = phi i32 [ 0, %if.end47 ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %arrayidx1.i = getelementptr i16, ptr %partition_name, i32 %i.01.i
  %86 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx1.i, align 2
  %88 = lshr i16 %87, 8
  %conv2.i = trunc i16 %88 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %87)
  %tobool.not.i105 = icmp ult i16 %87, 256
  br i1 %tobool.not.i105, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i106

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i106:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv3.i = zext i16 %88 to i32
  %arrayidx5.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv3.i
  %89 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx5.i, align 1
  %91 = and i8 %90, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp8.not.i = icmp eq i8 %91, 0
  %spec.store.select.i = select i1 %cmp8.not.i, i8 33, i8 %conv2.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i106, %while.body.i.if.end.i_crit_edge
  %c.0.i = phi i8 [ %spec.store.select.i, %land.lhs.true.i106 ], [ %conv2.i, %while.body.i.if.end.i_crit_edge ]
  %arrayidx10.i = getelementptr i8, ptr %volname, i32 %i.01.i
  %92 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %c.0.i, ptr %arrayidx10.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 36
  br i1 %exitcond.not.i, label %utf16_le_to_7bit.exit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

utf16_le_to_7bit.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parts.i, align 4
  %has_info = getelementptr %struct.anon.83, ptr %94, i32 %add23, i32 3
  %95 = ptrtoint ptr %has_info to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %has_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %utf16_le_to_7bit.exit, %is_pte_valid.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %last_lba.exit.cleanup_crit_edge
  %inc = add nuw i32 %i.0111, 1
  %96 = ptrtoint ptr %num_partition_entries to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %num_partition_entries, align 1
  %98 = call i32 @llvm.bswap.i32(i32 %97)
  %cmp = icmp ult i32 %inc, %98
  br i1 %cmp, label %cleanup.land.rhs_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.rhs.for.end_crit_edge, %do.end.for.end_crit_edge
  %99 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ptes, align 4
  call void @kfree(ptr noundef %100) #14
  call void @kfree(ptr noundef nonnull %9) #14
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %101 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pp_buf, align 4
  %call63 = call i32 @strlcat(ptr noundef %102, ptr noundef nonnull @.str.4, i32 noundef 4096) #14
  br label %cleanup64

cleanup64:                                        ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptes) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpt) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_valid_gpt(ptr noundef %state, ptr nocapture noundef writeonly %gpt, ptr noundef writeonly %ptes) unnamed_addr #1 align 64 {
entry:
  %left.i.i = alloca %struct.guid_t, align 4
  %right.i.i = alloca %struct.guid_t, align 4
  %pgpt = alloca ptr, align 4
  %agpt = alloca ptr, align 4
  %pptes = alloca ptr, align 4
  %aptes = alloca ptr, align 4
  %agpt_sector = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgpt) #14
  %0 = ptrtoint ptr %pgpt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pgpt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agpt) #14
  %1 = ptrtoint ptr %agpt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %agpt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pptes) #14
  %2 = ptrtoint ptr %pptes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pptes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aptes) #14
  %3 = ptrtoint ptr %aptes to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %aptes, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %fops2 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fops2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops2, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %tobool.not = icmp eq ptr %ptes, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl.i.i = shl i64 %11, 9
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.if.else162.i.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.else162.i.i.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else162.i.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 9
  %14 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %15
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %land.lhs.true.i.i, %if.end.if.else162.i.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end.if.else162.i.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !144

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %shl.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %retval1.0.i.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %last_lba.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i.i, i64 %shl.i.i) #17, !srcloc !145
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %16, 1
  br label %last_lba.exit

last_lba.exit:                                    ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %sub.i = add i64 %dividend.addr.0.i.i.i, -1
  %.b108 = load i1, ptr @force_gpt, align 4
  br i1 %.b108, label %last_lba.exit.if.end23_crit_edge, label %if.then7

last_lba.exit.if.end23_crit_edge:                 ; preds = %last_lba.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then7:                                         ; preds = %last_lba.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 512) #20
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then7.fail_crit_edge, label %if.end11

if.then7.fail_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end11:                                         ; preds = %if.then7
  %call12 = tail call fastcc i32 @read_lba(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 512)
  %call13 = tail call fastcc i32 @is_pmbr_valid(ptr noundef nonnull %call7.i.i, i64 noundef %11)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.fail_crit_edge, label %do.body

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_valid_gpt.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_valid_gpt, %if.then21)) #14
          to label %if.end23 [label %if.then21], !srcloc !143

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp eq i32 %call13, 1
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_valid_gpt.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body, %last_lba.exit.if.end23_crit_edge
  %call24 = call fastcc i32 @is_gpt_valid(ptr noundef %state, i64 noundef 1, ptr noundef nonnull %pgpt, ptr noundef nonnull %pptes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.land.lhs.true_crit_edge, label %if.then26

if.end23.land.lhs.true_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then26:                                        ; preds = %if.end23
  %18 = ptrtoint ptr %pgpt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpt, align 4
  %alternate_lba = getelementptr inbounds %struct._gpt_header, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %alternate_lba to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %alternate_lba, align 1
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %call27 = call fastcc i32 @is_gpt_valid(ptr noundef %state, i64 noundef %22, ptr noundef nonnull %agpt, ptr noundef nonnull %aptes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %phi.cmp = icmp eq i32 %call27, 0
  br i1 %phi.cmp, label %if.then26.land.lhs.true_crit_edge, label %if.then26.if.end51_crit_edge

if.then26.if.end51_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %if.end23.land.lhs.true_crit_edge
  %.b107 = load i1, ptr @force_gpt, align 4
  br i1 %.b107, label %if.then31, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then31:                                        ; preds = %land.lhs.true
  %call32 = call fastcc i32 @is_gpt_valid(ptr noundef %state, i64 noundef %sub.i, ptr noundef nonnull %agpt, ptr noundef nonnull %aptes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %phi.cmp109 = icmp eq i32 %call32, 0
  br i1 %phi.cmp109, label %land.lhs.true35, label %if.then31.if.end51_crit_edge

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.lhs.true35:                                  ; preds = %if.then31
  %.b.pr = load i1, ptr @force_gpt, align 4
  br i1 %.b.pr, label %land.lhs.true37, label %land.lhs.true35.if.end46_crit_edge

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %alternative_gpt_sector = getelementptr inbounds %struct.block_device_operations, ptr %7, i32 0, i32 16
  %23 = ptrtoint ptr %alternative_gpt_sector to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %alternative_gpt_sector, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %land.lhs.true37.if.end46_crit_edge, label %if.then39

land.lhs.true37.if.end46_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then39:                                        ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agpt_sector) #14
  %25 = ptrtoint ptr %agpt_sector to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %agpt_sector, align 8, !annotation !146
  %call41 = call i32 %24(ptr noundef %5, ptr noundef nonnull %agpt_sector) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %agpt_sector to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %agpt_sector, align 8
  %call44 = call fastcc i32 @is_gpt_valid(ptr noundef %state, i64 noundef %27, ptr noundef nonnull %agpt, ptr noundef nonnull %aptes)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then39.if.end45_crit_edge
  %good_agpt.2 = phi i32 [ 0, %if.then39.if.end45_crit_edge ], [ %call44, %if.then43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agpt_sector) #14
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true37.if.end46_crit_edge, %land.lhs.true35.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge
  %good_agpt.3 = phi i32 [ %good_agpt.2, %if.end45 ], [ 0, %land.lhs.true37.if.end46_crit_edge ], [ 0, %land.lhs.true35.if.end46_crit_edge ], [ 0, %land.lhs.true.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good_agpt.3)
  %tobool49.not = icmp eq i32 %good_agpt.3, 0
  %or.cond = select i1 %tobool25.not, i1 %tobool49.not, i1 false
  br i1 %or.cond, label %if.end46.fail_crit_edge, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end51:                                         ; preds = %if.end46.if.end51_crit_edge, %if.then31.if.end51_crit_edge, %if.then26.if.end51_crit_edge
  %tobool49.not116 = phi i1 [ %tobool49.not, %if.end46.if.end51_crit_edge ], [ false, %if.then26.if.end51_crit_edge ], [ false, %if.then31.if.end51_crit_edge ]
  %28 = ptrtoint ptr %pgpt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pgpt, align 4
  %30 = ptrtoint ptr %agpt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agpt, align 4
  %tobool.not.i = icmp eq ptr %29, null
  %tobool1.not.i = icmp eq ptr %31, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end51.compare_gpts.exit_crit_edge, label %if.end.i

if.end51.compare_gpts.exit_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %compare_gpts.exit

if.end.i:                                         ; preds = %if.end51
  %my_lba.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %my_lba.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %my_lba.i, align 1
  %alternate_lba.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 6
  %34 = ptrtoint ptr %alternate_lba.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %alternate_lba.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp.not.i = icmp eq i64 %33, %35
  br i1 %cmp.not.i, label %if.end.i.if.end10.i_crit_edge, label %do.end.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #21
  %36 = ptrtoint ptr %my_lba.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %my_lba.i, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #14
  %39 = ptrtoint ptr %alternate_lba.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %alternate_lba.i, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #14
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %38, i64 noundef %41) #21
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge
  %error_found.0.i = phi i32 [ 1, %do.end.i ], [ 0, %if.end.i.if.end10.i_crit_edge ]
  %alternate_lba11.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 6
  %42 = ptrtoint ptr %alternate_lba11.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %alternate_lba11.i, align 1
  %my_lba12.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 5
  %44 = ptrtoint ptr %my_lba12.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %my_lba12.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp13.not.i = icmp eq i64 %43, %45
  br i1 %cmp13.not.i, label %if.end10.i.if.end28.i_crit_edge, label %do.end17.i

if.end10.i.if.end28.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #21
  %46 = ptrtoint ptr %alternate_lba11.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %alternate_lba11.i, align 1
  %48 = call i64 @llvm.bswap.i64(i64 %47) #14
  %49 = ptrtoint ptr %my_lba12.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %my_lba12.i, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50) #14
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %48, i64 noundef %51) #21
  %inc27.i = add nuw nsw i32 %error_found.0.i, 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end17.i, %if.end10.i.if.end28.i_crit_edge
  %error_found.1.i = phi i32 [ %inc27.i, %do.end17.i ], [ %error_found.0.i, %if.end10.i.if.end28.i_crit_edge ]
  %first_usable_lba.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 7
  %52 = ptrtoint ptr %first_usable_lba.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %first_usable_lba.i, align 1
  %first_usable_lba29.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 7
  %54 = ptrtoint ptr %first_usable_lba29.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %first_usable_lba29.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %55)
  %cmp30.not.i = icmp eq i64 %53, %55
  br i1 %cmp30.not.i, label %if.end28.i.if.end45.i_crit_edge, label %do.end34.i

if.end28.i.if.end45.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #21
  %56 = ptrtoint ptr %first_usable_lba.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %first_usable_lba.i, align 1
  %58 = call i64 @llvm.bswap.i64(i64 %57) #14
  %59 = ptrtoint ptr %first_usable_lba29.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %first_usable_lba29.i, align 1
  %61 = call i64 @llvm.bswap.i64(i64 %60) #14
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %58, i64 noundef %61) #21
  %inc44.i = add nuw nsw i32 %error_found.1.i, 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end34.i, %if.end28.i.if.end45.i_crit_edge
  %error_found.2.i = phi i32 [ %inc44.i, %do.end34.i ], [ %error_found.1.i, %if.end28.i.if.end45.i_crit_edge ]
  %last_usable_lba.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 8
  %62 = ptrtoint ptr %last_usable_lba.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %last_usable_lba.i, align 1
  %last_usable_lba46.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 8
  %64 = ptrtoint ptr %last_usable_lba46.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %last_usable_lba46.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %65)
  %cmp47.not.i = icmp eq i64 %63, %65
  br i1 %cmp47.not.i, label %if.end45.i.if.end62.i_crit_edge, label %do.end51.i

if.end45.i.if.end62.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #21
  %66 = ptrtoint ptr %last_usable_lba.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %last_usable_lba.i, align 1
  %68 = call i64 @llvm.bswap.i64(i64 %67) #14
  %69 = ptrtoint ptr %last_usable_lba46.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %last_usable_lba46.i, align 1
  %71 = call i64 @llvm.bswap.i64(i64 %70) #14
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %68, i64 noundef %71) #21
  %inc61.i = add nuw nsw i32 %error_found.2.i, 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end51.i, %if.end45.i.if.end62.i_crit_edge
  %error_found.3.i = phi i32 [ %inc61.i, %do.end51.i ], [ %error_found.2.i, %if.end45.i.if.end62.i_crit_edge ]
  %disk_guid.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 9
  %disk_guid63.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 9
  %72 = ptrtoint ptr %disk_guid.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %.unpack.i = load i32, ptr %disk_guid.i, align 1
  %.elt203.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 9, i32 0, i32 4
  %73 = ptrtoint ptr %.elt203.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %.unpack204.i = load i32, ptr %.elt203.i, align 1
  %.elt205.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 9, i32 0, i32 8
  %74 = ptrtoint ptr %.elt205.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %.unpack206.i = load i32, ptr %.elt205.i, align 1
  %.elt207.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 9, i32 0, i32 12
  %75 = ptrtoint ptr %.elt207.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %.unpack208.i = load i32, ptr %.elt207.i, align 1
  %76 = ptrtoint ptr %disk_guid63.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %.unpack209.i = load i32, ptr %disk_guid63.i, align 1
  %.elt210.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 9, i32 0, i32 4
  %77 = ptrtoint ptr %.elt210.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %.unpack211.i = load i32, ptr %.elt210.i, align 1
  %.elt212.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 9, i32 0, i32 8
  %78 = ptrtoint ptr %.elt212.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %.unpack213.i = load i32, ptr %.elt212.i, align 1
  %.elt214.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 9, i32 0, i32 12
  %79 = ptrtoint ptr %.elt214.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %.unpack215.i = load i32, ptr %.elt214.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %right.i.i) #14
  %80 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.unpack.i, ptr %left.i.i, align 4
  %left.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %left.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.unpack204.i, ptr %left.coerce.fca.1.gep.i.i, align 4
  %left.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %left.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.unpack206.i, ptr %left.coerce.fca.2.gep.i.i, align 4
  %left.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %left.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %left.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.unpack208.i, ptr %left.coerce.fca.3.gep.i.i, align 4
  %84 = ptrtoint ptr %right.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.unpack209.i, ptr %right.i.i, align 4
  %right.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %right.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %right.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.unpack211.i, ptr %right.coerce.fca.1.gep.i.i, align 4
  %right.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %right.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %right.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.unpack213.i, ptr %right.coerce.fca.2.gep.i.i, align 4
  %right.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %right.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %right.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.unpack215.i, ptr %right.coerce.fca.3.gep.i.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %left.i.i, ptr noundef nonnull dereferenceable(16) %right.i.i, i32 16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %right.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool66.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool66.not.i, label %if.end62.i.if.end74.i_crit_edge, label %do.end70.i

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

do.end70.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #21
  %inc73.i = add nuw nsw i32 %error_found.3.i, 1
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end70.i, %if.end62.i.if.end74.i_crit_edge
  %error_found.4.i = phi i32 [ %inc73.i, %do.end70.i ], [ %error_found.3.i, %if.end62.i.if.end74.i_crit_edge ]
  %num_partition_entries.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 11
  %88 = ptrtoint ptr %num_partition_entries.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %num_partition_entries.i, align 1
  %num_partition_entries75.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 11
  %90 = ptrtoint ptr %num_partition_entries75.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %num_partition_entries75.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp76.not.i = icmp eq i32 %89, %91
  br i1 %cmp76.not.i, label %if.end74.i.if.end86.i_crit_edge, label %do.end80.i

if.end74.i.if.end86.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86.i

do.end80.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  %93 = call i32 @llvm.bswap.i32(i32 %89) #14
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %93, i32 noundef %92) #21
  %inc85.i = add nuw nsw i32 %error_found.4.i, 1
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end80.i, %if.end74.i.if.end86.i_crit_edge
  %error_found.5.i = phi i32 [ %inc85.i, %do.end80.i ], [ %error_found.4.i, %if.end74.i.if.end86.i_crit_edge ]
  %sizeof_partition_entry.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 12
  %94 = ptrtoint ptr %sizeof_partition_entry.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %sizeof_partition_entry.i, align 1
  %sizeof_partition_entry87.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 12
  %96 = ptrtoint ptr %sizeof_partition_entry87.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %sizeof_partition_entry87.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp88.not.i = icmp eq i32 %95, %97
  br i1 %cmp88.not.i, label %if.end86.i.if.end98.i_crit_edge, label %do.end92.i

if.end86.i.if.end98.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i

do.end92.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  %98 = call i32 @llvm.bswap.i32(i32 %97) #14
  %99 = call i32 @llvm.bswap.i32(i32 %95) #14
  %call96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %99, i32 noundef %98) #21
  %inc97.i = add nuw nsw i32 %error_found.5.i, 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end92.i, %if.end86.i.if.end98.i_crit_edge
  %error_found.6.i = phi i32 [ %inc97.i, %do.end92.i ], [ %error_found.5.i, %if.end86.i.if.end98.i_crit_edge ]
  %partition_entry_array_crc32.i = getelementptr inbounds %struct._gpt_header, ptr %29, i32 0, i32 13
  %100 = ptrtoint ptr %partition_entry_array_crc32.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %partition_entry_array_crc32.i, align 1
  %partition_entry_array_crc3299.i = getelementptr inbounds %struct._gpt_header, ptr %31, i32 0, i32 13
  %102 = ptrtoint ptr %partition_entry_array_crc3299.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %partition_entry_array_crc3299.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp100.not.i = icmp eq i32 %101, %103
  br i1 %cmp100.not.i, label %if.end98.i.if.end110.i_crit_edge, label %do.end104.i

if.end98.i.if.end110.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110.i

do.end104.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  %104 = call i32 @llvm.bswap.i32(i32 %103) #14
  %105 = call i32 @llvm.bswap.i32(i32 %101) #14
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %105, i32 noundef %104) #21
  %inc109.i = add nuw nsw i32 %error_found.6.i, 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end104.i, %if.end98.i.if.end110.i_crit_edge
  %error_found.7.i = phi i32 [ %inc109.i, %do.end104.i ], [ %error_found.6.i, %if.end98.i.if.end110.i_crit_edge ]
  %106 = ptrtoint ptr %alternate_lba11.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %alternate_lba11.i, align 1
  %108 = call i64 @llvm.bswap.i64(i64 %107) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %sub.i)
  %cmp112.not.i = icmp eq i64 %108, %sub.i
  br i1 %cmp112.not.i, label %if.end110.i.if.end126.i_crit_edge, label %do.end116.i

if.end110.i.if.end126.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126.i

do.end116.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #21
  %109 = ptrtoint ptr %alternate_lba11.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %alternate_lba11.i, align 1
  %111 = call i64 @llvm.bswap.i64(i64 %110) #14
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %111, i64 noundef %sub.i) #21
  %inc125.i = add nuw nsw i32 %error_found.7.i, 1
  br label %if.end126.i

if.end126.i:                                      ; preds = %do.end116.i, %if.end110.i.if.end126.i_crit_edge
  %error_found.8.i = phi i32 [ %inc125.i, %do.end116.i ], [ %error_found.7.i, %if.end110.i.if.end126.i_crit_edge ]
  %112 = ptrtoint ptr %my_lba12.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %my_lba12.i, align 1
  %114 = call i64 @llvm.bswap.i64(i64 %113) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %sub.i)
  %cmp128.not.i = icmp eq i64 %114, %sub.i
  br i1 %cmp128.not.i, label %if.end142.i, label %if.end142.thread.i

if.end142.thread.i:                               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  %call134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #21
  %115 = ptrtoint ptr %my_lba12.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %my_lba12.i, align 1
  %117 = call i64 @llvm.bswap.i64(i64 %116) #14
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %117, i64 noundef %sub.i) #21
  br label %do.end147.i

if.end142.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error_found.8.i)
  %tobool143.not.i = icmp eq i32 %error_found.8.i, 0
  br i1 %tobool143.not.i, label %if.end142.i.compare_gpts.exit_crit_edge, label %if.end142.i.do.end147.i_crit_edge

if.end142.i.do.end147.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

if.end142.i.compare_gpts.exit_crit_edge:          ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %compare_gpts.exit

do.end147.i:                                      ; preds = %if.end142.i.do.end147.i_crit_edge, %if.end142.thread.i
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #21
  br label %compare_gpts.exit

compare_gpts.exit:                                ; preds = %do.end147.i, %if.end142.i.compare_gpts.exit_crit_edge, %if.end51.compare_gpts.exit_crit_edge
  br i1 %tobool25.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %compare_gpts.exit
  %118 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %29, ptr %gpt, align 4
  %119 = ptrtoint ptr %pptes to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pptes, align 4
  %121 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %ptes, align 4
  call void @kfree(ptr noundef %31) #14
  %122 = ptrtoint ptr %aptes to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %aptes, align 4
  call void @kfree(ptr noundef %123) #14
  br i1 %tobool49.not116, label %do.end58, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  br label %cleanup

if.else:                                          ; preds = %compare_gpts.exit
  br i1 %tobool49.not116, label %if.else.fail_crit_edge, label %if.then63

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %31, ptr %gpt, align 4
  %125 = ptrtoint ptr %aptes to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %aptes, align 4
  %127 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %ptes, align 4
  call void @kfree(ptr noundef %29) #14
  %128 = ptrtoint ptr %pptes to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pptes, align 4
  call void @kfree(ptr noundef %129) #14
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #21
  br label %cleanup

fail:                                             ; preds = %if.else.fail_crit_edge, %if.end46.fail_crit_edge, %if.end11.fail_crit_edge, %if.then7.fail_crit_edge
  %130 = ptrtoint ptr %pgpt to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pgpt, align 4
  call void @kfree(ptr noundef %131) #14
  %132 = ptrtoint ptr %agpt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %agpt, align 4
  call void @kfree(ptr noundef %133) #14
  %134 = ptrtoint ptr %pptes to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pptes, align 4
  call void @kfree(ptr noundef %135) #14
  %136 = ptrtoint ptr %aptes to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %aptes, align 4
  call void @kfree(ptr noundef %137) #14
  %138 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %gpt, align 4
  %139 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %ptes, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then63, %do.end58, %if.then53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then63 ], [ 0, %fail ], [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end58 ], [ 1, %if.then53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aptes) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pptes) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agpt) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgpt) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @last_lba(ptr nocapture noundef readonly %disk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %0 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %part0, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %3, 9
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.else162.i.i_crit_edge, label %land.lhs.true.i

entry.if.else162.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else162.i.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %7
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %land.lhs.true.i, %entry.if.else162.i.i_crit_edge
  %retval1.0.i = phi i32 [ 512, %entry.if.else162.i.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !144

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i = trunc i64 %shl.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %retval1.0.i
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i, i64 %shl.i) #17, !srcloc !145
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %sub = add i64 %dividend.addr.0.i.i, -1
  ret i64 %sub
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_lba(ptr noundef %state, i64 noundef %lba, ptr noundef writeonly %buffer, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

entry.queue_logical_block_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  %.op = lshr i32 %5, 9
  %phi.bo = select i1 %tobool2.not.i, i32 1, i32 %.op
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %entry.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 1, %entry.queue_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i ]
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %queue_logical_block_size.exit.cleanup15_crit_edge, label %lor.lhs.false

queue_logical_block_size.exit.cleanup15_crit_edge: ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup15

lor.lhs.false:                                    ; preds = %queue_logical_block_size.exit
  %conv = zext i32 %retval1.0.i to i64
  %mul = mul i64 %conv, %lba
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %9, 9
  br i1 %tobool.not.i, label %lor.lhs.false.if.else162.i.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.if.else162.i.i.i_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else162.i.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %11
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %land.lhs.true.i.i, %lor.lhs.false.if.else162.i.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %lor.lhs.false.if.else162.i.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !144

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %shl.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %retval1.0.i.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %last_lba.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i.i, i64 %shl.i.i) #17, !srcloc !145
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %12, 1
  br label %last_lba.exit

last_lba.exit:                                    ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %sub.i = add i64 %dividend.addr.0.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %lba)
  %cmp = icmp ult i64 %sub.i, %lba
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not41 = icmp eq i32 %count, 0
  %or.cond = or i1 %cmp, %tobool4.not41
  br i1 %or.cond, label %last_lba.exit.cleanup15_crit_edge, label %last_lba.exit.while.body_crit_edge

last_lba.exit.while.body_crit_edge:               ; preds = %last_lba.exit
  br label %while.body

last_lba.exit.cleanup15_crit_edge:                ; preds = %last_lba.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup15

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %last_lba.exit.while.body_crit_edge
  %n.045 = phi i64 [ %inc, %cleanup.while.body_crit_edge ], [ %mul, %last_lba.exit.while.body_crit_edge ]
  %totalreadcount.044 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %last_lba.exit.while.body_crit_edge ]
  %count.addr.043 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %count, %last_lba.exit.while.body_crit_edge ]
  %buffer.addr.042 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buffer, %last_lba.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #14
  %13 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !146
  %inc = add i64 %n.045, 1
  %call5 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %n.045, ptr noundef nonnull %sect) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup.thread, label %if.end8

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #14
  br label %cleanup15

if.end8:                                          ; preds = %while.body
  %14 = call i32 @llvm.umin.i32(i32 %count.addr.043, i32 512)
  %15 = call ptr @memcpy(ptr %buffer.addr.042, ptr %call5, i32 %14)
  %16 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.0.load = load i32, ptr %sect, align 4
  %17 = inttoptr i32 %.fca.0.load to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i32 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i32, label %if.end8._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i33, !prof !144

if.end8._compound_head.exit.i.i_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %_compound_head.exit.i.i

if.then.i.i.i33:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %20, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i33, %if.end8._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %17, %if.end8._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i33 ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !147

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.13) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !148
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #14, !srcloc !150
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_lba, %if.then.i.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %.pre-phi.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer.addr.042, i32 %14
  %add = add i32 %totalreadcount.044, %14
  %sub = sub i32 %count.addr.043, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #14
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %cleanup.cleanup15_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup.cleanup15_crit_edge, %cleanup.thread, %last_lba.exit.cleanup15_crit_edge, %queue_logical_block_size.exit.cleanup15_crit_edge
  %retval.0 = phi i32 [ 0, %last_lba.exit.cleanup15_crit_edge ], [ 0, %queue_logical_block_size.exit.cleanup15_crit_edge ], [ %totalreadcount.044, %cleanup.thread ], [ %add, %cleanup.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_pmbr_valid(ptr noundef readonly %mbr, i64 noundef %total_sectors) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mbr, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %lor.lhs.false

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

lor.lhs.false:                                    ; preds = %entry
  %signature = getelementptr inbounds %struct._legacy_mbr, ptr %mbr, i32 0, i32 4
  %0 = ptrtoint ptr %signature to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %signature, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %1)
  %cmp.not = icmp eq i16 %1, 21930
  br i1 %cmp.not, label %for.body.preheader, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.body.preheader:                               ; preds = %lor.lhs.false
  %os_type.i = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %os_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %os_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %3)
  %cmp.not.i = icmp eq i8 %3, -18
  br i1 %cmp.not.i, label %if.end.i, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i:                                         ; preds = %for.body.preheader
  %starting_lba.i = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 0, i32 8
  %4 = ptrtoint ptr %starting_lba.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %starting_lba.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 16777216
  br i1 %cmp2.not.i, label %if.end.i.for.cond12.preheader_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.for.cond12.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.end.i.3.for.cond12.preheader_crit_edge, %if.end.i.2.for.cond12.preheader_crit_edge, %if.end.i.1.for.cond12.preheader_crit_edge, %if.end.i.for.cond12.preheader_crit_edge
  %i.083.lcssa = phi i32 [ 0, %if.end.i.for.cond12.preheader_crit_edge ], [ 1, %if.end.i.1.for.cond12.preheader_crit_edge ], [ 2, %if.end.i.2.for.cond12.preheader_crit_edge ], [ 3, %if.end.i.3.for.cond12.preheader_crit_edge ]
  %6 = ptrtoint ptr %os_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %os_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %7)
  %switch.selectcmp.case1 = icmp eq i8 %7, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.selectcmp.case2 = icmp eq i8 %7, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = select i1 %switch.selectcmp, i32 1, i32 2
  %os_type.1 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %os_type.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %os_type.1, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.then27.1 [
    i8 -18, label %for.cond12.preheader.for.inc29.1_crit_edge
    i8 0, label %for.cond12.preheader.for.inc29.1_crit_edge90
  ]

for.cond12.preheader.for.inc29.1_crit_edge90:     ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.1

for.cond12.preheader.for.inc29.1_crit_edge:       ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.1

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %os_type.i.1 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 1, i32 4
  %12 = ptrtoint ptr %os_type.i.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %os_type.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %13)
  %cmp.not.i.1 = icmp eq i8 %13, -18
  br i1 %cmp.not.i.1, label %if.end.i.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.i.1:                                       ; preds = %for.inc
  %starting_lba.i.1 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 1, i32 8
  %14 = ptrtoint ptr %starting_lba.i.1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %starting_lba.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %cmp2.not.i.1 = icmp eq i32 %15, 16777216
  br i1 %cmp2.not.i.1, label %if.end.i.1.for.cond12.preheader_crit_edge, label %if.end.i.1.for.inc.1_crit_edge

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.i.1.for.cond12.preheader_crit_edge:        ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

for.inc.1:                                        ; preds = %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %os_type.i.2 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 2, i32 4
  %16 = ptrtoint ptr %os_type.i.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %os_type.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %17)
  %cmp.not.i.2 = icmp eq i8 %17, -18
  br i1 %cmp.not.i.2, label %if.end.i.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end.i.2:                                       ; preds = %for.inc.1
  %starting_lba.i.2 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 2, i32 8
  %18 = ptrtoint ptr %starting_lba.i.2 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %starting_lba.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %cmp2.not.i.2 = icmp eq i32 %19, 16777216
  br i1 %cmp2.not.i.2, label %if.end.i.2.for.cond12.preheader_crit_edge, label %if.end.i.2.for.inc.2_crit_edge

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end.i.2.for.cond12.preheader_crit_edge:        ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

for.inc.2:                                        ; preds = %if.end.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %os_type.i.3 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 3, i32 4
  %20 = ptrtoint ptr %os_type.i.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %os_type.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %21)
  %cmp.not.i.3 = icmp eq i8 %21, -18
  br i1 %cmp.not.i.3, label %if.end.i.3, label %for.inc.2.done_crit_edge

for.inc.2.done_crit_edge:                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end.i.3:                                       ; preds = %for.inc.2
  %starting_lba.i.3 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 3, i32 8
  %22 = ptrtoint ptr %starting_lba.i.3 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %starting_lba.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %23)
  %cmp2.not.i.3 = icmp eq i32 %23, 16777216
  br i1 %cmp2.not.i.3, label %if.end.i.3.for.cond12.preheader_crit_edge, label %if.end.i.3.done_crit_edge

if.end.i.3.done_crit_edge:                        ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end.i.3.for.cond12.preheader_crit_edge:        ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

if.then27.1:                                      ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %if.then27.1, %for.cond12.preheader.for.inc29.1_crit_edge, %for.cond12.preheader.for.inc29.1_crit_edge90
  %ret.3.1 = phi i32 [ 2, %if.then27.1 ], [ %8, %for.cond12.preheader.for.inc29.1_crit_edge ], [ %8, %for.cond12.preheader.for.inc29.1_crit_edge90 ]
  %os_type.2 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 2, i32 4
  %24 = ptrtoint ptr %os_type.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %os_type.2, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %25, label %if.then27.2 [
    i8 -18, label %for.inc29.1.for.inc29.2_crit_edge
    i8 0, label %for.inc29.1.for.inc29.2_crit_edge91
  ]

for.inc29.1.for.inc29.2_crit_edge91:              ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.2

for.inc29.1.for.inc29.2_crit_edge:                ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.2

if.then27.2:                                      ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.2

for.inc29.2:                                      ; preds = %if.then27.2, %for.inc29.1.for.inc29.2_crit_edge, %for.inc29.1.for.inc29.2_crit_edge91
  %ret.3.2 = phi i32 [ 2, %if.then27.2 ], [ %ret.3.1, %for.inc29.1.for.inc29.2_crit_edge ], [ %ret.3.1, %for.inc29.1.for.inc29.2_crit_edge91 ]
  %os_type.3 = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 3, i32 4
  %27 = ptrtoint ptr %os_type.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %os_type.3, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %28, label %for.inc29.2.done_crit_edge [
    i8 -18, label %for.inc29.2.for.inc29.3_crit_edge
    i8 0, label %for.inc29.2.for.inc29.3_crit_edge92
  ]

for.inc29.2.for.inc29.3_crit_edge92:              ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.3

for.inc29.2.for.inc29.3_crit_edge:                ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc29.3

for.inc29.2.done_crit_edge:                       ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.inc29.3:                                      ; preds = %for.inc29.2.for.inc29.3_crit_edge, %for.inc29.2.for.inc29.3_crit_edge92
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.3.2)
  %cmp32 = icmp eq i32 %ret.3.2, 1
  br i1 %cmp32, label %if.then34, label %for.inc29.3.done_crit_edge

for.inc29.3.done_crit_edge:                       ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then34:                                        ; preds = %for.inc29.3
  %size_in_lba = getelementptr %struct._legacy_mbr, ptr %mbr, i32 0, i32 3, i32 %i.083.lcssa, i32 9
  %30 = ptrtoint ptr %size_in_lba to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %size_in_lba, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %conv37 = trunc i64 %total_sectors to i32
  %sub = add i32 %conv37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %sub)
  %cmp38.not = icmp eq i32 %32, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp41.not = icmp eq i32 %31, -1
  %or.cond = select i1 %cmp38.not, i1 true, i1 %cmp41.not
  br i1 %or.cond, label %if.then34.done_crit_edge, label %do.body

if.then34.done_crit_edge:                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

do.body:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_pmbr_valid.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_pmbr_valid, %if.then48)) #14
          to label %done [label %if.then48], !srcloc !143

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_pmbr_valid.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.15, i32 noundef %32, i32 noundef %sub) #14
  br label %done

done:                                             ; preds = %if.then48, %do.body, %if.then34.done_crit_edge, %for.inc29.3.done_crit_edge, %for.inc29.2.done_crit_edge, %if.end.i.3.done_crit_edge, %for.inc.2.done_crit_edge, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  %ret.4 = phi i32 [ 0, %lor.lhs.false.done_crit_edge ], [ 1, %if.then48 ], [ 1, %if.then34.done_crit_edge ], [ 2, %for.inc29.3.done_crit_edge ], [ 0, %entry.done_crit_edge ], [ 1, %do.body ], [ 0, %if.end.i.3.done_crit_edge ], [ 0, %for.inc.2.done_crit_edge ], [ 2, %for.inc29.2.done_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_gpt_valid(ptr noundef %state, i64 noundef %lba, ptr nocapture noundef %gpt, ptr noundef %ptes) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptes, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.if.end8.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i.i = icmp eq i32 %5, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %5
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end.if.end8.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end.if.end8.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval1.0.i.i, i32 noundef 3264) #22
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end.i

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end8.i.i
  %call2.i = tail call fastcc i32 @read_lba(ptr noundef %state, i64 noundef %lba, ptr noundef nonnull %call9.i.i, i32 noundef %retval1.0.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %retval1.0.i.i)
  %cmp.i = icmp ult i32 %call2.i, %retval1.0.i.i
  br i1 %cmp.i, label %if.then3.i, label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %gpt, align 4
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 4991757640121012820, i64 %8)
  %cmp.not = icmp eq i64 %8, 4991757640121012820
  br i1 %cmp.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then9)) #14
          to label %fail [label %if.then9], !srcloc !143

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpt, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %10, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.17, i64 noundef %13, i64 noundef 6075990659671082565) #14
  br label %fail

if.end12:                                         ; preds = %if.end3
  %header_size = getelementptr inbounds %struct._gpt_header, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %header_size, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %tobool.not.i317 = icmp eq ptr %20, null
  br i1 %tobool.not.i317, label %if.end12.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

if.end12.queue_logical_block_size.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 9
  %21 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %22
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %if.end12.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %if.end12.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %retval1.0.i)
  %cmp14 = icmp ugt i32 %16, %retval1.0.i
  br i1 %cmp14, label %do.body16, label %if.end36

do.body16:                                        ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then28)) #14
          to label %fail [label %if.then28], !srcloc !143

if.then28:                                        ; preds = %do.body16
  %23 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpt, align 4
  %header_size29 = getelementptr inbounds %struct._gpt_header, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %header_size29 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %header_size29, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %queue31 = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %queue31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue31, align 4
  %tobool.not.i319 = icmp eq ptr %31, null
  br i1 %tobool.not.i319, label %if.then28.queue_logical_block_size.exit326_crit_edge, label %land.lhs.true.i323

if.then28.queue_logical_block_size.exit326_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_logical_block_size.exit326

land.lhs.true.i323:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i320 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 37, i32 9
  %32 = ptrtoint ptr %logical_block_size.i320 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logical_block_size.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i321 = icmp eq i32 %33, 0
  %spec.select.i322 = select i1 %tobool2.not.i321, i32 512, i32 %33
  br label %queue_logical_block_size.exit326

queue_logical_block_size.exit326:                 ; preds = %land.lhs.true.i323, %if.then28.queue_logical_block_size.exit326_crit_edge
  %retval1.0.i324 = phi i32 [ 512, %if.then28.queue_logical_block_size.exit326_crit_edge ], [ %spec.select.i322, %land.lhs.true.i323 ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %retval1.0.i324) #14
  br label %fail

if.end36:                                         ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %16)
  %cmp38 = icmp ult i32 %16, 92
  br i1 %cmp38, label %do.body40, label %if.end57

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then52)) #14
          to label %fail [label %if.then52], !srcloc !143

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpt, align 4
  %header_size53 = getelementptr inbounds %struct._gpt_header, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %header_size53 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %header_size53, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.19, i32 noundef %38, i32 noundef 92) #14
  br label %fail

if.end57:                                         ; preds = %if.end36
  %header_crc32 = getelementptr inbounds %struct._gpt_header, ptr %call9.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %header_crc32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %header_crc32, align 16
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %header_crc32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %header_crc32, align 16
  %43 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpt, align 4
  %header_size59 = getelementptr inbounds %struct._gpt_header, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %header_size59 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %header_size59, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %44, i32 noundef %47) #23
  %xor.i = xor i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %xor.i)
  %cmp61.not = icmp eq i32 %41, %xor.i
  br i1 %cmp61.not, label %if.end79, label %do.body63

do.body63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then75)) #14
          to label %fail [label %if.then75], !srcloc !143

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.20, i32 noundef %xor.i, i32 noundef %41) #14
  br label %fail

if.end79:                                         ; preds = %if.end57
  %header_crc3280 = getelementptr inbounds %struct._gpt_header, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %header_crc3280 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %40, ptr %header_crc3280, align 1
  %49 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gpt, align 4
  %my_lba = getelementptr inbounds %struct._gpt_header, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %my_lba to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %my_lba, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %lba)
  %cmp81.not = icmp eq i64 %53, %lba
  br i1 %cmp81.not, label %if.end100, label %do.body83

do.body83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then95)) #14
          to label %fail [label %if.then95], !srcloc !143

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpt, align 4
  %my_lba96 = getelementptr inbounds %struct._gpt_header, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %my_lba96 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %my_lba96, align 1
  %58 = tail call i64 @llvm.bswap.i64(i64 %57)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.21, i64 noundef %58, i64 noundef %lba) #14
  br label %fail

if.end100:                                        ; preds = %if.end79
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state, align 4
  %call102 = tail call fastcc i64 @last_lba(ptr noundef %60)
  %first_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %50, i32 0, i32 7
  %61 = ptrtoint ptr %first_usable_lba to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %first_usable_lba, align 1
  %63 = tail call i64 @llvm.bswap.i64(i64 %62)
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %call102)
  %cmp103 = icmp ugt i64 %63, %call102
  br i1 %cmp103, label %do.body105, label %if.end122

do.body105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then117)) #14
          to label %fail [label %if.then117], !srcloc !143

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gpt, align 4
  %first_usable_lba118 = getelementptr inbounds %struct._gpt_header, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %first_usable_lba118 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %first_usable_lba118, align 1
  %68 = tail call i64 @llvm.bswap.i64(i64 %67)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.22, i64 noundef %68, i64 noundef %call102) #14
  br label %fail

if.end122:                                        ; preds = %if.end100
  %last_usable_lba = getelementptr inbounds %struct._gpt_header, ptr %50, i32 0, i32 8
  %69 = ptrtoint ptr %last_usable_lba to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %last_usable_lba, align 1
  %71 = tail call i64 @llvm.bswap.i64(i64 %70)
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %call102)
  %cmp123 = icmp ugt i64 %71, %call102
  br i1 %cmp123, label %do.body125, label %if.end142

do.body125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then137)) #14
          to label %fail [label %if.then137], !srcloc !143

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gpt, align 4
  %last_usable_lba138 = getelementptr inbounds %struct._gpt_header, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %last_usable_lba138 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %last_usable_lba138, align 1
  %76 = tail call i64 @llvm.bswap.i64(i64 %75)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.23, i64 noundef %76, i64 noundef %call102) #14
  br label %fail

if.end142:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %63)
  %cmp145 = icmp ult i64 %71, %63
  br i1 %cmp145, label %do.body147, label %if.end165

do.body147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then159)) #14
          to label %fail [label %if.then159], !srcloc !143

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gpt, align 4
  %last_usable_lba160 = getelementptr inbounds %struct._gpt_header, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %last_usable_lba160 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %last_usable_lba160, align 1
  %81 = tail call i64 @llvm.bswap.i64(i64 %80)
  %first_usable_lba161 = getelementptr inbounds %struct._gpt_header, ptr %78, i32 0, i32 7
  %82 = ptrtoint ptr %first_usable_lba161 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %first_usable_lba161, align 1
  %84 = tail call i64 @llvm.bswap.i64(i64 %83)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.23, i64 noundef %81, i64 noundef %84) #14
  br label %fail

if.end165:                                        ; preds = %if.end142
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, ptr %50, i32 0, i32 12
  %85 = ptrtoint ptr %sizeof_partition_entry to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %sizeof_partition_entry, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %86)
  %cmp166.not = icmp eq i32 %86, -2147483648
  br i1 %cmp166.not, label %if.end184, label %do.body168

do.body168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then180)) #14
          to label %fail [label %if.then180], !srcloc !143

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.24) #14
  br label %fail

if.end184:                                        ; preds = %if.end165
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %50, i32 0, i32 11
  %87 = ptrtoint ptr %num_partition_entries to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %num_partition_entries, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %conv = zext i32 %89 to i64
  %mul = shl nuw nsw i64 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %89)
  %cmp187 = icmp ugt i32 %89, 65536
  br i1 %cmp187, label %do.body190, label %if.end206

do.body190:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then202)) #14
          to label %fail [label %if.then202], !srcloc !143

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.25, i64 noundef %mul, i32 noundef 8388608) #14
  br label %fail

if.end206:                                        ; preds = %if.end184
  %call207 = tail call fastcc ptr @alloc_read_gpt_entries(ptr noundef %state, ptr noundef %50)
  %90 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call207, ptr %ptes, align 4
  %tobool208.not = icmp eq ptr %call207, null
  br i1 %tobool208.not, label %if.end206.fail_crit_edge, label %if.end210

if.end206.fail_crit_edge:                         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end210:                                        ; preds = %if.end206
  %conv211 = trunc i64 %mul to i32
  %call.i327 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call207, i32 noundef %conv211) #23
  %xor.i328 = xor i32 %call.i327, -1
  %91 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %gpt, align 4
  %partition_entry_array_crc32 = getelementptr inbounds %struct._gpt_header, ptr %92, i32 0, i32 13
  %93 = ptrtoint ptr %partition_entry_array_crc32 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %partition_entry_array_crc32, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %xor.i328)
  %cmp213.not = icmp eq i32 %95, %xor.i328
  br i1 %cmp213.not, label %if.end210.cleanup_crit_edge, label %do.body216

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body216:                                       ; preds = %if.end210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_gpt_valid.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_gpt_valid, %if.then228)) #14
          to label %fail_ptes [label %if.then228], !srcloc !143

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_gpt_valid.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.26) #14
  br label %fail_ptes

fail_ptes:                                        ; preds = %if.then228, %do.body216
  %96 = ptrtoint ptr %ptes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ptes, align 4
  tail call void @kfree(ptr noundef %97) #14
  %98 = ptrtoint ptr %ptes to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %ptes, align 4
  br label %fail

fail:                                             ; preds = %fail_ptes, %if.end206.fail_crit_edge, %if.then202, %do.body190, %if.then180, %do.body168, %if.then159, %do.body147, %if.then137, %do.body125, %if.then117, %do.body105, %if.then95, %do.body83, %if.then75, %do.body63, %if.then52, %do.body40, %queue_logical_block_size.exit326, %do.body16, %if.then9, %do.body
  %99 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gpt, align 4
  tail call void @kfree(ptr noundef %100) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail, %if.then3.i, %if.end8.i.i.cleanup.sink.split_crit_edge
  %101 = ptrtoint ptr %gpt to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %gpt, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end210.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end210.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_read_gpt_entries(ptr noundef %state, ptr noundef readonly %gpt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_partition_entries = getelementptr inbounds %struct._gpt_header, ptr %gpt, i32 0, i32 11
  %0 = ptrtoint ptr %num_partition_entries to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %num_partition_entries, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %sizeof_partition_entry = getelementptr inbounds %struct._gpt_header, ptr %gpt, i32 0, i32 12
  %3 = ptrtoint ptr %sizeof_partition_entry to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %sizeof_partition_entry, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mul = mul i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool1.not = icmp eq i32 %mul, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #22
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %partition_entry_lba = getelementptr inbounds %struct._gpt_header, ptr %gpt, i32 0, i32 10
  %6 = ptrtoint ptr %partition_entry_lba to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %partition_entry_lba, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %call7 = tail call fastcc i32 @read_lba(ptr noundef %state, i64 noundef %8, ptr noundef nonnull %call9.i, i32 noundef %mul)
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %mul)
  %cmp = icmp ult i32 %call7, %mul
  br i1 %cmp, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end8.i.cleanup_crit_edge ], [ %call9.i, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__setup_force_gpt_fn, !1, !"__setup_force_gpt_fn", i1 false, i1 false}
!1 = !{!"../block/partitions/efi.c", i32 104, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/efi.c", i32 726, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @efi_partition.__UNIQUE_ID_ddebug299, !3, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/partitions/efi.c", i32 755, i32 25}
!10 = !{ptr @__setup_str_force_gpt_fn, !1, !"__setup_str_force_gpt_fn", i1 false, i1 false}
!11 = distinct !{null, !12, !"force_gpt", i1 false, i1 false}
!12 = !{!"../block/partitions/efi.c", i32 97, i32 12}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../block/partitions/efi.c", i32 610, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @find_valid_gpt.__UNIQUE_ID_ddebug298, !14, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../block/partitions/efi.c", i32 647, i32 25}
!21 = !{ptr @find_valid_gpt._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @find_valid_gpt._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/partitions/efi.c", i32 655, i32 3}
!25 = !{ptr @find_valid_gpt._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @find_valid_gpt._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/mm.h", i32 717, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/partitions/efi.c", i32 217, i32 4}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @is_pmbr_valid.__UNIQUE_ID_ddebug284, !30, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/partitions/efi.c", i32 348, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug287, !34, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../block/partitions/efi.c", i32 358, i32 3}
!39 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/partitions/efi.c", i32 366, i32 3}
!42 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug289, !41, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/partitions/efi.c", i32 378, i32 3}
!45 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug290, !44, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../block/partitions/efi.c", i32 387, i32 3}
!48 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug291, !47, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../block/partitions/efi.c", i32 398, i32 3}
!51 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug292, !50, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../block/partitions/efi.c", i32 404, i32 3}
!54 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug293, !53, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!55 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug294, !56, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!56 = !{!"../block/partitions/efi.c", i32 410, i32 3}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/partitions/efi.c", i32 417, i32 3}
!59 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug295, !58, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../block/partitions/efi.c", i32 425, i32 3}
!62 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug296, !61, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../block/partitions/efi.c", i32 437, i32 3}
!65 = !{ptr @is_gpt_valid.__UNIQUE_ID_ddebug297, !64, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../block/partitions/efi.c", i32 487, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @compare_gpts._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @compare_gpts._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../block/partitions/efi.c", i32 488, i32 3}
!73 = !{ptr @compare_gpts._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @compare_gpts._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../block/partitions/efi.c", i32 494, i32 3}
!77 = !{ptr @compare_gpts._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @compare_gpts._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @compare_gpts._entry.35, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../block/partitions/efi.c", i32 495, i32 3}
!81 = !{ptr @compare_gpts._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../block/partitions/efi.c", i32 502, i32 3}
!84 = !{ptr @compare_gpts._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @compare_gpts._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @compare_gpts._entry.40, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../block/partitions/efi.c", i32 503, i32 3}
!88 = !{ptr @compare_gpts._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../block/partitions/efi.c", i32 510, i32 3}
!91 = !{ptr @compare_gpts._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @compare_gpts._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @compare_gpts._entry.45, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../block/partitions/efi.c", i32 511, i32 3}
!95 = !{ptr @compare_gpts._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../block/partitions/efi.c", i32 517, i32 3}
!98 = !{ptr @compare_gpts._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @compare_gpts._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../block/partitions/efi.c", i32 522, i32 3}
!102 = !{ptr @compare_gpts._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @compare_gpts._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../block/partitions/efi.c", i32 530, i32 3}
!106 = !{ptr @compare_gpts._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @compare_gpts._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../block/partitions/efi.c", i32 538, i32 3}
!110 = !{ptr @compare_gpts._entry.56, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @compare_gpts._entry_ptr.58, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../block/partitions/efi.c", i32 545, i32 3}
!114 = !{ptr @compare_gpts._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @compare_gpts._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @compare_gpts._entry.62, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../block/partitions/efi.c", i32 546, i32 3}
!118 = !{ptr @compare_gpts._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../block/partitions/efi.c", i32 553, i32 3}
!121 = !{ptr @compare_gpts._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @compare_gpts._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @compare_gpts._entry.67, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../block/partitions/efi.c", i32 554, i32 3}
!125 = !{ptr @compare_gpts._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../block/partitions/efi.c", i32 561, i32 3}
!128 = !{ptr @compare_gpts._entry.69, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @compare_gpts._entry_ptr.71, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../block/partitions/check.h", i32 45, i32 30}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/efi.h", i32 650, i32 15}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148713128, i64 2148713133, i64 2148713146, i64 2148713190, i64 2148713224, i64 2148713245}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2148621847, i64 2148622127, i64 2148622461, i64 2148622795}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2153228668, i64 2153229151, i64 2153228705, i64 2153228761, i64 2153228795, i64 2153228819, i64 2153228860, i64 2153228881, i64 2153228909, i64 2153228943}
!149 = !{i64 2148319765}
!150 = !{i64 2148234498, i64 2148234530, i64 2148234559, i64 2148234593, i64 2148234624, i64 2148234647}
!151 = !{i64 2148319994}
