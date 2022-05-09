; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/sst25l.c_pt.bc'
source_filename = "../drivers/mtd/devices/sst25l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.flash_info = type { ptr, i16, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.sst25l_flash = type { ptr, %struct.mutex, %struct.mtd_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_sst25l__239_418_sst25l_driver_init6 = internal global ptr @sst25l_driver_init, section ".initcall6.init", align 4
@sst25l_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @sst25l_probe, ptr @sst25l_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sst25l_driver_exit = internal global ptr @sst25l_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [57 x i8] c"sst25l.description=MTD SPI driver for SST25L Flash chips\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [65 x i8] c"sst25l.author=Andre Renaud <andre@bluewatersys.com>, Ryan Mallon\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [39 x i8] c"sst25l.file=drivers/mtd/devices/sst25l\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [19 x i8] c"sst25l.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sst25l\00", [25 x i8] zeroinitializer }, align 32
@sst25l_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&flash->lock\00", [19 x i8] zeroinitializer }, align 32
@sst25l_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s (%lld KiB)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sst25l_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/devices/sst25l.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sst25l_probe._entry_ptr = internal global ptr @sst25l_probe._entry, section ".printk_index", align 4
@sst25l_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"mtd .name = %s, .size = 0x%llx (%lldMiB) .erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sst25l_match_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 332, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading device id\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sst25l_match_device\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sst25l_match_device._entry_ptr = internal global ptr @sst25l_match_device._entry, section ".printk_index", align 4
@sst25l_flash_info = internal constant { [2 x %struct.flash_info], [56 x i8] } { [2 x %struct.flash_info] [%struct.flash_info { ptr @.str.14, i16 -16573, i32 256, i32 1024, i32 4096 }, %struct.flash_info { ptr @.str.15, i16 -16572, i32 256, i32 2048, i32 4096 }], [56 x i8] zeroinitializer }, align 32
@sst25l_match_device._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 343, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown id %.4x\0A\00", [47 x i8] zeroinitializer }, align 32
@sst25l_match_device._entry_ptr.13 = internal global ptr @sst25l_match_device._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25lf020a\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25lf040a\00", [20 x i8] zeroinitializer }, align 32
@sst25l_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 194, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Erase failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sst25l_erase\00", [19 x i8] zeroinitializer }, align 32
@sst25l_erase._entry_ptr = internal global ptr @sst25l_erase._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"sst25l_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 410, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 412, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 364, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 382, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 385, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 332, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"sst25l_flash_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 62, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 343, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 63, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 64, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [32 x i8] c"../drivers/mtd/devices/sst25l.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 194, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_sst25l_driver_exit, ptr @__initcall__kmod_sst25l__239_418_sst25l_driver_init6, ptr @sst25l_driver_exit, ptr @sst25l_erase._entry, ptr @sst25l_erase._entry_ptr, ptr @sst25l_match_device._entry, ptr @sst25l_match_device._entry.11, ptr @sst25l_match_device._entry_ptr, ptr @sst25l_match_device._entry_ptr.13, ptr @sst25l_probe._entry, ptr @sst25l_probe._entry_ptr, ptr @sst25l_driver, ptr @.str, ptr @sst25l_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sst25l_flash_info, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_match_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_flash_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_match_device._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst25l_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sst25l_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sst25l_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sst25l_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_probe(ptr noundef %spi) #2 align 64 {
entry:
  %m.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd_resp.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_resp.i) #6
  %0 = getelementptr inbounds [6 x i8], ptr %cmd_resp.i, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %cmd_resp.i, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %cmd_resp.i, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %cmd_resp.i, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %cmd_resp.i, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %m.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %11 = getelementptr inbounds i8, ptr %t.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 0, i32 84)
  %13 = ptrtoint ptr %cmd_resp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -112, ptr %cmd_resp.i, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %0, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %1, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %3, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %4, align 1
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd_resp.i, ptr %t.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %20 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmd_resp.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #9
  br label %sst25l_match_device.exit.thread

if.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  %conv.i = zext i8 %27 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %conv9.i = zext i8 %29 to i16
  %or.i = or i16 %shl.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16573, i16 %or.i)
  %cmp16.i = icmp eq i16 %or.i, -16573
  %spec.select.i = select i1 %cmp16.i, ptr @sst25l_flash_info, ptr null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16572, i16 %or.i)
  %cmp16.1.i = icmp eq i16 %or.i, -16572
  %spec.select.1.i = select i1 %cmp16.1.i, ptr getelementptr inbounds ([2 x %struct.flash_info], ptr @sst25l_flash_info, i32 0, i32 1), ptr %spec.select.i
  %tobool.not.i = icmp eq ptr %spec.select.1.i, null
  br i1 %tobool.not.i, label %do.end24.i, label %if.end

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i = zext i16 %or.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %conv26.i) #9
  br label %sst25l_match_device.exit.thread

sst25l_match_device.exit.thread:                  ; preds = %do.end24.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  %call.i112 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1504, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i112, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %30 = ptrtoint ptr %call.i112 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spi, ptr %call.i112, align 8
  %lock = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sst25l_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i112, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %32 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data.i, align 8
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool9.not = icmp eq ptr %35, null
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %name12 = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 13
  %36 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %name12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %mtd15 = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2
  %parent = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 56, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %spi, ptr %parent, align 8
  %38 = ptrtoint ptr %mtd15 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %mtd15, align 8
  %flags = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3072, ptr %flags, align 4
  %erase_size = getelementptr inbounds %struct.flash_info, ptr %spec.select.1.i, i32 0, i32 4
  %40 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %erase_size, align 4
  %erasesize = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %erasesize, align 8
  %page_size = getelementptr inbounds %struct.flash_info, ptr %spec.select.1.i, i32 0, i32 2
  %43 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %page_size, align 4
  %writesize = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %writesize, align 4
  %writebufsize = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %writebufsize, align 8
  %nr_pages = getelementptr inbounds %struct.flash_info, ptr %spec.select.1.i, i32 0, i32 3
  %47 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_pages, align 4
  %mul = mul i32 %48, %44
  %conv = zext i32 %mul to i64
  %size = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv, ptr %size, align 8
  %_erase = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 21
  %50 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sst25l_erase, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 24
  %51 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @sst25l_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 25
  %52 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @sst25l_write, ptr %_write, align 8
  %53 = ptrtoint ptr %spec.select.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spec.select.1.i, align 4
  %shr118 = lshr i64 %conv, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.2, ptr noundef %54, i64 noundef %shr118) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sst25l_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sst25l_probe, %if.then40)) #6
          to label %do.end55 [label %if.then40], !srcloc !58

if.then40:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %name42 = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 13
  %55 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name42, align 8
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size, align 8
  %shr47 = lshr i64 %58, 20
  %59 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %erasesize, align 8
  %div110 = lshr i32 %60, 10
  %numeraseregions = getelementptr inbounds %struct.sst25l_flash, ptr %call.i112, i32 0, i32 2, i32 19
  %61 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numeraseregions, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sst25l_probe.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.7, ptr noundef %56, i64 noundef %58, i64 noundef %shr47, i32 noundef %60, i32 noundef %div110, i32 noundef %62) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then40, %if.end13
  br i1 %tobool8.not, label %do.end55.cond.end61_crit_edge, label %cond.true59

do.end55.cond.end61_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end61

cond.true59:                                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  %parts = getelementptr inbounds %struct.flash_platform_data, ptr %33, i32 0, i32 1
  %63 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.flash_platform_data, ptr %33, i32 0, i32 2
  %65 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_parts, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true59, %do.end55.cond.end61_crit_edge
  %cond117 = phi ptr [ %64, %cond.true59 ], [ null, %do.end55.cond.end61_crit_edge ]
  %cond62 = phi i32 [ %66, %cond.true59 ], [ 0, %do.end55.cond.end61_crit_edge ]
  %call63 = call i32 @mtd_device_parse_register(ptr noundef %mtd15, ptr noundef null, ptr noundef null, ptr noundef %cond117, i32 noundef %cond62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  %. = select i1 %tobool64.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %cond.end61, %if.end.cleanup_crit_edge, %sst25l_match_device.exit.thread
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %., %cond.end61 ], [ -19, %sst25l_match_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtd = getelementptr inbounds %struct.sst25l_flash, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 405, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_erase(ptr noundef %mtd, ptr nocapture noundef readonly %instr) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %command.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -96
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %len, align 8
  %conv = trunc i64 %1 to i32
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %2 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize, align 8
  %rem = urem i32 %conv, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %instr, align 8
  %conv2 = trunc i64 %5 to i32
  %rem4 = urem i32 %conv2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem4)
  %tobool5.not = icmp eq i32 %rem4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add = add i64 %5, %1
  %conv12 = trunc i64 %add to i32
  %lock = getelementptr i8, ptr %mtd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call = tail call fastcc i32 @sst25l_wait_till_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %while.cond.preheader, label %if.then14

while.cond.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv12)
  %cmp50 = icmp ult i32 %conv2, %conv12
  br i1 %cmp50, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %6 = getelementptr inbounds [4 x i8], ptr %command.i, i32 0, i32 3
  %7 = getelementptr inbounds [4 x i8], ptr %command.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %command.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  br label %while.body

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %addr.051 = phi i32 [ %conv2, %while.body.lr.ph ], [ %add24, %if.end22.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command.i) #6
  %call.i = call fastcc i32 @sst25l_write_enable(ptr noundef %add.ptr, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.sst25l_erase_sector.exit.thread_crit_edge

while.body.sst25l_erase_sector.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sst25l_erase_sector.exit.thread

if.end.i:                                         ; preds = %while.body
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %command.i, align 1
  %shr.i = lshr i32 %addr.051, 16
  %conv.i = trunc i32 %shr.i to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %8, align 1
  %shr2.i = lshr i32 %addr.051, 8
  %conv3.i = trunc i32 %shr2.i to i8
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.i, ptr %7, align 1
  %conv5.i = trunc i32 %addr.051 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i, ptr %6, align 1
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %17 = call ptr @memset(ptr %9, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %command.i, ptr %t.i.i, align 4
  %19 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %20 = call ptr @memset(ptr %10, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.spi_write.exit.i_crit_edge

if.end.i.spi_write.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %spi_write.exit.i.sst25l_erase_sector.exit.thread_crit_edge

spi_write.exit.i.sst25l_erase_sector.exit.thread_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sst25l_erase_sector.exit.thread

if.end10.i:                                       ; preds = %spi_write.exit.i
  %call11.i = call fastcc i32 @sst25l_wait_till_ready(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %sst25l_erase_sector.exit, label %if.end10.i.sst25l_erase_sector.exit.thread_crit_edge

if.end10.i.sst25l_erase_sector.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sst25l_erase_sector.exit.thread

sst25l_erase_sector.exit.thread:                  ; preds = %if.end10.i.sst25l_erase_sector.exit.thread_crit_edge, %spi_write.exit.i.sst25l_erase_sector.exit.thread_crit_edge, %while.body.sst25l_erase_sector.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %if.end10.i.sst25l_erase_sector.exit.thread_crit_edge ], [ %call.i.i.i, %spi_write.exit.i.sst25l_erase_sector.exit.thread_crit_edge ], [ %call.i, %while.body.sst25l_erase_sector.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command.i) #6
  br label %if.then20

sst25l_erase_sector.exit:                         ; preds = %if.end10.i
  %call15.i = call fastcc i32 @sst25l_write_enable(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool19.not = icmp eq i32 %call15.i, 0
  br i1 %tobool19.not, label %if.end22, label %sst25l_erase_sector.exit.if.then20_crit_edge

sst25l_erase_sector.exit.if.then20_crit_edge:     ; preds = %sst25l_erase_sector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %sst25l_erase_sector.exit.if.then20_crit_edge, %sst25l_erase_sector.exit.thread
  %retval.0.i49 = phi i32 [ %retval.0.i.ph, %sst25l_erase_sector.exit.thread ], [ %call15.i, %sst25l_erase_sector.exit.if.then20_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end22:                                         ; preds = %sst25l_erase_sector.exit
  %31 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %erasesize, align 8
  %add24 = add i32 %32, %addr.051
  %cmp = icmp ult i32 %add24, %conv12
  br i1 %cmp, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then20, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then14 ], [ %retval.0.i49, %if.then20 ], [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  %message = alloca %struct.spi_message, align 4
  %command = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -96
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command) #6
  %0 = getelementptr inbounds [4 x i8], ptr %command, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %command, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %command, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %message, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %9 = getelementptr inbounds i8, ptr %transfer, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 188)
  %11 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %command, align 1
  %12 = lshr i64 %from, 16
  %conv = trunc i64 %12 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %0, align 1
  %14 = lshr i64 %from, 8
  %conv3 = trunc i64 %14 to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %1, align 1
  %conv5 = trunc i64 %from to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %2, align 1
  %17 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %command, ptr %transfer, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %18 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len9, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %rx_buf, align 4
  %len13 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len13, align 4
  %transfer_list.i35 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i37 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i35, ptr noundef %26, ptr noundef nonnull %message) #6
  br i1 %call.i.i.i37, label %if.end.i.i.i39, label %spi_message_add_tail.exit.spi_message_add_tail.exit40_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit40_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit40

if.end.i.i.i39:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i35, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %message, ptr %transfer_list.i35, align 4
  %prev3.i.i.i38 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i38, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i35, ptr %26, align 4
  br label %spi_message_add_tail.exit40

spi_message_add_tail.exit40:                      ; preds = %if.end.i.i.i39, %spi_message_add_tail.exit.spi_message_add_tail.exit40_crit_edge
  %lock = getelementptr i8, ptr %mtd, i32 -92
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call = call fastcc i32 @sst25l_wait_till_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %spi_message_add_tail.exit40.cleanup_crit_edge

spi_message_add_tail.exit40.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit40
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %call16 = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %message) #6
  %tobool17.not = icmp eq ptr %retlen, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 6
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp = icmp ugt i32 %34, 4
  br i1 %cmp, label %if.then19, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %34, -4
  %35 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retlen, align 4
  %add = add i32 %sub, %36
  store i32 %add, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %spi_message_add_tail.exit40.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst25l_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  %msg.i.i100 = alloca %struct.spi_message, align 4
  %t.i101 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %command = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -96
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %command) #6
  %0 = getelementptr inbounds [5 x i8], ptr %command, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %command, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %command, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %command, i32 0, i32 4
  %conv = trunc i64 %to to i32
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = call ptr @memset(ptr %command, i32 255, i32 5)
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %rem = urem i32 %conv, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %mtd, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call = tail call fastcc i32 @sst25l_write_enable(ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp119 = icmp ne i32 %len, 0
  %or.cond = and i1 %tobool1.not, %cmp119
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %9 = getelementptr inbounds i8, ptr %t.i101, i32 4
  %len1.i102 = getelementptr inbounds %struct.spi_transfer, ptr %t.i101, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %msg.i.i100, i32 8
  %prev.i.i.i.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %msg.i.i100, i32 0, i32 1
  %resources.i.i.i.i.i104 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i100, i32 0, i32 10
  %prev.i2.i.i.i.i.i105 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i100, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i106 = getelementptr inbounds %struct.spi_transfer, ptr %t.i101, i32 0, i32 18
  %prev3.i.i.i.i.i.i108 = getelementptr inbounds %struct.spi_transfer, ptr %t.i101, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.lr.ph
  %copied.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %copied.1.lcssa, %for.inc51.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %add53, %for.inc51.for.body_crit_edge ]
  %call5 = call fastcc i32 @sst25l_wait_till_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %for.body
  %11 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -81, ptr %command, align 1
  %conv9129 = zext i32 %i.0120 to i64
  %add = add i64 %conv9129, %to
  %12 = lshr i64 %add, 16
  %conv10 = trunc i64 %12 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %0, align 1
  %14 = lshr i64 %add, 8
  %conv15 = trunc i64 %14 to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %1, align 1
  %conv19 = trunc i64 %add to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %2, align 1
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %i.0120
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %3, align 1
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %22 = call ptr @memset(ptr %7, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %command, ptr %t.i, align 4
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %25 = call ptr @memset(ptr %8, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end8.spi_write.exit_crit_edge

if.end8.spi_write.exit_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end8.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp24 = icmp slt i32 %call.i.i, 0
  br i1 %cmp24, label %spi_write.exit.out_crit_edge, label %if.end27

spi_write.exit.out_crit_edge:                     ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end27:                                         ; preds = %spi_write.exit
  %34 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize, align 4
  %sub = sub i32 %len, %i.0120
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %sub)
  %copied.1115 = add i32 %copied.0122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp33116 = icmp sgt i32 %36, 1
  br i1 %cmp33116, label %for.body35.preheader, label %if.end27.for.inc51_crit_edge

if.end27.for.inc51_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc51

for.body35.preheader:                             ; preds = %if.end27
  %37 = add i32 %copied.0122, %36
  br label %for.body35

for.cond32:                                       ; preds = %spi_write.exit111
  %inc49 = add nuw nsw i32 %j.0117, 1
  %copied.1 = add i32 %copied.1118, 1
  %exitcond.not = icmp eq i32 %inc49, %36
  br i1 %exitcond.not, label %for.cond32.for.inc51_crit_edge, label %for.cond32.for.body35_crit_edge

for.cond32.for.body35_crit_edge:                  ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.cond32.for.inc51_crit_edge:                   ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc51

for.body35:                                       ; preds = %for.cond32.for.body35_crit_edge, %for.body35.preheader
  %copied.1118 = phi i32 [ %copied.1, %for.cond32.for.body35_crit_edge ], [ %copied.1115, %for.body35.preheader ]
  %j.0117 = phi i32 [ %inc49, %for.cond32.for.body35_crit_edge ], [ 1, %for.body35.preheader ]
  %call36 = call fastcc i32 @sst25l_wait_till_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.body35.out_crit_edge

for.body35.out_crit_edge:                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end39:                                         ; preds = %for.body35
  %add40 = add i32 %j.0117, %i.0120
  %arrayidx41 = getelementptr i8, ptr %buf, i32 %add40
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx41, align 1
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %0, align 1
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i101) #6
  %43 = call ptr @memset(ptr %9, i32 0, i32 92)
  %44 = ptrtoint ptr %t.i101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %command, ptr %t.i101, align 4
  %45 = ptrtoint ptr %len1.i102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %len1.i102, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i100) #6
  %46 = call ptr @memset(ptr %10, i32 0, i32 40)
  %47 = ptrtoint ptr %msg.i.i100 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %msg.i.i100, ptr %msg.i.i100, align 4
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i100, ptr %prev.i.i.i.i.i.i103, align 4
  %49 = ptrtoint ptr %resources.i.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %resources.i.i.i.i.i104, ptr %resources.i.i.i.i.i104, align 4
  %50 = ptrtoint ptr %prev.i2.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resources.i.i.i.i.i104, ptr %prev.i2.i.i.i.i.i105, align 4
  %call.i.i.i.i.i.i107 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i106, ptr noundef nonnull %msg.i.i100, ptr noundef nonnull %msg.i.i100) #6
  br i1 %call.i.i.i.i.i.i107, label %if.end.i.i.i.i.i.i109, label %if.end39.spi_write.exit111_crit_edge

if.end39.spi_write.exit111_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit111

if.end.i.i.i.i.i.i109:                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i.i.i.i106, ptr %prev.i.i.i.i.i.i103, align 4
  %52 = ptrtoint ptr %transfer_list.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i100, ptr %transfer_list.i.i.i.i106, align 4
  %53 = ptrtoint ptr %prev3.i.i.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i100, ptr %prev3.i.i.i.i.i.i108, align 4
  %54 = ptrtoint ptr %msg.i.i100 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i.i.i.i106, ptr %msg.i.i100, align 4
  br label %spi_write.exit111

spi_write.exit111:                                ; preds = %if.end.i.i.i.i.i.i109, %if.end39.spi_write.exit111_crit_edge
  %call.i.i110 = call i32 @spi_sync(ptr noundef %42, ptr noundef nonnull %msg.i.i100) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i100) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool46.not = icmp eq i32 %call.i.i110, 0
  br i1 %tobool46.not, label %for.cond32, label %spi_write.exit111.out_crit_edge

spi_write.exit111.out_crit_edge:                  ; preds = %spi_write.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc51:                                        ; preds = %for.cond32.for.inc51_crit_edge, %if.end27.for.inc51_crit_edge
  %copied.1.lcssa = phi i32 [ %copied.1115, %if.end27.for.inc51_crit_edge ], [ %37, %for.cond32.for.inc51_crit_edge ]
  %55 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %writesize, align 4
  %add53 = add i32 %56, %i.0120
  %cmp = icmp ult i32 %add53, %len
  br i1 %cmp, label %for.inc51.for.body_crit_edge, label %for.inc51.out_crit_edge

for.inc51.out_crit_edge:                          ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc51.out_crit_edge, %spi_write.exit111.out_crit_edge, %for.body35.out_crit_edge, %spi_write.exit.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge
  %copied.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %copied.1118, %for.body35.out_crit_edge ], [ %copied.1118, %spi_write.exit111.out_crit_edge ], [ %copied.0122, %for.body.out_crit_edge ], [ %copied.0122, %spi_write.exit.out_crit_edge ], [ %copied.1.lcssa, %for.inc51.out_crit_edge ]
  %call55 = call fastcc i32 @sst25l_write_enable(ptr noundef %add.ptr, i32 noundef 0)
  %tobool56.not = icmp eq ptr %retlen, null
  br i1 %tobool56.not, label %out.if.end58_crit_edge, label %if.then57

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %copied.2, ptr %retlen, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %out.if.end58_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %if.end58 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %command) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sst25l_wait_till_ready(ptr nocapture noundef readonly %flash) unnamed_addr #2 align 64 {
entry:
  %m.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd_resp.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = getelementptr inbounds [2 x i8], ptr %cmd_resp.i, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %m.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %3 = getelementptr inbounds i8, ptr %t.i, i32 12
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %add.neg = sub i32 -300, %0
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  %4 = call ptr @memset(ptr %2, i32 0, i32 40)
  %5 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m.i, ptr %m.i, align 4
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %8 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %9 = call ptr @memset(ptr %3, i32 0, i32 84)
  %10 = ptrtoint ptr %cmd_resp.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %cmd_resp.i, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %1, align 1
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd_resp.i, ptr %t.i, align 4
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd_resp.i, ptr %rx_buf.i, align 4
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body.spi_message_add_tail.exit.i_crit_edge

do.body.spi_message_add_tail.exit.i_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %do.body.spi_message_add_tail.exit.i_crit_edge
  %19 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flash, align 8
  %call.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %m.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sst25l_status.exit, label %if.end

sst25l_status.exit:                               ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not = icmp eq i8 %23, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 136, i32 noundef 0) #6
  %call.i9 = call i32 @__cond_resched() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %24
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end4.do.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sst25l_status.exit
  %retval.0 = phi i32 [ %call.i, %sst25l_status.exit ], [ -110, %if.end4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sst25l_write_enable(ptr nocapture noundef readonly %flash, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  %m.i = alloca %struct.spi_message, align 4
  %t.i68 = alloca %struct.spi_transfer, align 4
  %cmd_resp.i = alloca [2 x i8], align 1
  %msg.i.i56 = alloca %struct.spi_message, align 4
  %t.i57 = alloca %struct.spi_transfer, align 4
  %msg.i.i44 = alloca %struct.spi_message, align 4
  %t.i45 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %command = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command) #6
  %0 = getelementptr inbounds [2 x i8], ptr %command, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i8 4, i8 6
  %2 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %command, align 1
  %3 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flash, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %command, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end, label %spi_write.exit.cleanup_crit_edge

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %spi_write.exit
  %19 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 80, ptr %command, align 1
  %20 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flash, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i45) #6
  %22 = getelementptr inbounds i8, ptr %t.i45, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %command, ptr %t.i45, align 4
  %len1.i46 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %len1.i46, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i44) #6
  %26 = getelementptr inbounds i8, ptr %msg.i.i44, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i44, ptr %msg.i.i44, align 4
  %prev.i.i.i.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %msg.i.i44, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i44, ptr %prev.i.i.i.i.i.i47, align 4
  %resources.i.i.i.i.i48 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i44, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i48, ptr %resources.i.i.i.i.i48, align 4
  %prev.i2.i.i.i.i.i49 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i44, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i48, ptr %prev.i2.i.i.i.i.i49, align 4
  %transfer_list.i.i.i.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 18
  %call.i.i.i.i.i.i51 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i50, ptr noundef nonnull %msg.i.i44, ptr noundef nonnull %msg.i.i44) #6
  br i1 %call.i.i.i.i.i.i51, label %if.end.i.i.i.i.i.i53, label %if.end.spi_write.exit55_crit_edge

if.end.spi_write.exit55_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit55

if.end.i.i.i.i.i.i53:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i50, ptr %prev.i.i.i.i.i.i47, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i44, ptr %transfer_list.i.i.i.i50, align 4
  %prev3.i.i.i.i.i.i52 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i44, ptr %prev3.i.i.i.i.i.i52, align 4
  %35 = ptrtoint ptr %msg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i50, ptr %msg.i.i44, align 4
  br label %spi_write.exit55

spi_write.exit55:                                 ; preds = %if.end.i.i.i.i.i.i53, %if.end.spi_write.exit55_crit_edge
  %call.i.i54 = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %tobool6.not = icmp eq i32 %call.i.i54, 0
  br i1 %tobool6.not, label %if.end8, label %spi_write.exit55.cleanup_crit_edge

spi_write.exit55.cleanup_crit_edge:               ; preds = %spi_write.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %spi_write.exit55
  %36 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %command, align 1
  %conv12 = select i1 %tobool.not, i8 12, i8 0
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv12, ptr %0, align 1
  %38 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flash, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i57) #6
  %40 = getelementptr inbounds i8, ptr %t.i57, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 92)
  %42 = ptrtoint ptr %t.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %command, ptr %t.i57, align 4
  %len1.i58 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len1.i58, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i56) #6
  %44 = getelementptr inbounds i8, ptr %msg.i.i56, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i56, ptr %msg.i.i56, align 4
  %prev.i.i.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %msg.i.i56, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i56, ptr %prev.i.i.i.i.i.i59, align 4
  %resources.i.i.i.i.i60 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i60, ptr %resources.i.i.i.i.i60, align 4
  %prev.i2.i.i.i.i.i61 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i60, ptr %prev.i2.i.i.i.i.i61, align 4
  %transfer_list.i.i.i.i62 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 18
  %call.i.i.i.i.i.i63 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i62, ptr noundef nonnull %msg.i.i56, ptr noundef nonnull %msg.i.i56) #6
  br i1 %call.i.i.i.i.i.i63, label %if.end.i.i.i.i.i.i65, label %if.end8.spi_write.exit67_crit_edge

if.end8.spi_write.exit67_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit67

if.end.i.i.i.i.i.i65:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i62, ptr %prev.i.i.i.i.i.i59, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i56, ptr %transfer_list.i.i.i.i62, align 4
  %prev3.i.i.i.i.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i56, ptr %prev3.i.i.i.i.i.i64, align 4
  %53 = ptrtoint ptr %msg.i.i56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i62, ptr %msg.i.i56, align 4
  br label %spi_write.exit67

spi_write.exit67:                                 ; preds = %if.end.i.i.i.i.i.i65, %if.end8.spi_write.exit67_crit_edge
  %call.i.i66 = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i56) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i56) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool17.not = icmp eq i32 %call.i.i66, 0
  br i1 %tobool17.not, label %if.end19, label %spi_write.exit67.cleanup_crit_edge

spi_write.exit67.cleanup_crit_edge:               ; preds = %spi_write.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %spi_write.exit67
  br i1 %tobool.not, label %if.end19.if.end29_crit_edge, label %if.then21

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i68) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  %54 = getelementptr inbounds [2 x i8], ptr %cmd_resp.i, i32 0, i32 1
  %55 = getelementptr inbounds i8, ptr %m.i, i32 8
  %56 = call ptr @memset(ptr %55, i32 0, i32 40)
  %57 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %59 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %61 = getelementptr inbounds i8, ptr %t.i68, i32 12
  %62 = call ptr @memset(ptr %61, i32 0, i32 84)
  %63 = ptrtoint ptr %cmd_resp.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %cmd_resp.i, align 1
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %54, align 1
  %65 = ptrtoint ptr %t.i68 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %cmd_resp.i, ptr %t.i68, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i68, i32 0, i32 1
  %66 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cmd_resp.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i68, i32 0, i32 2
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i68, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then21.spi_message_add_tail.exit.i_crit_edge

if.then21.spi_message_add_tail.exit.i_crit_edge:  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %69 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i68, i32 0, i32 18, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %71 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then21.spi_message_add_tail.exit.i_crit_edge
  %72 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %flash, align 8
  %call.i = call i32 @spi_sync(ptr noundef %73, ptr noundef nonnull %m.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sst25l_status.exit, label %if.end25

sst25l_status.exit:                               ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i68) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  br label %cleanup

if.end25:                                         ; preds = %spi_message_add_tail.exit.i
  %74 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_resp.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i68) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  %76 = and i8 %75, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool26.not = icmp eq i8 %76, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %sst25l_status.exit, %spi_write.exit67.cleanup_crit_edge, %spi_write.exit55.cleanup_crit_edge, %spi_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ %call.i.i54, %spi_write.exit55.cleanup_crit_edge ], [ %call.i.i66, %spi_write.exit67.cleanup_crit_edge ], [ %call.i, %sst25l_status.exit ], [ -30, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_sst25l__239_418_sst25l_driver_init6, !1, !"__initcall__kmod_sst25l__239_418_sst25l_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/sst25l.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_sst25l_driver_exit, !1, !"__exitcall_sst25l_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/sst25l.c", i32 420, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/sst25l.c", i32 421, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/mtd/devices/sst25l.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/sst25l.c", i32 412, i32 11}
!12 = !{ptr @sst25l_driver, !13, !"sst25l_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/sst25l.c", i32 410, i32 26}
!14 = !{ptr @sst25l_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/sst25l.c", i32 364, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/devices/sst25l.c", i32 382, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sst25l_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sst25l_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/sst25l.c", i32 385, i32 2}
!27 = !{ptr @sst25l_probe.__UNIQUE_ID_ddebug238, !26, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/devices/sst25l.c", i32 332, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sst25l_match_device._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @sst25l_match_device._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/devices/sst25l.c", i32 343, i32 3}
!36 = !{ptr @sst25l_match_device._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sst25l_match_device._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/devices/sst25l.c", i32 63, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/devices/sst25l.c", i32 64, i32 3}
!42 = !{ptr @sst25l_flash_info, !43, !"sst25l_flash_info", i1 false, i1 false}
!43 = !{!"../drivers/mtd/devices/sst25l.c", i32 62, i32 26}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/devices/sst25l.c", i32 194, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sst25l_erase._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sst25l_erase._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148961065, i64 2148961070, i64 2148961083, i64 2148961127, i64 2148961161, i64 2148961182}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"auto-init"}
