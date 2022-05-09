; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/mtd_dataflash.c_pt.bc'
source_filename = "../drivers/mtd/devices/mtd_dataflash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.flash_info = type { ptr, i64, i32, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.dataflash = type { [4 x i8], [24 x i8], i16, i32, %struct.mutex, ptr, %struct.mtd_info }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.erase_info = type { i64, i64, i64 }
%struct.otp_info = type { i32, i32, i32 }

@__initcall__kmod_mtd_dataflash__252_945_dataflash_driver_init6 = internal global ptr @dataflash_driver_init, section ".initcall6.init", align 4
@dataflash_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @dataflash_dev_ids, ptr @dataflash_probe, ptr @dataflash_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dataflash_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dataflash_driver_exit = internal global ptr @dataflash_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [53 x i8] c"mtd_dataflash.file=drivers/mtd/devices/mtd_dataflash\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [26 x i8] c"mtd_dataflash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [51 x i8] c"mtd_dataflash.author=Andrew Victor, David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [47 x i8] c"mtd_dataflash.description=MTD DataFlash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [38 x i8] c"mtd_dataflash.alias=spi:mtd_dataflash\00", section ".modinfo", align 1
@dataflash_dev_ids = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"at45\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"dataflash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtd_dataflash\00", [18 x i8] zeroinitializer }, align 32
@dataflash_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at45\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,dataflash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dataflash_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dataflash_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/devices/mtd_dataflash.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"status error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB011B\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB021B\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB041x\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB081B\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB161x\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB321x\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB642x\00", [21 x i8] zeroinitializer }, align 32
@dataflash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 909, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported device (%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dataflash_probe._entry_ptr = internal global ptr @dataflash_probe._entry, section ".printk_index", align 4
@dataflash_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add_dataflash --> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@jedec_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error %d reading JEDEC ID\0A\00", [37 x i8] zeroinitializer }, align 32
@jedec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 829, ptr @.str.18, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"JEDEC id %016llx not handled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jedec_probe._entry_ptr = internal global ptr @jedec_probe._entry, section ".printk_index", align 4
@dataflash_data = internal global { [17 x %struct.flash_info], [128 x i8] } { [17 x %struct.flash_info] [%struct.flash_info { ptr @.str.4, i64 2040320, i32 512, i16 264, i16 9, i16 2 }, %struct.flash_info { ptr @.str.23, i64 2040320, i32 512, i16 256, i16 8, i16 3 }, %struct.flash_info { ptr @.str.5, i64 2040576, i32 1024, i16 264, i16 9, i16 2 }, %struct.flash_info { ptr @.str.24, i64 2040576, i32 1024, i16 256, i16 8, i16 3 }, %struct.flash_info { ptr @.str.6, i64 2040832, i32 2048, i16 264, i16 9, i16 2 }, %struct.flash_info { ptr @.str.25, i64 2040832, i32 2048, i16 256, i16 8, i16 3 }, %struct.flash_info { ptr @.str.7, i64 2041088, i32 4096, i16 264, i16 9, i16 2 }, %struct.flash_info { ptr @.str.26, i64 2041088, i32 4096, i16 256, i16 8, i16 3 }, %struct.flash_info { ptr @.str.8, i64 2041344, i32 4096, i16 528, i16 10, i16 2 }, %struct.flash_info { ptr @.str.27, i64 2041344, i32 4096, i16 512, i16 9, i16 3 }, %struct.flash_info { ptr @.str.9, i64 2041600, i32 8192, i16 528, i16 10, i16 0 }, %struct.flash_info { ptr @.str.9, i64 2041601, i32 8192, i16 528, i16 10, i16 2 }, %struct.flash_info { ptr @.str.28, i64 2041601, i32 8192, i16 512, i16 9, i16 3 }, %struct.flash_info { ptr @.str.10, i64 2041856, i32 8192, i16 1056, i16 11, i16 2 }, %struct.flash_info { ptr @.str.29, i64 2041856, i32 8192, i16 1024, i16 10, i16 3 }, %struct.flash_info { ptr @.str.30, i64 133815075072, i32 32768, i16 264, i16 9, i16 6 }, %struct.flash_info { ptr @.str.31, i64 133815075072, i32 32768, i16 256, i16 8, i16 7 }], [128 x i8] zeroinitializer }, align 32
@jedec_lookup.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jedec_lookup\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OTP, sector protect%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c", binary pagesize\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@jedec_lookup.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.3, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db011d\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db021d\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db041d\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db081d\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db161d\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db321d\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db642d\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AT45DB641E\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at45db641e\00", [21 x i8] zeroinitializer }, align 32
@add_dataflash_otp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi%d.%d-%s\00", [20 x i8] zeroinitializer }, align 32
@add_dataflash_otp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 665, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s (%lld KBytes) pagesize %d bytes%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"add_dataflash_otp\00", [46 x i8] zeroinitializer }, align 32
@add_dataflash_otp._entry_ptr = internal global ptr @add_dataflash_otp._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dataflash_erase.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dataflash_erase\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"erase addr=0x%llx len 0x%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@dataflash_erase.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERASE %s: (%x) %x %x %x [%i]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@dataflash_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 209, ptr @.str.42, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"erase %x, err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dataflash_erase._entry_ptr = internal global ptr @dataflash_erase._entry, section ".printk_index", align 4
@dataflash_waitready.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dataflash_waitready\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"status %d?\0A\00", [20 x i8] zeroinitializer }, align 32
@dataflash_read.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dataflash_read\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read 0x%x..0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@dataflash_read.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"READ: (%x) %x %x %x\0A\00", [43 x i8] zeroinitializer }, align 32
@dataflash_read.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read %x..%x --> %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dataflash_write\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write 0x%x..0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write @ %i:%i len=%i\0A\00", [42 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.52, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TRANSFER: (%x) %x %x %x\0A\00", [39 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.53, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfer %u -> %d\0A\00", [17 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.54, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PROGRAM: (%x) %x %x %x\0A\00", [40 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.55, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pgm %u/%u -> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.56, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COMPARE: (%x) %x %x %x\0A\00", [40 x i8] zeroinitializer }, align 32
@dataflash_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.57, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"compare %u -> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dataflash_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.2, i32 414, ptr @.str.42, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"compare page %u, err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dataflash_write._entry_ptr = internal global ptr @dataflash_write._entry, section ".printk_index", align 4
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", OTP\00", [26 x i8] zeroinitializer }, align 32
@dataflash_remove.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dataflash_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.64 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 11, i64 12]
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"dataflash_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 932, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"dataflash_dev_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 99, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 934, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"dataflash_dt_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 107, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 873, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 885, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 888, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 891, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 894, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 897, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 900, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 904, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 908, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 914, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 801, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 829, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"dataflash_data\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 705, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 756, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 717, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 720, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 723, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 726, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 729, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 734, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 737, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 739, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 740, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 635, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 641, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 663, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 165, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 199, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 208, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 246, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 255, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 287, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 313, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 331, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 359, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 364, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 377, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 386, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 401, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 406, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 413, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 464, i32 31 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 605, i32 9 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [39 x i8] c"../drivers/mtd/devices/mtd_dataflash.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 923, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_dataflash_driver_exit, ptr @__initcall__kmod_mtd_dataflash__252_945_dataflash_driver_init6, ptr @add_dataflash_otp._entry, ptr @add_dataflash_otp._entry_ptr, ptr @dataflash_driver_exit, ptr @dataflash_erase._entry, ptr @dataflash_erase._entry_ptr, ptr @dataflash_probe._entry, ptr @dataflash_probe._entry_ptr, ptr @dataflash_write._entry, ptr @dataflash_write._entry_ptr, ptr @jedec_probe._entry, ptr @jedec_probe._entry_ptr, ptr @dataflash_driver, ptr @dataflash_dev_ids, ptr @.str, ptr @dataflash_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dataflash_data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @add_dataflash_otp.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_dev_ids to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_data to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_dataflash_otp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_dataflash_otp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataflash_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @dataflash_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dataflash_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @dataflash_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @jedec_probe(ptr noundef %spi)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 8
  %nr_pages = getelementptr inbounds %struct.flash_info, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_pages, align 8
  %pagesize = getelementptr inbounds %struct.flash_info, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %pagesize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pagesize, align 4
  %conv = zext i16 %6 to i32
  %pageoffset = getelementptr inbounds %struct.flash_info, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %pageoffset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pageoffset, align 2
  %conv4 = zext i16 %8 to i32
  %flags = getelementptr inbounds %struct.flash_info, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 8
  %11 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  %conv6 = select i1 %tobool.not, i8 99, i8 100
  %call7 = tail call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef %2, i32 noundef %4, i32 noundef %conv, i32 noundef %conv4, i8 noundef zeroext %conv6)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  %12 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -41, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #10
  %13 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %result.i.i, align 1, !annotation !169
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dataflash_status.exit.thread, label %dataflash_status.exit

dataflash_status.exit.thread:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  br label %do.body

dataflash_status.exit:                            ; preds = %if.end8
  %14 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end28 [
    i8 -1, label %dataflash_status.exit.do.body_crit_edge
    i8 0, label %dataflash_status.exit.do.body_crit_edge118
  ]

dataflash_status.exit.do.body_crit_edge118:       ; preds = %dataflash_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

dataflash_status.exit.do.body_crit_edge:          ; preds = %dataflash_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %dataflash_status.exit.do.body_crit_edge, %dataflash_status.exit.do.body_crit_edge118, %dataflash_status.exit.thread
  %cond.i.i112 = phi i32 [ %call.i.i, %dataflash_status.exit.thread ], [ %conv.i.i, %dataflash_status.exit.do.body_crit_edge ], [ %conv.i.i, %dataflash_status.exit.do.body_crit_edge118 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_probe, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !170

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_probe.__UNIQUE_ID_ddebug249, ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef %cond.i.i112) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %17 = zext i32 %cond.i.i112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %cond.i.i112, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.if.then26_crit_edge
    i32 255, label %do.end.if.then26_crit_edge119
  ]

do.end.if.then26_crit_edge119:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

do.end.if.then26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %do.end.if.then26_crit_edge, %do.end.if.then26_crit_edge119
  br label %cleanup

if.end28:                                         ; preds = %dataflash_status.exit
  %and29 = and i32 %conv.i.i, 60
  %18 = add nsw i32 %and29, -12
  %19 = lshr exact i32 %18, 2
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %19, label %sw.epilog.thread [
    i32 0, label %sw.bb
    i32 2, label %sw.bb31
    i32 4, label %sw.bb33
    i32 6, label %sw.bb35
    i32 8, label %sw.bb37
    i32 10, label %sw.bb39
    i32 11, label %if.end28.sw.bb41_crit_edge
    i32 12, label %if.end28.sw.bb41_crit_edge120
  ]

if.end28.sw.bb41_crit_edge120:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41

if.end28.sw.bb41_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 512, i32 noundef 264, i32 noundef 9, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i102 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef 1024, i32 noundef 264, i32 noundef 9, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i103 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef 2048, i32 noundef 264, i32 noundef 9, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i104 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 4096, i32 noundef 264, i32 noundef 9, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i105 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef 4096, i32 noundef 528, i32 noundef 10, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i106 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef 8192, i32 noundef 528, i32 noundef 10, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end28.sw.bb41_crit_edge, %if.end28.sw.bb41_crit_edge120
  %call.i107 = call fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef 8192, i32 noundef 1056, i32 noundef 11, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %and29) #13
  br label %do.body51

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb
  %status.1 = phi i32 [ %call.i107, %sw.bb41 ], [ %call.i106, %sw.bb39 ], [ %call.i105, %sw.bb37 ], [ %call.i104, %sw.bb35 ], [ %call.i103, %sw.bb33 ], [ %call.i102, %sw.bb31 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp48 = icmp slt i32 %status.1, 0
  br i1 %cmp48, label %sw.epilog.do.body51_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.do.body51_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.body51:                                        ; preds = %sw.epilog.do.body51_crit_edge, %sw.epilog.thread
  %status.1116 = phi i32 [ -19, %sw.epilog.thread ], [ %status.1, %sw.epilog.do.body51_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_probe, %if.then63)) #10
          to label %cleanup [label %if.then63], !srcloc !170

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_probe.__UNIQUE_ID_ddebug250, ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %status.1116) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %sw.epilog.cleanup_crit_edge, %if.then26, %do.end.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call7, %if.then3 ], [ -19, %if.then26 ], [ %cond.i.i112, %do.end.cleanup_crit_edge ], [ %status.1116, %if.then63 ], [ %status.1, %sw.epilog.cleanup_crit_edge ], [ %status.1116, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_remove.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_remove.__UNIQUE_ID_ddebug251, ptr noundef %spi, ptr noundef nonnull @.str.62) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mtd = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end27_crit_edge, label %do.end21, !prof !171

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 925, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %do.end.if.end27_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @jedec_probe(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %code = alloca i8, align 1
  %id = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %code) #10
  %0 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -97, ptr %code, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id) #10
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %id, align 8
  %call = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %code, i32 noundef 1, ptr noundef nonnull %id, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_probe, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !170

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jedec_probe.__UNIQUE_ID_ddebug248, ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %call) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end6:                                          ; preds = %entry
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %4)
  %cmp7.not = icmp eq i8 %4, 31
  br i1 %cmp7.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %id, align 8
  %shr = lshr i64 %6, 24
  %call13 = call fastcc ptr @jedec_lookup(ptr noundef %spi, i64 noundef %shr, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %shr17 = lshr i64 %6, 40
  %call18 = call fastcc ptr @jedec_lookup(ptr noundef %spi, i64 noundef %shr17, i1 noundef zeroext false)
  %cmp.i43 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %do.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.17, i64 noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %2, %do.end ], [ inttoptr (i32 -19 to ptr), %do.end24 ], [ null, %if.end6.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %code) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_dataflash_otp(ptr noundef %spi, ptr noundef %name, i32 noundef %nr_pages, i32 noundef %pagesize, i32 noundef %pageoffset, i8 noundef zeroext %revision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1544) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @add_dataflash_otp.__key) #10
  %spi2 = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %spi2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi2, align 8
  %page_size = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pagesize, ptr %page_size, align 8
  %conv = trunc i32 %pageoffset to i16
  %page_offset = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %page_offset to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %page_offset, align 4
  %name3 = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 1
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bus_num, align 8
  %conv4 = sext i16 %9 to i32
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %conv5 = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name3, ptr noundef nonnull @.str.33, i32 noundef %conv4, i32 noundef %conv5, ptr noundef %name)
  %mtd = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.body.cond.false_crit_edge, label %land.lhs.true

do.body.cond.false_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %do.body
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %do.body.cond.false_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi ptr [ %name3, %cond.false ], [ %13, %land.lhs.true.cond.end_crit_edge ]
  %name13 = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 13
  %14 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond, ptr %name13, align 8
  %mul = mul i32 %pagesize, %nr_pages
  %conv14 = sext i32 %mul to i64
  %size = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv14, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %pagesize, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pagesize, ptr %writesize, align 4
  %18 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %flags, align 4
  %_erase = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 21
  %20 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dataflash_erase, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 24
  %21 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dataflash_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 25
  %22 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dataflash_write, ptr %_write, align 8
  %priv15 = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 54
  %23 = ptrtoint ptr %priv15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %priv15, align 8
  %parent = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 56, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spi, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %of_node.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 56, i32 27
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %cond, null
  br i1 %tobool.not.i, label %if.then.i, label %cond.end.mtd_set_of_node.exit_crit_edge

cond.end.mtd_set_of_node.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @of_property_read_string(ptr noundef %26, ptr noundef nonnull @.str.59, ptr noundef %name13) #10
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %cond.end.mtd_set_of_node.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %revision)
  %cmp = icmp ugt i8 %revision, 98
  br i1 %cmp, label %if.then21, label %mtd_set_of_node.exit.do.end26_crit_edge

mtd_set_of_node.exit.do.end26_crit_edge:          ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.then21:                                        ; preds = %mtd_set_of_node.exit
  %_get_fact_prot_info.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 29
  %28 = ptrtoint ptr %_get_fact_prot_info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dataflash_get_otp_info, ptr %_get_fact_prot_info.i, align 8
  %_read_fact_prot_reg.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 30
  %29 = ptrtoint ptr %_read_fact_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dataflash_read_fact_otp, ptr %_read_fact_prot_reg.i, align 4
  %_get_user_prot_info.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 31
  %30 = ptrtoint ptr %_get_user_prot_info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dataflash_get_otp_info, ptr %_get_user_prot_info.i, align 8
  %_read_user_prot_reg.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 32
  %31 = ptrtoint ptr %_read_user_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dataflash_read_user_otp, ptr %_read_user_prot_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %revision)
  %cmp.i.not = icmp eq i8 %revision, 99
  br i1 %cmp.i.not, label %if.then21.do.end26_crit_edge, label %if.then.i91

if.then21.do.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.then.i91:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %_write_user_prot_reg.i = getelementptr inbounds %struct.dataflash, ptr %call7.i.i, i32 0, i32 6, i32 33
  %32 = ptrtoint ptr %_write_user_prot_reg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dataflash_write_user_otp, ptr %_write_user_prot_reg.i, align 8
  br label %do.end26

do.end26:                                         ; preds = %if.then.i91, %if.then21.do.end26_crit_edge, %mtd_set_of_node.exit.do.end26_crit_edge
  %otp_tag.0 = phi ptr [ @.str.22, %mtd_set_of_node.exit.do.end26_crit_edge ], [ @.str.60, %if.then21.do.end26_crit_edge ], [ @.str.60, %if.then.i91 ]
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size, align 8
  %add = add i64 %34, 1023
  %shr = lshr i64 %add, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.34, ptr noundef %name, i64 noundef %shr, i32 noundef %pagesize, ptr noundef nonnull %otp_tag.0) #13
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br i1 %tobool7.not, label %do.end26.cond.end37_crit_edge, label %cond.true35

do.end26.cond.end37_crit_edge:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.true35:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %parts = getelementptr inbounds %struct.flash_platform_data, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.flash_platform_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_parts, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true35, %do.end26.cond.end37_crit_edge
  %cond3393 = phi ptr [ %37, %cond.true35 ], [ null, %do.end26.cond.end37_crit_edge ]
  %cond38 = phi i32 [ %39, %cond.true35 ], [ 0, %do.end26.cond.end37_crit_edge ]
  %call39 = tail call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef %cond3393, i32 noundef %cond38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cond.end37.cleanup_crit_edge, label %if.end42

cond.end37.cleanup_crit_edge:                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %cond.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %cond.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @jedec_lookup(ptr noundef %spi, i64 noundef %jedec, i1 noundef zeroext %use_extid) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %info.088 = phi ptr [ @dataflash_data, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  br i1 %use_extid, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.flash_info, ptr %info.088, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %jedec_id = getelementptr inbounds %struct.flash_info, ptr %info.088, i32 0, i32 1
  %3 = ptrtoint ptr %jedec_id to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %jedec_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %jedec)
  %cmp2 = icmp eq i64 %4, %jedec
  br i1 %cmp2, label %do.body, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_lookup.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_lookup, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !170

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %flags10 = getelementptr inbounds %struct.flash_info, ptr %info.088, i32 0, i32 5
  %5 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags10, align 8
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not = icmp eq i16 %7, 0
  %cond = select i1 %tobool13.not, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jedec_lookup.__UNIQUE_ID_ddebug246, ptr noundef %spi, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %flags15 = getelementptr inbounds %struct.flash_info, ptr %info.088, i32 0, i32 5
  %8 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags15, align 8
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool18.not = icmp eq i16 %10, 0
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %if.then19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  %11 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -41, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #10
  %12 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %result.i.i, align 1, !annotation !169
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dataflash_status.exit.thread, label %dataflash_status.exit

dataflash_status.exit.thread:                     ; preds = %if.then19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_lookup.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_lookup, %if.then36)) #10
          to label %do.end40 [label %if.then36], !srcloc !170

dataflash_status.exit:                            ; preds = %if.then19
  %13 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #10
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool44.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags15, align 8
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool55.not = icmp eq i16 %18, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then36:                                        ; preds = %dataflash_status.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jedec_lookup.__UNIQUE_ID_ddebug247, ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef %call.i.i) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %dataflash_status.exit.thread
  %19 = inttoptr i32 %call.i.i to ptr
  br label %cleanup

if.then45:                                        ; preds = %dataflash_status.exit
  br i1 %tobool55.not, label %if.then45.for.inc_crit_edge, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45.for.inc_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %dataflash_status.exit
  br i1 %tobool55.not, label %if.else.cleanup_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then45.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.flash_info, ptr %info.088, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([17 x %struct.flash_info], ptr @dataflash_data, i32 1, i32 0)
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %do.end40, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %do.end40 ], [ inttoptr (i32 -19 to ptr), %for.inc.cleanup_crit_edge ], [ %info.088, %do.end.cleanup_crit_edge ], [ %info.088, %if.else.cleanup_crit_edge ], [ %info.088, %if.then45.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef %instr) #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %x = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %spi2 = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi2, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %x) #10
  %4 = getelementptr inbounds i8, ptr %x, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  %page_size = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size, align 8
  %shl = shl i32 %7, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_erase.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_erase, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %instr, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_erase.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.37, i64 noundef %9, i64 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len5 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len5, align 8
  %14 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp164.i = icmp ult i64 %13, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !171

if.then168.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %13 to i32
  %rem170.i = urem i32 %conv169.i, %15
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %13) #15, !srcloc !172
  %asmresult.i261.i = extractvalue { i64, i64 } %16, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool8.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %div_u64_rem.exit.cleanup94_crit_edge

div_u64_rem.exit.cleanup94_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end10:                                         ; preds = %div_u64_rem.exit
  %17 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %instr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %18)
  %cmp164.i258 = icmp ult i64 %18, 4294967296
  br i1 %cmp164.i258, label %if.then168.i264, label %if.else174.i269, !prof !171

if.then168.i264:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i260 = trunc i64 %18 to i32
  %rem170.i261 = urem i32 %conv169.i260, %15
  br label %div_u64_rem.exit272

if.else174.i269:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %18) #15, !srcloc !172
  %asmresult.i261.i265 = extractvalue { i64, i64 } %19, 0
  %shr.i.i267 = lshr i64 %asmresult.i261.i265, 32
  %conv.i.i268 = trunc i64 %shr.i.i267 to i32
  br label %div_u64_rem.exit272

div_u64_rem.exit272:                              ; preds = %if.else174.i269, %if.then168.i264
  %__rem.0.i271 = phi i32 [ %rem170.i261, %if.then168.i264 ], [ %conv.i.i268, %if.else174.i269 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i271)
  %tobool14.not = icmp eq i32 %__rem.0.i271, 0
  br i1 %tobool14.not, label %if.end16, label %div_u64_rem.exit272.cleanup94_crit_edge

div_u64_rem.exit272.cleanup94_crit_edge:          ; preds = %div_u64_rem.exit272
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end16:                                         ; preds = %div_u64_rem.exit272
  %20 = getelementptr inbounds i8, ptr %msg, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %26 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %x, align 4
  %len18 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %27 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %len18, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.spi_message_add_tail.exit_crit_edge

if.end16.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end16.spi_message_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %32 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %len5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp.not287 = icmp eq i64 %33, 0
  br i1 %cmp.not287, label %spi_message_add_tail.exit.while.end_crit_edge, label %while.body.lr.ph

spi_message_add_tail.exit.while.end_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %spi_message_add_tail.exit
  %conv26 = zext i32 %shl to i64
  %conv29278.pn.in.in = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 2
  %arrayidx34 = getelementptr i8, ptr %1, i32 1
  %arrayidx37 = getelementptr i8, ptr %1, i32 2
  %arrayidx38 = getelementptr i8, ptr %1, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %34 = phi i64 [ %33, %while.body.lr.ph ], [ %69, %cleanup.while.body_crit_edge ]
  %35 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %instr, align 8
  %37 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %36)
  %cmp164.i.i = icmp ult i64 %36, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !171

if.then168.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %36 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %38
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %38, i64 %36) #15, !srcloc !172
  %asmresult1.i.i.i = extractvalue { i64, i64 } %39, 1
  %extract.t285 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t285, %if.else174.i.i ]
  %and = and i32 %dividend.addr.0.i.i.off0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp23 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv26)
  %cmp27 = icmp uge i64 %34, %conv26
  %40 = select i1 %cmp23, i1 %cmp27, i1 false
  %41 = select i1 %40, i8 80, i8 -127
  %42 = ptrtoint ptr %conv29278.pn.in.in to i32
  call void @__asan_load2_noabort(i32 %42)
  %conv29278.pn.in = load i16, ptr %conv29278.pn.in.in, align 4
  %conv29278.pn = zext i16 %conv29278.pn.in to i32
  %shl30280 = shl i32 %dividend.addr.0.i.i.off0, %conv29278.pn
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %1, align 1
  %shr = lshr i32 %shl30280, 16
  %conv33 = trunc i32 %shr to i8
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv33, ptr %arrayidx34, align 1
  %shr35 = lshr i32 %shl30280, 8
  %conv36 = trunc i32 %shr35 to i8
  %45 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv36, ptr %arrayidx37, align 1
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx38, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_erase.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_erase, %if.then51)) #10
          to label %do.end65 [label %if.then51], !srcloc !170

if.then51:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cond54 = select i1 %40, ptr @.str.39, ptr @.str.40
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %1, align 1
  %conv56 = zext i8 %48 to i32
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx34, align 1
  %conv58 = zext i8 %50 to i32
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx37, align 1
  %conv60 = zext i8 %52 to i32
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx38, align 1
  %conv62 = zext i8 %54 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_erase.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond54, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %shl30280) #10
  br label %do.end65

do.end65:                                         ; preds = %if.then51, %div_u64.exit
  %call66 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end8.i, %do.end65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  %55 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -41, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #10
  %56 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !169
  %call.i.i.i274 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i274)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i274, 0
  br i1 %cmp.i.i.i, label %dataflash_status.exit.thread.i, label %dataflash_status.exit.i

dataflash_status.exit.thread.i:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_erase, %if.end5.thread.i)) #10
          to label %if.end5.i [label %if.end5.thread.i], !srcloc !170

dataflash_status.exit.i:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %58 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  br label %if.end5.i

if.end5.thread.i:                                 ; preds = %dataflash_status.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i274) #10
  br label %if.end8.i

if.end5.i:                                        ; preds = %dataflash_status.exit.i, %dataflash_status.exit.thread.i
  %status.0.i = phi i32 [ %conv.i.i.i, %dataflash_status.exit.i ], [ 0, %dataflash_status.exit.thread.i ]
  %and.i = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %dataflash_waitready.exit

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i.if.end8.i_crit_edge, %if.end5.thread.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i

dataflash_waitready.exit:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp68 = icmp slt i32 %call66, 0
  br i1 %cmp68, label %do.end73, label %if.end75

do.end73:                                         ; preds = %dataflash_waitready.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %shl30280, i32 noundef %call66) #13
  %59 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %59)
  %.pr = load i64, ptr %len5, align 8
  br label %cleanup

if.end75:                                         ; preds = %dataflash_waitready.exit
  br i1 %40, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %instr, align 8
  %add = add i64 %61, %conv26
  store i64 %add, ptr %instr, align 8
  br label %if.end90

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %page_size, align 8
  %conv83 = zext i32 %63 to i64
  %64 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %instr, align 8
  %add85 = add i64 %65, %conv83
  store i64 %add85, ptr %instr, align 8
  %66 = load i32, ptr %page_size, align 8
  %conv87 = zext i32 %66 to i64
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then77
  %conv87.sink = phi i64 [ %conv87, %if.else ], [ %conv26, %if.then77 ]
  %67 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %len5, align 8
  %sub89 = sub i64 %68, %conv87.sink
  store i64 %sub89, ptr %len5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end73
  %69 = phi i64 [ %sub89, %if.end90 ], [ %.pr, %do.end73 ]
  %cmp.not = icmp eq i64 %69, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %spi_message_add_tail.exit.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup94

cleanup94:                                        ; preds = %while.end, %div_u64_rem.exit272.cleanup94_crit_edge, %div_u64_rem.exit.cleanup94_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %div_u64_rem.exit.cleanup94_crit_edge ], [ -22, %div_u64_rem.exit272.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %x) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  %x = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %x) #10
  %2 = getelementptr inbounds i8, ptr %x, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_read.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_read, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spi = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 8
  %conv = trunc i64 %from to i32
  %conv5 = add i32 %conv, %len
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_read.__UNIQUE_ID_ddebug235, ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv6 = trunc i64 %from to i32
  %page_size = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size, align 8
  %.frozen = freeze i32 %7
  %div = udiv i32 %conv6, %.frozen
  %page_offset = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page_offset, align 4
  %conv7 = zext i16 %9 to i32
  %shl = shl i32 %div, %conv7
  %10 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %conv6, %10
  %add10 = add i32 %shl, %rem.decomposed
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_read, %if.then24)) #10
          to label %do.end36 [label %if.then24], !srcloc !170

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %spi25 = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %spi25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi25, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv27 = zext i8 %14 to i32
  %arrayidx28 = getelementptr i8, ptr %1, i32 1
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %16 to i32
  %arrayidx30 = getelementptr i8, ptr %1, i32 2
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %18 to i32
  %arrayidx32 = getelementptr i8, ptr %1, i32 3
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_read.__UNIQUE_ID_ddebug236, ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then24, %do.end
  %21 = getelementptr inbounds i8, ptr %msg, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %27 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %x, align 4
  %len39 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %28 = ptrtoint ptr %len39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %len39, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end36.spi_message_add_tail.exit_crit_edge

do.end36.spi_message_add_tail.exit_crit_edge:     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end36.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf, ptr %rx_buf, align 4
  %len43 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %len43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %len, ptr %len43, align 4
  %transfer_list.i116 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 18
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i118 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i116, ptr noundef %36, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i118, label %if.end.i.i.i120, label %spi_message_add_tail.exit.spi_message_add_tail.exit121_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit121_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit121

if.end.i.i.i120:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i116, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i116 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg, ptr %transfer_list.i116, align 4
  %prev3.i.i.i119 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i119, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i116, ptr %36, align 4
  br label %spi_message_add_tail.exit121

spi_message_add_tail.exit121:                     ; preds = %if.end.i.i.i120, %spi_message_add_tail.exit.spi_message_add_tail.exit121_crit_edge
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -24, ptr %1, align 1
  %shr = lshr i32 %add10, 16
  %conv46 = trunc i32 %shr to i8
  %arrayidx47 = getelementptr i8, ptr %1, i32 1
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv46, ptr %arrayidx47, align 1
  %shr48 = lshr i32 %add10, 8
  %conv49 = trunc i32 %shr48 to i8
  %arrayidx50 = getelementptr i8, ptr %1, i32 2
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv49, ptr %arrayidx50, align 1
  %conv52 = trunc i32 %add10 to i8
  %arrayidx53 = getelementptr i8, ptr %1, i32 3
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv52, ptr %arrayidx53, align 1
  %spi54 = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %spi54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi54, align 8
  %call55 = call i32 @spi_sync(ptr noundef %46, ptr noundef nonnull %msg) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55)
  %cmp = icmp sgt i32 %call55, -1
  br i1 %cmp, label %if.then58, label %do.body59

if.then58:                                        ; preds = %spi_message_add_tail.exit121
  call void @__sanitizer_cov_trace_pc() #12
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %47 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_length, align 4
  %sub = add i32 %48, -8
  %49 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %retlen, align 4
  br label %if.end81

do.body59:                                        ; preds = %spi_message_add_tail.exit121
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_read.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_read, %if.then71)) #10
          to label %if.end81 [label %if.then71], !srcloc !170

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %spi54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi54, align 8
  %conv77 = add i32 %conv6, %len
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_read.__UNIQUE_ID_ddebug237, ptr noundef %51, ptr noundef nonnull @.str.48, i32 noundef %conv6, i32 noundef %conv77, i32 noundef %call55) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %do.body59, %if.then58
  %status.0 = phi i32 [ 0, %if.then58 ], [ %call55, %if.then71 ], [ %call55, %do.body59 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %x) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  %cmd.addr.i.i.i392 = alloca i8, align 1
  %result.i.i.i393 = alloca i8, align 1
  %cmd.addr.i.i.i377 = alloca i8, align 1
  %result.i.i.i378 = alloca i8, align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %x = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %spi2 = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi2, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %x) #10
  %4 = getelementptr inbounds i8, ptr %x, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 188)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %to to i32
  %conv6 = add i32 %conv, %len
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %12 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %x, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %13 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len9, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %page_size = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size, align 8
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp20.not417 = icmp eq i32 %len, 0
  br i1 %cmp20.not417, label %spi_message_add_tail.exit.while.end_crit_edge, label %do.body22.lr.ph

spi_message_add_tail.exit.while.end_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body22.lr.ph:                                  ; preds = %spi_message_add_tail.exit
  %conv11 = trunc i64 %to to i32
  %.frozen = freeze i32 %19
  %div = udiv i32 %conv11, %.frozen
  %20 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %conv11, %20
  %add14 = add i32 %rem.decomposed, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %19)
  %cmp = icmp ugt i32 %add14, %19
  %sub = sub i32 %19, %rem.decomposed
  %writelen.0 = select i1 %cmp, i32 %sub, i32 %len
  %page_offset = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 2
  %arrayidx46 = getelementptr i8, ptr %1, i32 1
  %arrayidx50 = getelementptr i8, ptr %1, i32 2
  %arrayidx51 = getelementptr i8, ptr %1, i32 3
  %arrayidx140 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1
  %len143 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 2
  %transfer_list.i366 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18
  %prev3.i.i.i369 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18, i32 1
  br label %do.body22

do.body22:                                        ; preds = %if.else240.do.body22_crit_edge, %do.body22.lr.ph
  %pageaddr.0422 = phi i32 [ %div, %do.body22.lr.ph ], [ %inc, %if.else240.do.body22_crit_edge ]
  %offset.0421 = phi i32 [ %rem.decomposed, %do.body22.lr.ph ], [ 0, %if.else240.do.body22_crit_edge ]
  %writelen.1420 = phi i32 [ %writelen.0, %do.body22.lr.ph ], [ %101, %if.else240.do.body22_crit_edge ]
  %remaining.0419 = phi i32 [ %len, %do.body22.lr.ph ], [ %sub242, %if.else240.do.body22_crit_edge ]
  %writebuf.0418 = phi ptr [ %buf, %do.body22.lr.ph ], [ %add.ptr243, %if.else240.do.body22_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then34)) #10
          to label %do.end38 [label %if.then34], !srcloc !170

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %pageaddr.0422, i32 noundef %offset.0421, i32 noundef %writelen.1420) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %21 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %page_offset, align 4
  %conv39 = zext i16 %22 to i32
  %shl = shl i32 %pageaddr.0422, %conv39
  %23 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %writelen.1420, i32 %24)
  %cmp41.not = icmp eq i32 %writelen.1420, %24
  br i1 %cmp41.not, label %do.end38.if.end101_crit_edge, label %if.then43

do.end38.if.end101_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then43:                                        ; preds = %do.end38
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 83, ptr %1, align 1
  %and = lshr i32 %shl, 16
  %conv45 = trunc i32 %and to i8
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv45, ptr %arrayidx46, align 1
  %and47 = lshr i32 %shl, 8
  %conv49 = trunc i32 %and47 to i8
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv49, ptr %arrayidx50, align 1
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx51, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then64)) #10
          to label %do.end76 [label %if.then64], !srcloc !170

if.then64:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv67 = zext i8 %30 to i32
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx46, align 1
  %conv69 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx50, align 1
  %conv71 = zext i8 %34 to i32
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx51, align 1
  %conv73 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug240, ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71, i32 noundef %conv73) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then64, %if.then43
  %call77 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.body81, label %do.end76.if.end98_crit_edge

do.end76.if.end98_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.body81:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then93)) #10
          to label %if.end98 [label %if.then93], !srcloc !170

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug241, ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %shl, i32 noundef %call77) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %do.body81, %do.end76.if.end98_crit_edge
  %37 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi2, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end8.i, %if.end98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  %39 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -41, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #10
  %40 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !169
  %call.i.i.i365 = call i32 @spi_write_then_read(ptr noundef %38, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i365)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i365, 0
  br i1 %cmp.i.i.i, label %dataflash_status.exit.thread.i, label %dataflash_status.exit.i

dataflash_status.exit.thread.i:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.end5.thread.i)) #10
          to label %if.end5.i [label %if.end5.thread.i], !srcloc !170

dataflash_status.exit.i:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %42 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  br label %if.end5.i

if.end5.thread.i:                                 ; preds = %dataflash_status.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %38, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i365) #10
  br label %if.end8.i

if.end5.i:                                        ; preds = %dataflash_status.exit.i, %dataflash_status.exit.thread.i
  %status.0.i = phi i32 [ %conv.i.i.i, %dataflash_status.exit.i ], [ 0, %dataflash_status.exit.thread.i ]
  %and.i = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.end5.i.if.end101_crit_edge

if.end5.i.if.end101_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i.if.end8.i_crit_edge, %if.end5.thread.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i

if.end101:                                        ; preds = %if.end5.i.if.end101_crit_edge, %do.end38.if.end101_crit_edge
  %add102 = add i32 %shl, %offset.0421
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -126, ptr %1, align 1
  %and104 = lshr i32 %add102, 16
  %conv106 = trunc i32 %and104 to i8
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv106, ptr %arrayidx46, align 1
  %and108 = lshr i32 %add102, 8
  %conv110 = trunc i32 %and108 to i8
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv110, ptr %arrayidx50, align 1
  %conv113 = trunc i32 %add102 to i8
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv113, ptr %arrayidx51, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then127)) #10
          to label %do.end139 [label %if.then127], !srcloc !170

if.then127:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %1, align 1
  %conv130 = zext i8 %48 to i32
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx46, align 1
  %conv132 = zext i8 %50 to i32
  %51 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx50, align 1
  %conv134 = zext i8 %52 to i32
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx51, align 1
  %conv136 = zext i8 %54 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug242, ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %conv130, i32 noundef %conv132, i32 noundef %conv134, i32 noundef %conv136) #10
  br label %do.end139

do.end139:                                        ; preds = %if.then127, %if.end101
  %55 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %writebuf.0418, ptr %arrayidx140, align 4
  %56 = ptrtoint ptr %len143 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %writelen.1420, ptr %len143, align 4
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i368 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i366, ptr noundef %58, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i368, label %if.end.i.i.i370, label %do.end139.spi_message_add_tail.exit371_crit_edge

do.end139.spi_message_add_tail.exit371_crit_edge: ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit371

if.end.i.i.i370:                                  ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i366, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i366 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg, ptr %transfer_list.i366, align 4
  %61 = ptrtoint ptr %prev3.i.i.i369 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i369, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i366, ptr %58, align 4
  br label %spi_message_add_tail.exit371

spi_message_add_tail.exit371:                     ; preds = %if.end.i.i.i370, %do.end139.spi_message_add_tail.exit371_crit_edge
  %call145 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg) #10
  %call.i.i.i373 = call zeroext i1 @__list_del_entry_valid(ptr noundef %transfer_list.i366) #10
  br i1 %call.i.i.i373, label %if.end.i.i.i375, label %spi_message_add_tail.exit371.spi_transfer_del.exit_crit_edge

spi_message_add_tail.exit371.spi_transfer_del.exit_crit_edge: ; preds = %spi_message_add_tail.exit371
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_transfer_del.exit

if.end.i.i.i375:                                  ; preds = %spi_message_add_tail.exit371
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %prev3.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev3.i.i.i369, align 4
  %65 = ptrtoint ptr %transfer_list.i366 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %transfer_list.i366, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %spi_transfer_del.exit

spi_transfer_del.exit:                            ; preds = %if.end.i.i.i375, %spi_message_add_tail.exit371.spi_transfer_del.exit_crit_edge
  %69 = ptrtoint ptr %transfer_list.i366 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %transfer_list.i366, align 4
  %70 = ptrtoint ptr %prev3.i.i.i369 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev3.i.i.i369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp148 = icmp slt i32 %call145, 0
  br i1 %cmp148, label %do.body151, label %spi_transfer_del.exit.if.end168_crit_edge

spi_transfer_del.exit.if.end168_crit_edge:        ; preds = %spi_transfer_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

do.body151:                                       ; preds = %spi_transfer_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then163)) #10
          to label %if.end168 [label %if.then163], !srcloc !170

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %add102, i32 noundef %writelen.1420, i32 noundef %call145) #10
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %do.body151, %spi_transfer_del.exit.if.end168_crit_edge
  %71 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi2, align 8
  br label %for.cond.i381

for.cond.i381:                                    ; preds = %if.end8.i390, %if.end168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i377) #10
  %73 = ptrtoint ptr %cmd.addr.i.i.i377 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -41, ptr %cmd.addr.i.i.i377, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i378) #10
  %74 = ptrtoint ptr %result.i.i.i378 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %result.i.i.i378, align 1, !annotation !169
  %call.i.i.i379 = call i32 @spi_write_then_read(ptr noundef %72, ptr noundef nonnull %cmd.addr.i.i.i377, i32 noundef 1, ptr noundef nonnull %result.i.i.i378, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i379)
  %cmp.i.i.i380 = icmp slt i32 %call.i.i.i379, 0
  br i1 %cmp.i.i.i380, label %dataflash_status.exit.thread.i382, label %dataflash_status.exit.i384

dataflash_status.exit.thread.i382:                ; preds = %for.cond.i381
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i378) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i377) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.end5.thread.i385)) #10
          to label %if.end5.i389 [label %if.end5.thread.i385], !srcloc !170

dataflash_status.exit.i384:                       ; preds = %for.cond.i381
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %result.i.i.i378 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %result.i.i.i378, align 1
  %conv.i.i.i383 = zext i8 %76 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i378) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i377) #10
  br label %if.end5.i389

if.end5.thread.i385:                              ; preds = %dataflash_status.exit.thread.i382
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %72, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i379) #10
  br label %if.end8.i390

if.end5.i389:                                     ; preds = %dataflash_status.exit.i384, %dataflash_status.exit.thread.i382
  %status.0.i386 = phi i32 [ %conv.i.i.i383, %dataflash_status.exit.i384 ], [ 0, %dataflash_status.exit.thread.i382 ]
  %and.i387 = and i32 %status.0.i386, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i387)
  %tobool6.not.i388 = icmp eq i32 %and.i387, 0
  br i1 %tobool6.not.i388, label %if.end5.i389.if.end8.i390_crit_edge, label %dataflash_waitready.exit391

if.end5.i389.if.end8.i390_crit_edge:              ; preds = %if.end5.i389
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i390

if.end8.i390:                                     ; preds = %if.end5.i389.if.end8.i390_crit_edge, %if.end5.thread.i385
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i381

dataflash_waitready.exit391:                      ; preds = %if.end5.i389
  %77 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %page_offset, align 4
  %conv172 = zext i16 %78 to i32
  %shl173 = shl i32 %pageaddr.0422, %conv172
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 96, ptr %1, align 1
  %and175 = lshr i32 %shl173, 16
  %conv177 = trunc i32 %and175 to i8
  %80 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv177, ptr %arrayidx46, align 1
  %and179 = lshr i32 %shl173, 8
  %conv181 = trunc i32 %and179 to i8
  %81 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv181, ptr %arrayidx50, align 1
  %82 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx51, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then196)) #10
          to label %do.end208 [label %if.then196], !srcloc !170

if.then196:                                       ; preds = %dataflash_waitready.exit391
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %1, align 1
  %conv199 = zext i8 %84 to i32
  %85 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx46, align 1
  %conv201 = zext i8 %86 to i32
  %87 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx50, align 1
  %conv203 = zext i8 %88 to i32
  %89 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx51, align 1
  %conv205 = zext i8 %90 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug244, ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %conv199, i32 noundef %conv201, i32 noundef %conv203, i32 noundef %conv205) #10
  br label %do.end208

do.end208:                                        ; preds = %if.then196, %dataflash_waitready.exit391
  %call209 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %do.body213, label %do.end208.if.end230_crit_edge

do.end208.if.end230_crit_edge:                    ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

do.body213:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.then225)) #10
          to label %if.end230 [label %if.then225], !srcloc !170

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_write.__UNIQUE_ID_ddebug245, ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %shl173, i32 noundef %call209) #10
  br label %if.end230

if.end230:                                        ; preds = %if.then225, %do.body213, %do.end208.if.end230_crit_edge
  %91 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spi2, align 8
  br label %for.cond.i396

for.cond.i396:                                    ; preds = %if.end8.i405, %if.end230
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i392) #10
  %93 = ptrtoint ptr %cmd.addr.i.i.i392 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -41, ptr %cmd.addr.i.i.i392, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i393) #10
  %94 = ptrtoint ptr %result.i.i.i393 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %result.i.i.i393, align 1, !annotation !169
  %call.i.i.i394 = call i32 @spi_write_then_read(ptr noundef %92, ptr noundef nonnull %cmd.addr.i.i.i392, i32 noundef 1, ptr noundef nonnull %result.i.i.i393, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i394)
  %cmp.i.i.i395 = icmp slt i32 %call.i.i.i394, 0
  br i1 %cmp.i.i.i395, label %dataflash_status.exit.thread.i397, label %dataflash_status.exit.i399

dataflash_status.exit.thread.i397:                ; preds = %for.cond.i396
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i393) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i392) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write, %if.end5.thread.i400)) #10
          to label %if.end5.i404 [label %if.end5.thread.i400], !srcloc !170

dataflash_status.exit.i399:                       ; preds = %for.cond.i396
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %result.i.i.i393 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %result.i.i.i393, align 1
  %conv.i.i.i398 = zext i8 %96 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i393) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i392) #10
  br label %if.end5.i404

if.end5.thread.i400:                              ; preds = %dataflash_status.exit.thread.i397
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %92, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i394) #10
  br label %if.end8.i405

if.end5.i404:                                     ; preds = %dataflash_status.exit.i399, %dataflash_status.exit.thread.i397
  %status.0.i401 = phi i32 [ %conv.i.i.i398, %dataflash_status.exit.i399 ], [ 0, %dataflash_status.exit.thread.i397 ]
  %and.i402 = and i32 %status.0.i401, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i402)
  %tobool6.not.i403 = icmp eq i32 %and.i402, 0
  br i1 %tobool6.not.i403, label %if.end5.i404.if.end8.i405_crit_edge, label %dataflash_waitready.exit406

if.end5.i404.if.end8.i405_crit_edge:              ; preds = %if.end5.i404
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i405

if.end8.i405:                                     ; preds = %if.end5.i404.if.end8.i405_crit_edge, %if.end5.thread.i400
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i396

dataflash_waitready.exit406:                      ; preds = %if.end5.i404
  %and233 = and i32 %status.0.i401, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.else240, label %do.end238

do.end238:                                        ; preds = %dataflash_waitready.exit406
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %pageaddr.0422, i32 noundef %status.0.i401) #13
  br label %while.end

if.else240:                                       ; preds = %dataflash_waitready.exit406
  %sub242 = sub i32 %remaining.0419, %writelen.1420
  %inc = add i32 %pageaddr.0422, 1
  %add.ptr243 = getelementptr i8, ptr %writebuf.0418, i32 %writelen.1420
  %97 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %retlen, align 4
  %add244 = add i32 %98, %writelen.1420
  store i32 %add244, ptr %retlen, align 4
  %99 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %page_size, align 8
  %101 = call i32 @llvm.umin.i32(i32 %sub242, i32 %100)
  %cmp20.not = icmp eq i32 %sub242, 0
  br i1 %cmp20.not, label %if.else240.while.end_crit_edge, label %if.else240.do.body22_crit_edge

if.else240.do.body22_crit_edge:                   ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.else240.while.end_crit_edge:                   ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.else240.while.end_crit_edge, %do.end238, %spi_message_add_tail.exit.while.end_crit_edge
  %status.1 = phi i32 [ -5, %do.end238 ], [ -22, %spi_message_add_tail.exit.while.end_crit_edge ], [ 0, %if.else240.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %x) #10
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dataflash_get_otp_info(ptr nocapture noundef readnone %mtd, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %info, align 4
  %length = getelementptr inbounds %struct.otp_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %length, align 4
  %locked = getelementptr inbounds %struct.otp_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %locked, align 4
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_read_fact_otp(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %spi = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 8
  %call = tail call fastcc i32 @otp_read(ptr noundef %3, i32 noundef 64, ptr noundef %buf, i64 noundef %from, i32 noundef %len)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_read_user_otp(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %spi = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 8
  %call = tail call fastcc i32 @otp_read(ptr noundef %3, i32 noundef 0, ptr noundef %buf, i64 noundef %from, i32 noundef %len)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dataflash_write_user_otp(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #10
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %from)
  %cmp = icmp sgt i64 %from, 63
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add nsw i64 %conv, %from
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %add)
  %cmp2 = icmp sgt i64 %add, 64
  %2 = trunc i64 %from to i32
  %conv5 = sub i32 64, %2
  %len.addr.0 = select i1 %cmp2, i32 %conv5, i32 %len
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 68) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -101, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 4
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %2
  %5 = call ptr @memcpy(ptr %add.ptr9, ptr %buf, i32 %len.addr.0)
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %12 = getelementptr inbounds i8, ptr %t, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %t, align 4
  %len10 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %15 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 68, ptr %len10, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.spi_message_add_tail.exit_crit_edge

if.end8.spi_message_add_tail.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end8.spi_message_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %spi = getelementptr inbounds %struct.dataflash, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end8.i, %spi_message_add_tail.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  %22 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -41, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #10
  %23 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !169
  %call.i.i.i38 = call i32 @spi_write_then_read(ptr noundef %21, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i38)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i38, 0
  br i1 %cmp.i.i.i, label %dataflash_status.exit.thread.i, label %dataflash_status.exit.i

dataflash_status.exit.thread.i:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dataflash_write_user_otp, %if.end5.thread.i)) #10
          to label %if.end5.i [label %if.end5.thread.i], !srcloc !170

dataflash_status.exit.i:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  br label %if.end5.i

if.end5.thread.i:                                 ; preds = %dataflash_status.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %21, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i38) #10
  br label %if.end8.i

if.end5.i:                                        ; preds = %dataflash_status.exit.i, %dataflash_status.exit.thread.i
  %status.0.i = phi i32 [ %conv.i.i.i, %dataflash_status.exit.i ], [ 0, %dataflash_status.exit.thread.i ]
  %and.i = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %dataflash_waitready.exit

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i.if.end8.i_crit_edge, %if.end5.thread.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i

dataflash_waitready.exit:                         ; preds = %if.end5.i
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 8
  %call13 = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp15 = icmp sgt i32 %call13, -1
  br i1 %cmp15, label %dataflash_waitready.exit.cleanup.sink.split_crit_edge, label %dataflash_waitready.exit.cleanup_crit_edge

dataflash_waitready.exit.cleanup_crit_edge:       ; preds = %dataflash_waitready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dataflash_waitready.exit.cleanup.sink.split_crit_edge: ; preds = %dataflash_waitready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %dataflash_waitready.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %len.addr.0.sink = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ %len.addr.0, %dataflash_waitready.exit.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len.addr.0.sink, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dataflash_waitready.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call13, %dataflash_waitready.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @otp_read(ptr noundef %spi, i32 noundef %base, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %off)
  %cmp = icmp sgt i64 %off, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %add)
  %cmp1 = icmp sgt i64 %add, 64
  %0 = trunc i64 %off to i32
  %conv4 = sub i32 64, %0
  %len.addr.0 = select i1 %cmp1, i32 %conv4, i32 %len
  %1 = getelementptr inbounds i8, ptr %m, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %add6 = add i32 %base, 4
  %7 = add i32 %add6, %0
  %conv11 = add i32 %7, %len.addr.0
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv11, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 119, ptr %call9.i.i, align 128
  %9 = getelementptr inbounds i8, ptr %t, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 84)
  %11 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %t, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %rx_buf, align 4
  %len14 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %13 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11, ptr %len14, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %15, ptr noundef nonnull %m) #10
  br i1 %call.i.i.i, label %if.end.i.i.i43, label %if.end13.for.cond.i.preheader_crit_edge

if.end13.for.cond.i.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

if.end.i.i.i43:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %15, align 4
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.end.i.i.i43, %if.end13.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end8.i, %for.cond.i.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  %20 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -41, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #10
  %21 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !169
  %call.i.i.i44 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i44)
  %cmp.i.i.i45 = icmp slt i32 %call.i.i.i44, 0
  br i1 %cmp.i.i.i45, label %dataflash_status.exit.thread.i, label %dataflash_status.exit.i

dataflash_status.exit.thread.i:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@otp_read, %if.end5.thread.i)) #10
          to label %if.end5.i [label %if.end5.thread.i], !srcloc !170

dataflash_status.exit.i:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #10
  br label %if.end5.i

if.end5.thread.i:                                 ; preds = %dataflash_status.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dataflash_waitready.__UNIQUE_ID_ddebug232, ptr noundef %spi, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i44) #10
  br label %if.end8.i

if.end5.i:                                        ; preds = %dataflash_status.exit.i, %dataflash_status.exit.thread.i
  %status.0.i = phi i32 [ %conv.i.i.i, %dataflash_status.exit.i ], [ 0, %dataflash_status.exit.thread.i ]
  %and.i = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %dataflash_waitready.exit

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i.if.end8.i_crit_edge, %if.end5.thread.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %for.cond.i

dataflash_waitready.exit:                         ; preds = %if.end5.i
  %call16 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %if.then19, label %dataflash_waitready.exit.if.end22_crit_edge

dataflash_waitready.exit.if.end22_crit_edge:      ; preds = %dataflash_waitready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %dataflash_waitready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 4
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 %base
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 %0
  %24 = call ptr @memcpy(ptr %buf, ptr %add.ptr21, i32 %len.addr.0)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %dataflash_waitready.exit.if.end22_crit_edge
  %status.0 = phi i32 [ %len.addr.0, %if.then19 ], [ %call16, %dataflash_waitready.exit.if.end22_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !154, !156, !157, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_mtd_dataflash__252_945_dataflash_driver_init6, !1, !"__initcall__kmod_mtd_dataflash__252_945_dataflash_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 945, i32 1}
!2 = !{ptr @__exitcall_dataflash_driver_exit, !1, !"__exitcall_dataflash_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file253, !4, !"__UNIQUE_ID_file253", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 947, i32 1}
!5 = !{ptr @__UNIQUE_ID_license254, !4, !"__UNIQUE_ID_license254", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author255, !7, !"__UNIQUE_ID_author255", i1 false, i1 false}
!7 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 948, i32 1}
!8 = !{ptr @__UNIQUE_ID_description256, !9, !"__UNIQUE_ID_description256", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 949, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias257, !11, !"__UNIQUE_ID_alias257", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 950, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 934, i32 12}
!14 = !{ptr @dataflash_driver, !15, !"dataflash_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 932, i32 26}
!16 = !{ptr @dataflash_dev_ids, !17, !"dataflash_dev_ids", i1 false, i1 false}
!17 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 99, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 873, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dataflash_probe.__UNIQUE_ID_ddebug249, !19, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 885, i32 31}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 888, i32 31}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 891, i32 31}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 894, i32 31}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 897, i32 31}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 900, i32 31}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 904, i32 31}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 908, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dataflash_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @dataflash_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 914, i32 3}
!45 = !{ptr @dataflash_probe.__UNIQUE_ID_ddebug250, !44, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 801, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @jedec_probe.__UNIQUE_ID_ddebug248, !47, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 829, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @jedec_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @jedec_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 756, i32 4}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @jedec_lookup.__UNIQUE_ID_ddebug246, !56, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!59 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @jedec_lookup.__UNIQUE_ID_ddebug247, !62, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!62 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 762, i32 6}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 717, i32 4}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 720, i32 4}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 723, i32 4}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 726, i32 4}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 729, i32 4}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 734, i32 4}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 737, i32 4}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 739, i32 4}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 740, i32 4}
!81 = !{ptr @dataflash_data, !82, !"dataflash_data", i1 false, i1 false}
!82 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 705, i32 26}
!83 = !{ptr @add_dataflash_otp.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 635, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 641, i32 22}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 663, i32 2}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @add_dataflash_otp._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @add_dataflash_otp._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 165, i32 2}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dataflash_erase.__UNIQUE_ID_ddebug233, !94, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 199, i32 3}
!99 = !{ptr @dataflash_erase.__UNIQUE_ID_ddebug234, !98, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!100 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 208, i32 4}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dataflash_erase._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dataflash_erase._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 139, i32 4}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dataflash_waitready.__UNIQUE_ID_ddebug232, !108, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 246, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dataflash_read.__UNIQUE_ID_ddebug235, !112, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 255, i32 2}
!117 = !{ptr @dataflash_read.__UNIQUE_ID_ddebug236, !116, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 287, i32 3}
!120 = !{ptr @dataflash_read.__UNIQUE_ID_ddebug237, !119, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 313, i32 2}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug238, !122, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 331, i32 3}
!127 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug239, !126, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 359, i32 4}
!130 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug240, !129, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 364, i32 5}
!133 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug241, !132, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 377, i32 3}
!136 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug242, !135, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 386, i32 4}
!139 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug243, !138, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 401, i32 3}
!142 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug244, !141, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 406, i32 4}
!145 = !{ptr @dataflash_write.__UNIQUE_ID_ddebug245, !144, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 413, i32 4}
!148 = !{ptr @dataflash_write._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @dataflash_write._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 605, i32 9}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 923, i32 2}
!156 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dataflash_remove.__UNIQUE_ID_ddebug251, !155, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!158 = !{ptr @dataflash_dt_ids, !159, !"dataflash_dt_ids", i1 false, i1 false}
!159 = !{!"../drivers/mtd/devices/mtd_dataflash.c", i32 107, i32 34}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"auto-init"}
!170 = !{i64 2148976389, i64 2148976394, i64 2148976407, i64 2148976451, i64 2148976485, i64 2148976506}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2148209436, i64 2148209716, i64 2148210050, i64 2148210384}
