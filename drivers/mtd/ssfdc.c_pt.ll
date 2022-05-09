; ModuleID = '/llk/IR_all_yes/drivers/mtd/ssfdc.c_pt.bc'
source_filename = "../drivers/mtd/ssfdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.chs_entry_t = type { i32, i16, i8, i8 }
%struct.ssfdcr_record = type { %struct.mtd_blktrans_dev, i32, i8, i8, i16, i32, i32, ptr, i32 }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

@ssfdcr_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 257, i32 3, i32 512, i32 0, ptr @ssfdcr_readsect, ptr null, ptr null, ptr null, ptr @ssfdcr_getgeo, ptr null, ptr null, ptr null, ptr @ssfdcr_add_mtd, ptr @ssfdcr_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ssfdc__211_450_init_ssfdcr6 = internal global ptr @init_ssfdcr, section ".initcall6.init", align 4
@__exitcall_cleanup_ssfdcr = internal global ptr @cleanup_ssfdcr, section ".exitcall.exit", align 4
@__UNIQUE_ID_file212 = internal constant [29 x i8] c"ssfdc.file=drivers/mtd/ssfdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [18 x i8] c"ssfdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [63 x i8] c"ssfdc.author=Claudio Lanconelli <lanconelli.claudio@eptar.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [78 x i8] c"ssfdc.description=Flash Translation Layer for read-only SSFDC SmartMedia card\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssfdc\00", [26 x i8] zeroinitializer }, align 32
@ssfdcr_readsect.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssfdcr_readsect\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/mtd/ssfdc.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"SSFDC_RO: ssfdcr_readsect(%lu) sec_per_blk=%d, ofst=%d, block_addr=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ssfdcr_readsect.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SSFDC_RO: ssfdcr_readsect() phys_block_addr=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ssfdcr_readsect.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SSFDC_RO: ssfdcr_readsect() phys_sect_no=%lu\0A\00", [50 x i8] zeroinitializer }, align 32
@ssfdcr_getgeo.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssfdcr_getgeo\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SSFDC_RO: ssfdcr_getgeo() C=%d, H=%d, S=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@ssfdcr_add_mtd.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssfdcr_add_mtd\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SSFDC_RO: cis_block=%d,erase_size=%d,map_len=%d,n_zones=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssfdcr_add_mtd.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SSFDC_RO: using C:%d H:%d S:%d == %ld sects\0A\00", [51 x i8] zeroinitializer }, align 32
@ssfdcr_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016SSFDC_RO: Found ssfdc%c on mtd%d (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@ssfdcr_add_mtd._entry_ptr = internal global ptr @ssfdcr_add_mtd._entry, section ".printk_index", align 4
@get_valid_cis_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014SSFDC_RO:can't read CIS/IDI sector\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_valid_cis_sector\00", [43 x i8] zeroinitializer }, align 32
@get_valid_cis_sector._entry_ptr = internal global ptr @get_valid_cis_sector._entry, section ".printk_index", align 4
@cis_numbers = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\03\D9\01\FF\18\02\DF\01 ", [22 x i8] zeroinitializer }, align 32
@get_valid_cis_sector.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SSFDC_RO: CIS/IDI sector not found on %s (mtd%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@chs_table = internal constant { [9 x %struct.chs_entry_t], [56 x i8] } { [9 x %struct.chs_entry_t] [%struct.chs_entry_t { i32 1048576, i16 125, i8 4, i8 4 }, %struct.chs_entry_t { i32 2097152, i16 125, i8 4, i8 8 }, %struct.chs_entry_t { i32 4194304, i16 250, i8 4, i8 8 }, %struct.chs_entry_t { i32 8388608, i16 250, i8 4, i8 16 }, %struct.chs_entry_t { i32 16777216, i16 500, i8 4, i8 16 }, %struct.chs_entry_t { i32 33554432, i16 500, i8 8, i8 16 }, %struct.chs_entry_t { i32 67108864, i16 500, i8 8, i8 32 }, %struct.chs_entry_t { i32 134217728, i16 500, i8 16, i8 32 }, %struct.chs_entry_t zeroinitializer], [56 x i8] zeroinitializer }, align 32
@build_logical_block_map.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"build_logical_block_map\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SSFDC_RO: build_block_map() nblks=%d (%luK)\0A\00", [51 x i8] zeroinitializer }, align 32
@build_logical_block_map.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SSFDC_RO: mtd read_oob() failed at %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@build_logical_block_map.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"SSFDC_RO: build_block_map() phys_block=%d,logic_block_addr=%d, zone=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@__const.get_logical_address.offset = private unnamed_addr constant [2 x i32] [i32 6, i32 11], align 4
@get_logical_address.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_logical_address\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SSFDC_RO: logical address field%dparity error(0x%04X)\0A\00", [41 x i8] zeroinitializer }, align 32
@get_logical_address.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SSFDC_RO: get_logical_address() %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ssfdcr_remove_dev.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssfdcr_remove_dev\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SSFDC_RO: remove_dev (i=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@init_ssfdcr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016SSFDC read-only Flash Translation layer\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_ssfdcr\00", [20 x i8] zeroinitializer }, align 32
@init_ssfdcr._entry_ptr = internal global ptr @init_ssfdcr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"ssfdcr_tr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 426, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 427, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 377, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 385, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 394, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 410, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 312, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 323, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 348, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 128, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"cis_numbers\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 98, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 135, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"chs_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 62, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 247, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 260, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 276, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 220, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 233, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 361, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [23 x i8] c"../drivers/mtd/ssfdc.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 440, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_cleanup_ssfdcr, ptr @__initcall__kmod_ssfdc__211_450_init_ssfdcr6, ptr @cleanup_ssfdcr, ptr @get_valid_cis_sector._entry, ptr @get_valid_cis_sector._entry_ptr, ptr @init_ssfdcr._entry, ptr @init_ssfdcr._entry_ptr, ptr @ssfdcr_add_mtd._entry, ptr @ssfdcr_add_mtd._entry_ptr, ptr @ssfdcr_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cis_numbers, ptr @.str.14, ptr @chs_table, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssfdcr_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssfdcr_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_valid_cis_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_numbers to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chs_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ssfdcr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_ssfdcr() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @ssfdcr_tr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ssfdcr() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %call1 = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @ssfdcr_tr) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssfdcr_readsect(ptr nocapture noundef readonly %dev, i32 noundef %logic_sect_no, ptr noundef %buf) #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_size = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erase_size, align 4
  %shr = ashr i32 %1, 9
  %shr.frozen = freeze i32 %shr
  %div = udiv i32 %logic_sect_no, %shr.frozen
  %2 = mul i32 %div, %shr.frozen
  %rem.decomposed = sub i32 %logic_sect_no, %2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_readsect, %if.then)) #9
          to label %do.body3 [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_readsect.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.3, i32 noundef %logic_sect_no, i32 noundef %shr, i32 noundef %rem.decomposed, i32 noundef %div) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %map_len = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %4)
  %cmp.not = icmp slt i32 %div, %4
  br i1 %cmp.not, label %do.end19, label %do.body11, !prof !89

do.body11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/ssfdc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 381, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

do.end19:                                         ; preds = %do.body3
  %logic_block_map = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %logic_block_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %logic_block_map, align 4
  %arrayidx = getelementptr i16, ptr %6, i32 %div
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_readsect, %if.then32)) #9
          to label %do.end35 [label %if.then32], !srcloc !88

if.then32:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_readsect.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp36.not = icmp eq i16 %8, -1
  br i1 %cmp36.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %do.end35
  %mul = mul i32 %shr, %conv
  %add = add i32 %mul, %rem.decomposed
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_readsect, %if.then51)) #9
          to label %do.end54 [label %if.then51], !srcloc !88

if.then51:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_readsect.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.5, i32 noundef %add) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.then38
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mtd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %11 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %retlen.i, align 4, !annotation !91
  %conv.i = sext i32 %add to i64
  %shl.i = shl nsw i64 %conv.i, 9
  %call.i = call i32 @mtd_read(ptr noundef %10, i64 noundef %shl.i, i32 noundef 512, ptr noundef nonnull %retlen.i, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %read_physical_sector.exit.thread, label %read_physical_sector.exit

read_physical_sector.exit.thread:                 ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %cleanup61

read_physical_sector.exit:                        ; preds = %do.end54
  %12 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %13)
  %cmp2.not.i.not = icmp eq i32 %13, 512
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br i1 %cmp2.not.i.not, label %read_physical_sector.exit.if.end60_crit_edge, label %read_physical_sector.exit.cleanup61_crit_edge

read_physical_sector.exit.cleanup61_crit_edge:    ; preds = %read_physical_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

read_physical_sector.exit.if.end60_crit_edge:     ; preds = %read_physical_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.else:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memset(ptr %buf, i32 255, i32 512)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %read_physical_sector.exit.if.end60_crit_edge
  br label %cleanup61

cleanup61:                                        ; preds = %if.end60, %read_physical_sector.exit.cleanup61_crit_edge, %read_physical_sector.exit.thread
  %retval.1 = phi i32 [ 0, %if.end60 ], [ -5, %read_physical_sector.exit.cleanup61_crit_edge ], [ -5, %read_physical_sector.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssfdcr_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_getgeo.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_getgeo, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cylinders = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cylinders, align 2
  %conv = zext i16 %1 to i32
  %heads = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %heads, align 4
  %conv3 = zext i8 %3 to i32
  %sectors = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sectors, align 1
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_getgeo.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %heads5 = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %heads5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %heads5, align 4
  %8 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %geo, align 4
  %sectors7 = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %sectors7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sectors7, align 1
  %sectors8 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %11 = ptrtoint ptr %sectors8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %sectors8, align 1
  %cylinders9 = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %cylinders9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cylinders9, align 2
  %cylinders10 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %14 = ptrtoint ptr %cylinders10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cylinders10, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssfdcr_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mtd, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 8, label %entry.lor.lhs.false_crit_edge
    i8 4, label %entry.lor.lhs.false_crit_edge184
  ]

entry.lor.lhs.false_crit_edge184:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge184
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp.not = icmp eq i32 %4, 16
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %6)
  %cmp2 = icmp ugt i64 %6, 4294967295
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %call3 = tail call fastcc i32 @get_valid_cis_sector(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 232) #13
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %mtd11 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %mtd11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mtd, ptr %mtd11, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %devnum, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tr, ptr %call7.i.i, align 8
  %readonly = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %readonly to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %readonly, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize, align 8
  %shr = lshr i32 %13, 9
  %div = udiv i32 %call3, %shr
  %cis_block = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %cis_block to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %cis_block, align 8
  %erase_size = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %erase_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %erase_size, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  %conv = trunc i64 %17 to i32
  %div19 = udiv i32 %conv, %13
  %map_len = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %map_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div19, ptr %map_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_add_mtd.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_add_mtd, %if.then24)) #9
          to label %do.end [label %if.then24], !srcloc !88

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cis_block, align 8
  %21 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %erase_size, align 4
  %23 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %map_len, align 4
  %sub = add i32 %24, 1023
  %div29 = sdiv i32 %sub, 1024
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_add_mtd.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.9, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %div29) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end10
  %heads = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %heads, align 4
  %sectors = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %sectors, align 1
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size, align 8
  %conv32 = trunc i64 %28 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.end
  %k.0.i = phi i32 [ 0, %do.end ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.chs_entry_t], ptr @chs_table, i32 0, i32 %k.0.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp ne i32 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv32)
  %cmp4.i168 = icmp ult i32 %30, %conv32
  %or.cond.i = and i1 %cmp.not.i, %cmp4.i168
  %inc.i = add nuw nsw i32 %k.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i = icmp eq i32 %30, 0
  br i1 %cmp7.not.i, label %while.end.i.get_chs.exit_crit_edge, label %if.then12.i

while.end.i.get_chs.exit_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_chs.exit

if.then12.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %head14.i = getelementptr [9 x %struct.chs_entry_t], ptr @chs_table, i32 0, i32 %k.0.i, i32 2
  %31 = ptrtoint ptr %head14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %head14.i, align 2
  %33 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %heads, align 4
  %sec19.i = getelementptr [9 x %struct.chs_entry_t], ptr @chs_table, i32 0, i32 %k.0.i, i32 3
  %34 = ptrtoint ptr %sec19.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sec19.i, align 1
  %36 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %sectors, align 1
  br label %get_chs.exit

get_chs.exit:                                     ; preds = %if.then12.i, %while.end.i.get_chs.exit_crit_edge
  %shr38 = lshr i32 %conv32, 9
  %37 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sectors, align 1
  %conv40 = zext i8 %38 to i32
  %39 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %heads, align 4
  %conv42 = zext i8 %40 to i32
  %mul = mul nuw nsw i32 %conv42, %conv40
  %div43 = udiv i32 %shr38, %mul
  %conv44 = trunc i32 %div43 to i16
  %cylinders = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv44, ptr %cylinders, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_add_mtd.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_add_mtd, %if.then57)) #9
          to label %do.end74 [label %if.then57], !srcloc !88

if.then57:                                        ; preds = %get_chs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cylinders, align 2
  %conv59 = zext i16 %43 to i32
  %44 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %heads, align 4
  %conv61 = zext i8 %45 to i32
  %46 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sectors, align 1
  %conv63 = zext i8 %47 to i32
  %mul68 = mul nuw nsw i32 %conv61, %conv59
  %mul71 = mul nuw i32 %mul68, %conv63
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_add_mtd.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.10, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %mul71) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then57, %get_chs.exit
  %48 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %heads, align 4
  %conv76 = zext i8 %49 to i32
  %50 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cylinders, align 2
  %conv78 = zext i16 %51 to i32
  %mul79 = mul nuw nsw i32 %conv78, %conv76
  %52 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sectors, align 1
  %conv81 = zext i8 %53 to i32
  %mul82 = mul nuw i32 %mul79, %conv81
  %size84 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %size84 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul82, ptr %size84, align 4
  %55 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %map_len, align 4
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 2) #9
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !92

kmalloc_array.exit.thread:                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %logic_block_map175 = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %logic_block_map175 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %logic_block_map175, align 8
  br label %out_err

if.end7.i:                                        ; preds = %do.end74
  %60 = extractvalue { i32, i1 } %57, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3264) #14
  %logic_block_map = getelementptr inbounds %struct.ssfdcr_record, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %logic_block_map to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i, ptr %logic_block_map, align 8
  %tobool88.not = icmp eq ptr %call8.i, null
  br i1 %tobool88.not, label %if.end7.i.out_err_crit_edge, label %if.end90

if.end7.i.out_err_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end90:                                         ; preds = %if.end7.i
  %62 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %map_len, align 4
  %mul93 = shl i32 %63, 1
  %64 = call ptr @memset(ptr %call8.i, i32 255, i32 %mul93)
  %call94 = tail call fastcc i32 @build_logical_block_map(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end90.out_err_crit_edge, label %if.end98

if.end90.out_err_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end98:                                         ; preds = %if.end90
  %call100 = tail call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end106, label %if.end98.out_err_crit_edge

if.end98.out_err_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.end106:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %devnum, align 4
  %add110 = add i32 %66, 97
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %67 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %69 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name, align 8
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %add110, i32 noundef %68, ptr noundef %70) #12
  br label %cleanup

out_err:                                          ; preds = %if.end98.out_err_crit_edge, %if.end90.out_err_crit_edge, %if.end7.i.out_err_crit_edge, %kmalloc_array.exit.thread
  %logic_block_map177 = phi ptr [ %logic_block_map175, %kmalloc_array.exit.thread ], [ %logic_block_map, %if.end98.out_err_crit_edge ], [ %logic_block_map, %if.end90.out_err_crit_edge ], [ %logic_block_map, %if.end7.i.out_err_crit_edge ]
  %71 = ptrtoint ptr %logic_block_map177 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %logic_block_map177, align 4
  tail call void @kfree(ptr noundef %72) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end106, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssfdcr_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssfdcr_remove_dev.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssfdcr_remove_dev, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssfdcr_remove_dev.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.23, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #9
  %logic_block_map = getelementptr inbounds %struct.ssfdcr_record, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %logic_block_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logic_block_map, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_valid_cis_sector(ptr noundef %mtd) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %call1 = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %for.cond.preheader.if.then3_crit_edge

for.cond.preheader.if.then3_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %for.inc.2.if.then3_crit_edge, %for.inc.1.if.then3_crit_edge, %for.inc.if.then3_crit_edge, %for.cond.preheader.if.then3_crit_edge
  %offset.040.lcssa = phi i64 [ 0, %for.cond.preheader.if.then3_crit_edge ], [ %conv26, %for.inc.if.then3_crit_edge ], [ %add.1, %for.inc.1.if.then3_crit_edge ], [ %add.2, %for.inc.2.if.then3_crit_edge ]
  %call4 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %offset.040.lcssa, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.do.end_crit_edge, label %lor.lhs.false

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then3
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp6.not = icmp eq i32 %3, 512
  br i1 %cmp6.not, label %if.else, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then3.do.end_crit_edge
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %call7.i, ptr noundef nonnull dereferenceable(10) @cis_numbers, i32 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.then11, label %do.body13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %4 = lshr i64 %offset.040.lcssa, 9
  %conv = trunc i64 %4 to i32
  br label %for.end

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_valid_cis_sector.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_valid_cis_sector, %if.then19)) #9
          to label %for.end [label %if.then19], !srcloc !88

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_valid_cis_sector.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.14, ptr noundef %6, i32 noundef %8) #9
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %9 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erasesize, align 8
  %conv26 = zext i32 %10 to i64
  %call1.1 = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef %conv26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %for.inc.1, label %for.inc.if.then3_crit_edge

for.inc.if.then3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.inc.1:                                        ; preds = %for.inc
  %11 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize, align 8
  %conv26.1 = zext i32 %12 to i64
  %add.1 = add nuw nsw i64 %conv26, %conv26.1
  %call1.2 = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef %add.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %for.inc.2, label %for.inc.1.if.then3_crit_edge

for.inc.1.if.then3_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.inc.2:                                        ; preds = %for.inc.1
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %conv26.2 = zext i32 %14 to i64
  %add.2 = add nuw nsw i64 %add.1, %conv26.2
  %call1.3 = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef %add.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.2.if.then3_crit_edge

for.inc.2.if.then3_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %if.then19, %do.body13, %if.then11, %do.end
  %cis_sector.0 = phi i32 [ -1, %do.end ], [ -1, %if.then19 ], [ %conv, %if.then11 ], [ -1, %do.body13 ], [ -1, %for.inc.2.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %cis_sector.1 = phi i32 [ %cis_sector.0, %for.end ], [ -1, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  ret i32 %cis_sector.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_logical_block_map(ptr nocapture noundef readonly %ssfdc) unnamed_addr #2 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %oob_buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob_buf) #9
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %ssfdc, i32 0, i32 2
  %0 = call ptr @memset(ptr %oob_buf, i32 255, i32 16)
  %1 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mtd1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_logical_block_map.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_logical_block_map, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %map_len = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 8
  %3 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_len, align 4
  %erase_size = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 6
  %5 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erase_size, align 4
  %mul = mul i32 %6, %4
  %div87 = lshr i32 %mul, 10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_logical_block_map.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.16, i32 noundef %4, i32 noundef %div87) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cis_block = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 5
  %7 = ptrtoint ptr %cis_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cis_block, align 4
  %map_len5 = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 8
  %phys_block.0102 = add i32 %8, 1
  %9 = ptrtoint ptr %map_len5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_len5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %phys_block.0102, i32 %10)
  %cmp103 = icmp slt i32 %phys_block.0102, %10
  br i1 %cmp103, label %for.body.lr.ph, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %erase_size6 = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 6
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %15 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %logic_block_map = getelementptr inbounds %struct.ssfdcr_record, ptr %ssfdc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %phys_block.0104 = phi i32 [ %phys_block.0102, %for.body.lr.ph ], [ %phys_block.0, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %erase_size6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erase_size6, align 4
  %mul7 = mul i32 %18, %phys_block.0104
  %conv = zext i32 %mul7 to i64
  %call8 = call i32 @mtd_block_isbad(ptr noundef %2, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #9
  %19 = call ptr @memset(ptr %15, i32 255, i32 16)
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ops.i, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %12, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %11, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %oob_buf, ptr %14, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %13, align 4
  %call.i = call i32 @mtd_read_oob(ptr noundef %2, i64 noundef %conv, ptr noundef nonnull %ops.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %read_raw_oob.exit.thread, label %read_raw_oob.exit

read_raw_oob.exit.thread:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  br label %do.body17

read_raw_oob.exit:                                ; preds = %if.end11
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp1.not.i.not = icmp eq i32 %26, 16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  br i1 %cmp1.not.i.not, label %if.end33, label %read_raw_oob.exit.do.body17_crit_edge

read_raw_oob.exit.do.body17_crit_edge:            ; preds = %read_raw_oob.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

do.body17:                                        ; preds = %read_raw_oob.exit.do.body17_crit_edge, %read_raw_oob.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_logical_block_map.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_logical_block_map, %if.then29)) #9
          to label %cleanup [label %if.then29], !srcloc !88

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_logical_block_map.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.17, i32 noundef %mul7) #9
  br label %cleanup

if.end33:                                         ; preds = %read_raw_oob.exit
  %call35 = call fastcc i32 @get_logical_address(ptr noundef nonnull %oob_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call35)
  %27 = icmp ult i32 %call35, 1000
  br i1 %27, label %if.then40, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %div41 = sdiv i32 %phys_block.0104, 1024
  %mul42 = mul nsw i32 %div41, 1000
  %add43 = add nsw i32 %call35, %mul42
  %conv44 = trunc i32 %phys_block.0104 to i16
  %28 = ptrtoint ptr %logic_block_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %logic_block_map, align 4
  %arrayidx = getelementptr i16, ptr %29, i32 %add43
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv44, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_logical_block_map.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_logical_block_map, %if.then57)) #9
          to label %for.inc [label %if.then57], !srcloc !88

if.then57:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_logical_block_map.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.18, i32 noundef %phys_block.0104, i32 noundef %add43, i32 noundef %div41) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.then40, %if.end33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %phys_block.0 = add nsw i32 %phys_block.0104, 1
  %31 = ptrtoint ptr %map_len5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %map_len5, align 4
  %cmp = icmp slt i32 %phys_block.0, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then29, %do.body17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then29 ], [ -1, %do.body17 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob_buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_logical_address(ptr nocapture noundef readonly %oob_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %j.055 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @__const.get_logical_address.offset, i32 0, i32 %j.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i8, ptr %oob_buf, i32 %1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  %4 = and i32 %conv, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp5 = icmp eq i32 %4, 16
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %shl = shl nuw nsw i32 %conv, 8
  %add = add i32 %1, 1
  %arrayidx3 = getelementptr i8, ptr %oob_buf, i32 %add
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %or = or i32 %shl, %conv4
  %and8 = lshr i32 %or, 1
  %7 = and i32 %and8, 1023
  %and.i = xor i32 %7, -1
  %shr1.1.i = lshr i32 %7, 1
  %shr1.2.i = lshr i32 %7, 2
  %shr1.3.i = lshr i32 %7, 3
  %shr1.4.i = lshr i32 %7, 4
  %shr1.5.i = lshr i32 %or, 6
  %shr1.6.i = lshr i32 %conv4, 7
  %shr1.8.i = lshr i32 %conv, 1
  %shr1.9.i = lshr i32 %conv, 2
  %add.1.i = add nuw nsw i32 %shr1.8.i, %conv
  %add.2.i = add nuw nsw i32 %add.1.i, %shr1.9.i
  %add.3.i = add nsw i32 %add.2.i, %and.i
  %add.4.i = add nsw i32 %add.3.i, %shr1.1.i
  %add.5.i = add nsw i32 %add.4.i, %shr1.2.i
  %add.6.i = add i32 %add.5.i, %shr1.3.i
  %add.7.i = add i32 %add.6.i, %shr1.4.i
  %add.8.i = add i32 %add.7.i, %shr1.5.i
  %add.9.i = add i32 %add.8.i, %shr1.6.i
  %8 = xor i32 %add.9.i, %conv4
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %if.then.for.end_crit_edge, label %do.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_logical_address.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_logical_address, %if.then15)) #9
          to label %for.inc [label %if.then15], !srcloc !88

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add16 = add nuw nsw i32 %j.055, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_logical_address.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.20, i32 noundef %add16, i32 noundef %7) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %do.body, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %spec.select = phi i32 [ %7, %if.then.for.end_crit_edge ], [ -2, %for.inc.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_logical_address.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_logical_address, %if.then34)) #9
          to label %do.end37 [label %if.then34], !srcloc !88

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_logical_address.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.21, i32 noundef %spec.select) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %for.end
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_ssfdc__211_450_init_ssfdcr6, !1, !"__initcall__kmod_ssfdc__211_450_init_ssfdcr6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ssfdc.c", i32 450, i32 1}
!2 = !{ptr @__exitcall_cleanup_ssfdcr, !3, !"__exitcall_cleanup_ssfdcr", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ssfdc.c", i32 451, i32 1}
!4 = !{ptr @__UNIQUE_ID_file212, !5, !"__UNIQUE_ID_file212", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ssfdc.c", i32 453, i32 1}
!6 = !{ptr @__UNIQUE_ID_license213, !5, !"__UNIQUE_ID_license213", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author214, !8, !"__UNIQUE_ID_author214", i1 false, i1 false}
!8 = !{!"../drivers/mtd/ssfdc.c", i32 454, i32 1}
!9 = !{ptr @__UNIQUE_ID_description215, !10, !"__UNIQUE_ID_description215", i1 false, i1 false}
!10 = !{!"../drivers/mtd/ssfdc.c", i32 455, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/ssfdc.c", i32 427, i32 11}
!13 = !{ptr @ssfdcr_tr, !14, !"ssfdcr_tr", i1 false, i1 false}
!14 = !{!"../drivers/mtd/ssfdc.c", i32 426, i32 32}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/ssfdc.c", i32 377, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug207, !16, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/ssfdc.c", i32 385, i32 2}
!22 = !{ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug208, !21, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/ssfdc.c", i32 394, i32 3}
!25 = !{ptr @ssfdcr_readsect.__UNIQUE_ID_ddebug209, !24, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ssfdc.c", i32 410, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ssfdcr_getgeo.__UNIQUE_ID_ddebug210, !27, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ssfdc.c", i32 312, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ssfdcr_add_mtd.__UNIQUE_ID_ddebug204, !31, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ssfdc.c", i32 323, i32 2}
!36 = !{ptr @ssfdcr_add_mtd.__UNIQUE_ID_ddebug205, !35, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ssfdc.c", i32 348, i32 2}
!39 = !{ptr @ssfdcr_add_mtd._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ssfdcr_add_mtd._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/ssfdc.c", i32 128, i32 5}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @get_valid_cis_sector._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @get_valid_cis_sector._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ssfdc.c", i32 135, i32 5}
!48 = !{ptr @get_valid_cis_sector.__UNIQUE_ID_ddebug198, !47, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!49 = !{ptr @cis_numbers, !50, !"cis_numbers", i1 false, i1 false}
!50 = !{!"../drivers/mtd/ssfdc.c", i32 98, i32 22}
!51 = !{ptr @chs_table, !52, !"chs_table", i1 false, i1 false}
!52 = !{!"../drivers/mtd/ssfdc.c", i32 62, i32 26}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/ssfdc.c", i32 247, i32 2}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @build_logical_block_map.__UNIQUE_ID_ddebug201, !54, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/ssfdc.c", i32 260, i32 4}
!59 = !{ptr @build_logical_block_map.__UNIQUE_ID_ddebug202, !58, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ssfdc.c", i32 276, i32 4}
!62 = !{ptr @build_logical_block_map.__UNIQUE_ID_ddebug203, !61, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ssfdc.c", i32 220, i32 5}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @get_logical_address.__UNIQUE_ID_ddebug199, !64, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ssfdc.c", i32 233, i32 2}
!69 = !{ptr @get_logical_address.__UNIQUE_ID_ddebug200, !68, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/ssfdc.c", i32 361, i32 2}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ssfdcr_remove_dev.__UNIQUE_ID_ddebug206, !71, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/ssfdc.c", i32 440, i32 2}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_ssfdcr._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @init_ssfdcr._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148701037, i64 2148701042, i64 2148701055, i64 2148701099, i64 2148701133, i64 2148701154}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2153109587, i64 2153110071, i64 2153109624, i64 2153109680, i64 2153109714, i64 2153109738, i64 2153109779, i64 2153109800, i64 2153109828, i64 2153109862}
!91 = !{!"auto-init"}
!92 = !{!"branch_weights", i32 1, i32 2000}
