; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdblock.c_pt.bc'
source_filename = "../drivers/mtd/mtdblock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtdblk_dev = type { %struct.mtd_blktrans_dev, i32, %struct.mutex, ptr, i32, i32, i32 }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.67 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.67 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_mtdblock__232_353_mtdblock_tr_init6 = internal global ptr @mtdblock_tr_init, section ".initcall6.init", align 4
@mtdblock_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 31, i32 0, i32 512, i32 0, ptr @mtdblock_readsect, ptr @mtdblock_writesect, ptr null, ptr null, ptr null, ptr @mtdblock_flush, ptr @mtdblock_open, ptr @mtdblock_release, ptr @mtdblock_add_mtd, ptr @mtdblock_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_mtdblock_tr_exit = internal global ptr @mtdblock_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"mtdblock.file=drivers/mtd/mtdblock\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [21 x i8] c"mtdblock.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"mtdblock.author=Nicolas Pitre <nico@fluxnic.net> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [95 x i8] c"mtdblock.description=Caching read/erase/writeback block device emulation access to MTD devices\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtdblock\00", [23 x i8] zeroinitializer }, align 32
@do_cached_read.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_cached_read\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/mtdblock.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mtdblock: read on \22%s\22 at 0x%lx, size 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@do_cached_write.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_cached_write\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mtdblock: write on \22%s\22 at 0x%lx, size 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@erase_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014mtdblock: erase of region [0x%lx, 0x%x] on \22%s\22 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erase_write\00", [20 x i8] zeroinitializer }, align 32
@erase_write._entry_ptr = internal global ptr @erase_write._entry, section ".printk_index", align 4
@write_cached_data.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_cached_data\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mtdblock: writing cached data for \22%s\22 at 0x%lx, size 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@mtdblock_open.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdblock_open\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtdblock_open\0A\00", [17 x i8] zeroinitializer }, align 32
@mtdblock_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mtdblk->cache_mutex\00", [43 x i8] zeroinitializer }, align 32
@mtdblock_open.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ok\0A\00", [28 x i8] zeroinitializer }, align 32
@mtdblock_release.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtdblock_release\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtdblock_release\0A\00", [46 x i8] zeroinitializer }, align 32
@mtdblock_release.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.13, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mtdblock_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014%s: MTD device '%s' is NAND, please consider using UBI block devices instead.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtdblock_add_mtd\00", [47 x i8] zeroinitializer }, align 32
@mtdblock_add_mtd._entry_ptr = internal global ptr @mtdblock_add_mtd._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"mtdblock_tr\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 338, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 339, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 188, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 118, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 59, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 86, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 253, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 262, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 269, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 278, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [26 x i8] c"../drivers/mtd/mtdblock.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 326, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_mtdblock_tr_exit, ptr @__initcall__kmod_mtdblock__232_353_mtdblock_tr_init6, ptr @erase_write._entry, ptr @erase_write._entry_ptr, ptr @mtdblock_add_mtd._entry, ptr @mtdblock_add_mtd._entry_ptr, ptr @mtdblock_tr_exit, ptr @mtdblock_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mtdblock_open.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdblock_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdblock_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdblock_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdblock_tr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @mtdblock_tr) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtdblock_tr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @mtdblock_tr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdblock_readsect(ptr nocapture noundef readonly %dev, i32 noundef %block, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %block, 9
  %call = tail call fastcc i32 @do_cached_read(ptr noundef %dev, i32 noundef %shl, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdblock_writesect(ptr nocapture noundef %dev, i32 noundef %block, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.rhs:                                         ; preds = %entry
  %cache_size = getelementptr inbounds %struct.mtdblk_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.rhs.if.end8_crit_edge, label %if.then, !prof !62

land.rhs.if.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %land.rhs
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize, align 8
  %call = tail call noalias ptr @vmalloc(i32 noundef %7) #11
  %8 = ptrtoint ptr %cache_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %cache_data, align 4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.rhs.if.end8_crit_edge, %entry.if.end8_crit_edge
  %shl = shl i32 %block, 9
  %call9 = tail call fastcc i32 @do_cached_write(ptr noundef %dev, i32 noundef %shl, ptr noundef %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdblock_flush(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_mutex = getelementptr inbounds %struct.mtdblk_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cache_mutex, i32 noundef 0) #8
  %call = tail call fastcc i32 @write_cached_data(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %cache_mutex) #8
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %4 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %mtd.addr.0.i.i) #8
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdblock_open(ptr noundef %mbd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdblock_open.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdblock_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdblock_open.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %count = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %count, align 4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 4
  %cache_mutex = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %cache_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @mtdblock_open.__key) #8
  %cache_state = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 6
  %4 = ptrtoint ptr %cache_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cache_state, align 4
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %5 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mtd, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end7.do.body19_crit_edge

if.end7.do.body19_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true:                                    ; preds = %if.end7
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %land.lhs.true.do.body19_crit_edge, label %if.then15

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %cache_size = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 5
  %11 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cache_size, align 4
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 3
  %12 = ptrtoint ptr %cache_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cache_data, align 4
  br label %do.body19

do.body19:                                        ; preds = %if.then15, %land.lhs.true.do.body19_crit_edge, %if.end7.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdblock_open.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdblock_open, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !63

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdblock_open.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.then5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdblock_release(ptr noundef %mbd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdblock_release.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdblock_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdblock_release.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cache_mutex = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cache_mutex, i32 noundef 0) #8
  %call4 = tail call fastcc i32 @write_cached_data(ptr noundef %mbd)
  tail call void @mutex_unlock(ptr noundef %cache_mutex) #8
  %count = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %if.then7, label %do.end.do.body12_crit_edge

do.end.do.body12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then7:                                         ; preds = %do.end
  %file_mode = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 17
  %2 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %file_mode, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then7.if.end10_crit_edge, label %if.then9

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %4 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then9
  %mtd.addr.0.i.i = phi ptr [ %5, %if.then9 ], [ %7, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %8 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.if.end10_crit_edge, label %if.then.i

mtd_get_master.exit.i.if.end10_crit_edge:         ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %mtd.addr.0.i.i) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %mtd_get_master.exit.i.if.end10_crit_edge, %if.then7.if.end10_crit_edge
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %mbd, i32 0, i32 3
  %10 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_data, align 4
  tail call void @vfree(ptr noundef %11) #8
  br label %do.body12

do.body12:                                        ; preds = %if.end10, %do.end.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdblock_release.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdblock_release, %if.then24)) #8
          to label %do.end27 [label %if.then24], !srcloc !63

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdblock_release.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.13) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdblock_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 320) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mtd1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mtd, ptr %mtd1, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %devnum, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  %shr = lshr i64 %6, 9
  %conv = trunc i64 %shr to i32
  %size4 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %size4, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tr, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %readonly = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %readonly to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %readonly, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mtd, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end10.if.end16_crit_edge [
    i8 8, label %if.end10.do.end_crit_edge
    i8 4, label %if.end10.do.end_crit_edge35
  ]

if.end10.do.end_crit_edge35:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end10.do.end_crit_edge, %if.end10.do.end_crit_edge35
  %15 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tr, align 4
  %name14 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %17 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name14, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %16, ptr noundef %18) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end10.if.end16_crit_edge
  %call18 = tail call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.then20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdblock_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cached_read(ptr nocapture noundef readonly %mtdblk, i32 noundef %pos, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mtdblk, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  %cache_size = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 5
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cached_read.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_cached_read, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_cached_read.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.3, ptr noundef %6, i32 noundef %pos, i32 noundef 512) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %cache_state = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 6
  %cache_offset = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 4
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 3
  br label %while.body

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %pos to i64
  %call6 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  br label %cleanup33

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %pos.addr.010 = phi i32 [ %pos, %while.cond.preheader ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.08 = phi ptr [ %buf, %while.cond.preheader ], [ %add.ptr29, %cleanup.while.body_crit_edge ]
  %len.addr.07 = phi i32 [ 512, %while.cond.preheader ], [ %sub30, %cleanup.while.body_crit_edge ]
  %7 = urem i32 %pos.addr.010, %3
  %sub9 = sub i32 %3, %7
  %8 = call i32 @llvm.umin.i32(i32 %sub9, i32 %len.addr.07)
  %9 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.not = icmp eq i32 %10, 0
  br i1 %cmp14.not, label %while.body.if.else_crit_edge, label %land.lhs.true

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %mul = sub nuw i32 %pos.addr.010, %7
  %11 = ptrtoint ptr %cache_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp16 = icmp eq i32 %12, %mul
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache_data, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %7
  %15 = call ptr @memcpy(ptr %buf.addr.08, ptr %add.ptr, i32 %8)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %conv19 = zext i32 %pos.addr.010 to i64
  %call20 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv19, i32 noundef %8, ptr noundef nonnull %retlen, ptr noundef %buf.addr.08) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.else.cleanup33_crit_edge

if.else.cleanup33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end23:                                         ; preds = %if.else
  %16 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %8)
  %cmp24.not = icmp eq i32 %17, %8
  br i1 %cmp24.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup33_crit_edge

if.end23.cleanup33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then18
  %add.ptr29 = getelementptr i8, ptr %buf.addr.08, i32 %8
  %add = add i32 %8, %pos.addr.010
  %sub30 = sub nsw i32 %len.addr.07, %8
  %cmp = icmp sgt i32 %sub30, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup33_crit_edge

cleanup.cleanup33_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup33:                                        ; preds = %cleanup.cleanup33_crit_edge, %if.end23.cleanup33_crit_edge, %if.else.cleanup33_crit_edge, %if.then5
  %retval.2 = phi i32 [ %call6, %if.then5 ], [ %call20, %if.else.cleanup33_crit_edge ], [ -5, %if.end23.cleanup33_crit_edge ], [ 0, %cleanup.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cached_write(ptr nocapture noundef %mtdblk, i32 noundef %pos, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %erase.i = alloca %struct.erase_info, align 8
  %retlen.i = alloca i32, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mtdblk, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  %cache_size = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 5
  %2 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cached_write.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_cached_write, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_cached_write.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.5, ptr noundef %6, i32 noundef %pos, i32 noundef 512) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %cache_state = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 6
  %cache_offset = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 4
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 3
  %7 = getelementptr inbounds %struct.erase_info, ptr %erase.i, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %erase.i, i32 16
  %conv1.i = zext i32 %3 to i64
  br label %while.body

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %pos to i64
  %call6 = call i32 @mtd_write(ptr noundef %1, i64 noundef %conv, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  br label %cleanup59

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %pos.addr.017 = phi i32 [ %pos, %while.cond.preheader ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.015 = phi ptr [ %buf, %while.cond.preheader ], [ %add.ptr55, %cleanup.while.body_crit_edge ]
  %len.addr.014 = phi i32 [ 512, %while.cond.preheader ], [ %sub56, %cleanup.while.body_crit_edge ]
  %9 = urem i32 %pos.addr.017, %3
  %mul = sub nuw i32 %pos.addr.017, %9
  %sub9 = sub i32 %3, %9
  %10 = call i32 @llvm.umin.i32(i32 %sub9, i32 %len.addr.014)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp14 = icmp eq i32 %10, %3
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %12 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %retlen.i, align 4, !annotation !64
  %conv.i = zext i32 %pos.addr.017 to i64
  %13 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %erase.i, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv1.i, ptr %7, align 8
  %call.i = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %pos.addr.017, i32 noundef %3, ptr noundef %16) #13
  br label %erase_write.exit.thread

if.end.i:                                         ; preds = %if.then16
  %call5.i = call i32 @mtd_write(ptr noundef %1, i64 noundef %conv.i, i32 noundef %3, ptr noundef nonnull %retlen.i, ptr noundef %buf.addr.015) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.erase_write.exit.thread_crit_edge

if.end.i.erase_write.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %erase_write.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %3)
  %cmp.not.i = icmp eq i32 %18, %3
  br i1 %cmp.not.i, label %erase_write.exit, label %if.end8.i.erase_write.exit.thread_crit_edge

if.end8.i.erase_write.exit.thread_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %erase_write.exit.thread

erase_write.exit.thread:                          ; preds = %if.end8.i.erase_write.exit.thread_crit_edge, %if.end.i.erase_write.exit.thread_crit_edge, %do.end.i
  %retval.0.i1.ph = phi i32 [ %call.i, %do.end.i ], [ %call5.i, %if.end.i.erase_write.exit.thread_crit_edge ], [ -5, %if.end8.i.erase_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  br label %cleanup59

erase_write.exit:                                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  br label %cleanup

if.else:                                          ; preds = %while.body
  %19 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp21 = icmp eq i32 %20, 2
  br i1 %cmp21, label %land.lhs.true, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %21 = ptrtoint ptr %cache_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cache_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %mul)
  %cmp23.not = icmp eq i32 %22, %mul
  br i1 %cmp23.not, label %land.lhs.true.if.end30thread-pre-split_crit_edge, label %if.then25

land.lhs.true.if.end30thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call fastcc i32 @write_cached_data(ptr noundef %mtdblk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30thread-pre-split_crit_edge, label %if.then25.cleanup59_crit_edge

if.then25.cleanup59_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.then25.if.end30thread-pre-split_crit_edge:     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30thread-pre-split

if.end30thread-pre-split:                         ; preds = %if.then25.if.end30thread-pre-split_crit_edge, %land.lhs.true.if.end30thread-pre-split_crit_edge
  %23 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %cache_state, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.else.if.end30_crit_edge
  %24 = phi i32 [ %.pr, %if.end30thread-pre-split ], [ %20, %if.else.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp32 = icmp eq i32 %24, 0
  br i1 %cmp32, label %if.end30.if.then37_crit_edge, label %lor.lhs.false

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end30
  %25 = ptrtoint ptr %cache_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mul)
  %cmp35.not = icmp eq i32 %26, %mul
  br i1 %cmp35.not, label %lor.lhs.false.if.end51_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end30.if.then37_crit_edge
  %27 = ptrtoint ptr %cache_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cache_state, align 4
  %conv39 = zext i32 %mul to i64
  %28 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache_data, align 4
  %call40 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv39, i32 noundef %3, ptr noundef nonnull %retlen, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then37.cleanup59_crit_edge

if.then37.cleanup59_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end43:                                         ; preds = %if.then37
  %30 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %3)
  %cmp44.not = icmp eq i32 %31, %3
  br i1 %cmp44.not, label %if.end47, label %if.end43.cleanup59_crit_edge

if.end43.cleanup59_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cache_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %cache_offset, align 4
  %33 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %3, ptr %cache_size, align 4
  %34 = ptrtoint ptr %cache_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %cache_state, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end47, %lor.lhs.false.if.end51_crit_edge
  %35 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache_data, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %9
  %37 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.015, i32 %10)
  %38 = ptrtoint ptr %cache_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %cache_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %erase_write.exit
  %add.ptr55 = getelementptr i8, ptr %buf.addr.015, i32 %10
  %add = add i32 %10, %pos.addr.017
  %sub56 = sub nsw i32 %len.addr.014, %10
  %cmp = icmp sgt i32 %sub56, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup59_crit_edge

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup59:                                        ; preds = %cleanup.cleanup59_crit_edge, %if.end43.cleanup59_crit_edge, %if.then37.cleanup59_crit_edge, %if.then25.cleanup59_crit_edge, %erase_write.exit.thread, %if.then5
  %retval.2 = phi i32 [ %call6, %if.then5 ], [ %retval.0.i1.ph, %erase_write.exit.thread ], [ %call26, %if.then25.cleanup59_crit_edge ], [ %call40, %if.then37.cleanup59_crit_edge ], [ -5, %if.end43.cleanup59_crit_edge ], [ 0, %cleanup.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cached_data(ptr nocapture noundef %mtdblk) unnamed_addr #2 align 64 {
entry:
  %erase.i = alloca %struct.erase_info, align 8
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mtdblk, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  %cache_state = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 6
  %2 = ptrtoint ptr %cache_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cached_data.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cached_data, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !63

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %cache_offset = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 4
  %6 = ptrtoint ptr %cache_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_offset, align 4
  %cache_size = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 5
  %8 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_cached_data.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.9, ptr noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %cache_offset6 = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 4
  %10 = ptrtoint ptr %cache_offset6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_offset6, align 4
  %cache_size7 = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 5
  %12 = ptrtoint ptr %cache_size7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_size7, align 4
  %cache_data = getelementptr inbounds %struct.mtdblk_dev, ptr %mtdblk, i32 0, i32 3
  %14 = ptrtoint ptr %cache_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #8
  %16 = getelementptr inbounds %struct.erase_info, ptr %erase.i, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %erase.i, i32 16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %19 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %retlen.i, align 4, !annotation !64
  %conv.i = zext i32 %11 to i64
  %20 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.i, ptr %erase.i, align 8
  %conv1.i = zext i32 %13 to i64
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv1.i, ptr %16, align 8
  %call.i = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %13, ptr noundef %23) #13
  br label %erase_write.exit

if.end.i:                                         ; preds = %do.end
  %call5.i = call i32 @mtd_write(ptr noundef %1, i64 noundef %conv.i, i32 noundef %13, ptr noundef nonnull %retlen.i, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.erase_write.exit_crit_edge

if.end.i.erase_write.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %erase_write.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp.not.i = icmp eq i32 %25, %13
  %spec.select = select i1 %cmp.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  br label %if.then11

erase_write.exit:                                 ; preds = %if.end.i.erase_write.exit_crit_edge, %do.end.i
  %retval.0.i25 = phi i32 [ %call.i, %do.end.i ], [ %call5.i, %if.end.i.erase_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %retval.0.i25)
  %cond = icmp eq i32 %retval.0.i25, -5
  br i1 %cond, label %erase_write.exit.if.then11_crit_edge, label %erase_write.exit.cleanup_crit_edge

erase_write.exit.cleanup_crit_edge:               ; preds = %erase_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

erase_write.exit.if.then11_crit_edge:             ; preds = %erase_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %erase_write.exit.if.then11_crit_edge, %if.end8.i
  %retval.0.i2528 = phi i32 [ %spec.select, %if.end8.i ], [ -5, %erase_write.exit.if.then11_crit_edge ]
  %26 = ptrtoint ptr %cache_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cache_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %erase_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i25, %erase_write.exit.cleanup_crit_edge ], [ %retval.0.i2528, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_mtdblock__232_353_mtdblock_tr_init6, !1, !"__initcall__kmod_mtdblock__232_353_mtdblock_tr_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdblock.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_mtdblock_tr_exit, !1, !"__exitcall_mtdblock_tr_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/mtd/mtdblock.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/mtd/mtdblock.c", i32 356, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdblock.c", i32 357, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdblock.c", i32 339, i32 11}
!12 = !{ptr @mtdblock_tr, !13, !"mtdblock_tr", i1 false, i1 false}
!13 = !{!"../drivers/mtd/mtdblock.c", i32 338, i32 32}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/mtdblock.c", i32 188, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @do_cached_read.__UNIQUE_ID_ddebug227, !15, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/mtdblock.c", i32 118, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @do_cached_write.__UNIQUE_ID_ddebug226, !20, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtdblock.c", i32 59, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @erase_write._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @erase_write._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/mtdblock.c", i32 86, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @write_cached_data.__UNIQUE_ID_ddebug225, !29, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/mtdblock.c", i32 253, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mtdblock_open.__UNIQUE_ID_ddebug228, !33, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!36 = !{ptr @mtdblock_open.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/mtd/mtdblock.c", i32 262, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/mtdblock.c", i32 269, i32 2}
!41 = !{ptr @mtdblock_open.__UNIQUE_ID_ddebug229, !40, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/mtdblock.c", i32 278, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtdblock_release.__UNIQUE_ID_ddebug230, !43, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!46 = !{ptr @mtdblock_release.__UNIQUE_ID_ddebug231, !47, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!47 = !{!"../drivers/mtd/mtdblock.c", i32 294, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/mtdblock.c", i32 326, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mtdblock_add_mtd._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtdblock_add_mtd._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2148483761, i64 2148483766, i64 2148483779, i64 2148483823, i64 2148483857, i64 2148483878}
!64 = !{!"auto-init"}
