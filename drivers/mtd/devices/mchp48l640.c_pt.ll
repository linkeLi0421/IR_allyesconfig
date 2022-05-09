; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/mchp48l640.c_pt.bc'
source_filename = "../drivers/mtd/devices/mchp48l640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mchp48_caps = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.mchp48l640_flash = type { ptr, %struct.mutex, %struct.mtd_info, ptr }
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

@__initcall__kmod_mchp48l640__239_371_mchp48l640_driver_init6 = internal global ptr @mchp48l640_driver_init, section ".initcall6.init", align 4
@mchp48l640_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @mchp48l640_probe, ptr @mchp48l640_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp48l640_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mchp48l640_driver_exit = internal global ptr @mchp48l640_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [71 x i8] c"mchp48l640.description=MTD SPI driver for Microchip 48l640 EERAM chips\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [46 x i8] c"mchp48l640.author=Heiko Schocher <hs@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [47 x i8] c"mchp48l640.file=drivers/mtd/devices/mchp48l640\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"mchp48l640.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [32 x i8] c"mchp48l640.alias=spi:mchp48l640\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mchp48l640\00", [21 x i8] zeroinitializer }, align 32
@mchp48l640_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,48l640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp48l640_caps }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mchp48l640_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&flash->lock\00", [19 x i8] zeroinitializer }, align 32
@mchp48l640_caps = internal constant { %struct.mchp48_caps, [24 x i8] } { %struct.mchp48_caps { i32 8192, i32 32 }, [24 x i8] zeroinitializer }, align 32
@mchp48l640_read_status.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp48l640_read_status\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/devices/mchp48l640.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read status ret: %d status: %x\00", [33 x i8] zeroinitializer }, align 32
@mchp48l640_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not set continuous mode ret: %d\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mchp48l640_set_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp48l640_set_mode._entry_ptr = internal global ptr @mchp48l640_set_mode._entry, section ".printk_index", align 4
@mchp48l640_write_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 131, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"write %sable failed ret: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mchp48l640_write_prepare\00", [39 x i8] zeroinitializer }, align 32
@mchp48l640_write_prepare._entry_ptr = internal global ptr @mchp48l640_write_prepare._entry, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@mchp48l640_write_prepare.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"write %sable success ret: %d\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mchp48l640_waitforbit.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mchp48l640_waitforbit\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"read status ret: %d bit: %x %sset status: %x\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@mchp48l640_waitforbit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Timeout waiting for bit %x %s set in status register.\00", [42 x i8] zeroinitializer }, align 32
@mchp48l640_waitforbit._entry_ptr = internal global ptr @mchp48l640_waitforbit._entry, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@mchp48l640_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 263, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read fail with: %d\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp48l640_read_page\00", [43 x i8] zeroinitializer }, align 32
@mchp48l640_read_page._entry_ptr = internal global ptr @mchp48l640_read_page._entry, section ".printk_index", align 4
@mchp48l640_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 205, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write fail with: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mchp48l640_write_page\00", [42 x i8] zeroinitializer }, align 32
@mchp48l640_write_page._entry_ptr = internal global ptr @mchp48l640_write_page._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"mchp48l640_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 362, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 364, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"mchp48l640_of_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 353, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 310, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mchp48l640_caps\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 293, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 157, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 130, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 133, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 94, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 110, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 464, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 263, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [36 x i8] c"../drivers/mtd/devices/mchp48l640.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 205, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_mchp48l640_driver_exit, ptr @__initcall__kmod_mchp48l640__239_371_mchp48l640_driver_init6, ptr @mchp48l640_driver_exit, ptr @mchp48l640_read_page._entry, ptr @mchp48l640_read_page._entry_ptr, ptr @mchp48l640_set_mode._entry, ptr @mchp48l640_set_mode._entry_ptr, ptr @mchp48l640_waitforbit._entry, ptr @mchp48l640_waitforbit._entry_ptr, ptr @mchp48l640_write_page._entry, ptr @mchp48l640_write_page._entry_ptr, ptr @mchp48l640_write_prepare._entry, ptr @mchp48l640_write_prepare._entry_ptr, ptr @mchp48l640_driver, ptr @.str, ptr @mchp48l640_of_table, ptr @mchp48l640_probe.__key, ptr @.str.1, ptr @mchp48l640_caps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_write_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_waitforbit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp48l640_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp48l640_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mchp48l640_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp48l640_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mchp48l640_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp48l640_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %cmd.i80 = alloca [2 x i8], align 1
  %cmd.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1512, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mchp48l640_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %cmd.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %call.i79 = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef %2, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  %conv.i = zext i8 %8 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %status.0 = phi i32 [ %conv.i, %if.then.i ], [ -1, %if.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp48l640_read_status.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp48l640_probe, %if.then10.i)) #7
          to label %mchp48l640_read_status.exit [label %if.then10.i], !srcloc !76

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp48l640_read_status.__UNIQUE_ID_ddebug232, ptr noundef %10, ptr noundef nonnull @.str.4, i32 noundef %call.i79, i32 noundef %status.0) #7
  br label %mchp48l640_read_status.exit

mchp48l640_read_status.exit:                      ; preds = %if.then10.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end5, label %mchp48l640_read_status.exit.cleanup_crit_edge

mchp48l640_read_status.exit.cleanup_crit_edge:    ; preds = %mchp48l640_read_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %mchp48l640_read_status.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i80) #7
  %call.i81 = call fastcc i32 @mchp48l640_write_prepare(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end.i, label %mchp48l640_set_mode.exit.thread

mchp48l640_set_mode.exit.thread:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i80) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %11 = getelementptr inbounds [2 x i8], ptr %cmd.i80, i32 0, i32 1
  %12 = ptrtoint ptr %cmd.i80 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cmd.i80, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %11, align 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %16 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd.i80, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.spi_write.exit.i_crit_edge

if.end.i.spi_write.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %15, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i, label %spi_write.exit.i.mchp48l640_set_mode.exit_crit_edge, label %do.end.i

spi_write.exit.i.mchp48l640_set_mode.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mchp48l640_set_mode.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef %call.i.i.i) #10
  br label %mchp48l640_set_mode.exit

mchp48l640_set_mode.exit:                         ; preds = %do.end.i, %spi_write.exit.i.mchp48l640_set_mode.exit_crit_edge
  %call8.i = call fastcc i32 @mchp48l640_waitforbit(ptr noundef nonnull %call.i, i32 noundef 32, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool7.not = icmp eq i32 %call8.i, 0
  br i1 %tobool7.not, label %if.end9, label %mchp48l640_set_mode.exit.cleanup_crit_edge

mchp48l640_set_mode.exit.cleanup_crit_edge:       ; preds = %mchp48l640_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %mchp48l640_set_mode.exit
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %32 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data.i, align 8
  %call13 = call ptr @of_device_get_match_data(ptr noundef %spi) #7
  %caps = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 3
  %tobool15.not = icmp eq ptr %call13, null
  %spec.select = select i1 %tobool15.not, ptr @mchp48l640_caps, ptr %call13
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select, ptr %caps, align 8
  %mtd = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %of_node.i = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 56, i32 27
  %37 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %of_node.i, align 8
  %name.i = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 13
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i, align 8
  %tobool.not.i84 = icmp eq ptr %39, null
  br i1 %tobool.not.i84, label %if.then.i86, label %if.end9.mtd_set_of_node.exit_crit_edge

if.end9.mtd_set_of_node.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_set_of_node.exit

if.then.i86:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i85 = call i32 @of_property_read_string(ptr noundef %36, ptr noundef nonnull @.str.19, ptr noundef %name.i) #7
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i86, %if.end9.mtd_set_of_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 56, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spi, ptr %parent, align 8
  %41 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7168, ptr %flags, align 4
  %43 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %caps, align 8
  %page_size = getelementptr inbounds %struct.mchp48_caps, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_size, align 4
  %writesize = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %writesize, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %44, align 4
  %conv = zext i32 %49 to i64
  %size29 = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %size29 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv, ptr %size29, align 8
  %_read = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 24
  %51 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mchp48l640_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mchp48l640_flash, ptr %call.i, i32 0, i32 2, i32 25
  %52 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mchp48l640_write, ptr %_write, align 8
  %tobool33.not = icmp eq ptr %33, null
  br i1 %tobool33.not, label %mtd_set_of_node.exit.cond.end37_crit_edge, label %cond.true35

mtd_set_of_node.exit.cond.end37_crit_edge:        ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end37

cond.true35:                                      ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  %parts = getelementptr inbounds %struct.flash_platform_data, ptr %33, i32 0, i32 1
  %53 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.flash_platform_data, ptr %33, i32 0, i32 2
  %55 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_parts, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true35, %mtd_set_of_node.exit.cond.end37_crit_edge
  %cond91 = phi ptr [ %54, %cond.true35 ], [ null, %mtd_set_of_node.exit.cond.end37_crit_edge ]
  %cond38 = phi i32 [ %56, %cond.true35 ], [ 0, %mtd_set_of_node.exit.cond.end37_crit_edge ]
  %call39 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef %cond91, i32 noundef %cond38) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %mchp48l640_set_mode.exit.cleanup_crit_edge, %mchp48l640_set_mode.exit.thread, %mchp48l640_read_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i79, %mchp48l640_read_status.exit.cleanup_crit_edge ], [ %call8.i, %mchp48l640_set_mode.exit.cleanup_crit_edge ], [ %call39, %cond.end37 ], [ %call.i81, %mchp48l640_set_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp48l640_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtd = getelementptr inbounds %struct.mchp48l640_flash, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 348, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp48l640_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr i8, ptr %mtd, i32 1408
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %page_size = getelementptr inbounds %struct.mchp48_caps, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp27.not = icmp eq i32 %len, 0
  br i1 %cmp27.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mtd, i32 -96
  %lock.i = getelementptr i8, ptr %mtd, i32 -92
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %woff.029 = phi i64 [ %from, %while.body.lr.ph ], [ %add3, %if.end.while.body_crit_edge ]
  %wlen.028 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %sub = sub i32 %len, %wlen.028
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %3)
  %arrayidx = getelementptr i8, ptr %buf, i32 %wlen.028
  %add.i = add i32 %4, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %while.body.cleanup_crit_edge, label %if.end.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body
  %call.i.i = tail call fastcc i32 @mchp48l640_waitforbit(ptr noundef %add.ptr.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %fail.i

if.end4.i:                                        ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %call9.i.i, align 128
  %6 = lshr i64 %woff.029, 8
  %conv.i.i = trunc i64 %6 to i8
  %arrayidx1.i.i = getelementptr i8, ptr %call9.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i.i, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = trunc i64 %woff.029 to i8
  %arrayidx3.i.i = getelementptr i8, ptr %call9.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 2
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %call6.i = tail call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %call9.i.i, i32 noundef 3, ptr noundef %arrayidx, i32 noundef %4) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %if.end, label %mchp48l640_read_page.exit

fail.i:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #10
  br label %cleanup

mchp48l640_read_page.exit:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %13 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retlen, align 4
  %add10.i = add i32 %14, %4
  store i32 %add10.i, ptr %retlen, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %add = add i32 %4, %wlen.028
  %conv = zext i32 %4 to i64
  %add3 = add i64 %woff.029, %conv
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %mchp48l640_read_page.exit, %fail.i, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %mchp48l640_read_page.exit ], [ %call.i.i, %fail.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp48l640_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr i8, ptr %mtd, i32 1408
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %page_size = getelementptr inbounds %struct.mchp48_caps, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp22.not = icmp eq i32 %len, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mtd, i32 -96
  %lock.i = getelementptr i8, ptr %mtd, i32 -92
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %woff.024 = phi i64 [ %to, %while.body.lr.ph ], [ %add3, %if.end.while.body_crit_edge ]
  %wlen.023 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %sub = sub i32 %len, %wlen.023
  %6 = call i32 @llvm.umin.i32(i32 %sub, i32 %3)
  %arrayidx = getelementptr i8, ptr %buf, i32 %wlen.023
  %add.i = add i32 %6, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3265) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %while.body.cleanup_crit_edge, label %if.end.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body
  %call.i.i = call fastcc i32 @mchp48l640_waitforbit(ptr noundef %add.ptr.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.fail.i_crit_edge

if.end.i.fail.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @mchp48l640_write_prepare(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.fail.i_crit_edge

if.end4.i.fail.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %call9.i.i, align 128
  %8 = lshr i64 %woff.024, 8
  %conv.i.i = trunc i64 %8 to i8
  %arrayidx1.i.i = getelementptr i8, ptr %call9.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i.i, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = trunc i64 %woff.024 to i8
  %arrayidx3.i.i = getelementptr i8, ptr %call9.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 2
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 3
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx, i32 %6)
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %14 = call ptr @memset(ptr %4, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %t.i.i, align 4
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %17 = call ptr @memset(ptr %5, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end8.i.spi_write.exit.i_crit_edge

if.end8.i.spi_write.exit.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end8.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %spi_write.exit.i.fail.i_crit_edge

spi_write.exit.i.fail.i_crit_edge:                ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.i

if.then14.i:                                      ; preds = %spi_write.exit.i
  %26 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retlen, align 4
  %add15.i = add i32 %27, %6
  store i32 %add15.i, ptr %retlen, align 4
  %call17.i = call fastcc i32 @mchp48l640_waitforbit(ptr noundef %add.ptr.i, i32 noundef 2, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end, label %if.then14.i.fail.i_crit_edge

if.then14.i.fail.i_crit_edge:                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.i

fail.i:                                           ; preds = %if.then14.i.fail.i_crit_edge, %spi_write.exit.i.fail.i_crit_edge, %if.end4.i.fail.i_crit_edge, %if.end.i.fail.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end.i.fail.i_crit_edge ], [ %call5.i, %if.end4.i.fail.i_crit_edge ], [ %call.i.i.i, %spi_write.exit.i.fail.i_crit_edge ], [ %call17.i, %if.then14.i.fail.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %ret.0.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.then14.i
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %add = add i32 %6, %wlen.023
  %conv = zext i32 %6 to i64
  %add3 = add i64 %woff.024, %conv
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %fail.i, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %fail.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp48l640_write_prepare(ptr noundef %flash) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !78
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %cmd, align 1
  %lock = getelementptr inbounds %struct.mchp48l640_flash, ptr %flash, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flash, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %spi_write.exit.do.body8_crit_edge, label %do.end

spi_write.exit.do.body8_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flash, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #10
  br label %do.body8

do.body8:                                         ; preds = %do.end, %spi_write.exit.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp48l640_write_prepare.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp48l640_write_prepare, %if.then14)) #7
          to label %if.then23 [label %if.then14], !srcloc !76

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %flash, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp48l640_write_prepare.__UNIQUE_ID_ddebug234, ptr noundef %22, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #7
  br label %if.then23

if.then23:                                        ; preds = %if.then14, %do.body8
  %call24 = call fastcc i32 @mchp48l640_waitforbit(ptr noundef %flash, i32 noundef 2, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #7
  ret i32 %call24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp48l640_waitforbit(ptr noundef %flash, i32 noundef %bit, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.mchp48l640_flash, ptr %flash, i32 0, i32 1
  %cond = select i1 %set, ptr @.str.16, ptr @.str.17
  %add.neg = sub i32 -10, %0
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %entry
  %status.0 = phi i32 [ -1, %entry ], [ %status.1, %if.end19.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #7
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %cmd.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %1, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %4 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flash, align 8
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef %1, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body.do.body.i_crit_edge

do.body.do.body.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv.i = zext i8 %7 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %do.body.do.body.i_crit_edge
  %status.1 = phi i32 [ %conv.i, %if.then.i ], [ %status.0, %do.body.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp48l640_read_status.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp48l640_waitforbit, %if.then10.i)) #7
          to label %mchp48l640_read_status.exit [label %if.then10.i], !srcloc !76

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flash, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp48l640_read_status.__UNIQUE_ID_ddebug232, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %status.1) #7
  br label %mchp48l640_read_status.exit

mchp48l640_read_status.exit:                      ; preds = %if.then10.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp48l640_waitforbit.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp48l640_waitforbit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %mchp48l640_read_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flash, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp48l640_waitforbit.__UNIQUE_ID_ddebug233, ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %call.i, i32 noundef %bit, ptr noundef nonnull %cond, i32 noundef %status.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %mchp48l640_read_status.exit
  br i1 %tobool.not.i, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %and = and i32 %status.1, %bit
  br i1 %set, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %bit)
  %cmp = icmp eq i32 %and, %bit
  br i1 %cmp, label %if.then12.cleanup_crit_edge, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.else.cleanup_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then12.if.end19_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %12
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.end19.do.body_crit_edge, label %do.end27

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flash, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %bit, ptr noundef nonnull %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.else.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end27 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_mchp48l640__239_371_mchp48l640_driver_init6, !1, !"__initcall__kmod_mchp48l640__239_371_mchp48l640_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 371, i32 1}
!2 = !{ptr @__exitcall_mchp48l640_driver_exit, !1, !"__exitcall_mchp48l640_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 373, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 374, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 375, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias244, !11, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 376, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 364, i32 11}
!14 = !{ptr @mchp48l640_driver, !15, !"mchp48l640_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 362, i32 26}
!16 = !{ptr @mchp48l640_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 310, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 81, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mchp48l640_read_status.__UNIQUE_ID_ddebug232, !20, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 157, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mchp48l640_set_mode._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @mchp48l640_set_mode._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 130, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mchp48l640_write_prepare._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mchp48l640_write_prepare._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 133, i32 2}
!40 = !{ptr @mchp48l640_write_prepare.__UNIQUE_ID_ddebug234, !39, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 94, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mchp48l640_waitforbit.__UNIQUE_ID_ddebug233, !42, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!45 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 110, i32 2}
!49 = !{ptr @mchp48l640_waitforbit._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mchp48l640_waitforbit._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mchp48l640_caps, !52, !"mchp48l640_caps", i1 false, i1 false}
!52 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 293, i32 33}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 263, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mchp48l640_read_page._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mchp48l640_read_page._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 205, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mchp48l640_write_page._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mchp48l640_write_page._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mchp48l640_of_table, !66, !"mchp48l640_of_table", i1 false, i1 false}
!66 = !{!"../drivers/mtd/devices/mchp48l640.c", i32 353, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148763467, i64 2148763472, i64 2148763485, i64 2148763529, i64 2148763563, i64 2148763584}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"auto-init"}
