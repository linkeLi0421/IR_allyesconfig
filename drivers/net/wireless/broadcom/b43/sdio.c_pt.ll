; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.138, %struct.spinlock, i32, %union.anon.139, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.138 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.139 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.b43_sdio = type { %struct.ssb_bus, ptr, ptr }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }

@b43_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @b43_sdio_ids, ptr @b43_sdio_probe, ptr @b43_sdio_remove, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"b43-sdio\00", [23 x i8] zeroinitializer }, align 32
@b43_sdio_ids = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 720, i16 1099, i32 0 }, %struct.sdio_device_id { i8 -1, i16 146, i16 4, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Chip ID %04x:%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b43_sdio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/broadcom/b43/sdio.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry_ptr = internal global ptr @b43_sdio_probe._entry, section ".printk_index", align 4
@b43_sdio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 132, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to set block size to %u bytes, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry_ptr.9 = internal global ptr @b43_sdio_probe._entry.6, section ".printk_index", align 4
@b43_sdio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable func, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry_ptr.12 = internal global ptr @b43_sdio_probe._entry.10, section ".printk_index", align 4
@b43_sdio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate ssb bus\0A\00", [36 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry_ptr.15 = internal global ptr @b43_sdio_probe._entry.13, section ".printk_index", align 4
@b43_sdio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register ssb sdio bus, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@b43_sdio_probe._entry_ptr.18 = internal global ptr @b43_sdio_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"b43_sdio_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 188, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 189, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"b43_sdio_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 182, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 111, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 131, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 137, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 145, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [44 x i8] c"../drivers/net/wireless/broadcom/b43/sdio.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 151, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @b43_sdio_probe._entry, ptr @b43_sdio_probe._entry.10, ptr @b43_sdio_probe._entry.13, ptr @b43_sdio_probe._entry.16, ptr @b43_sdio_probe._entry.6, ptr @b43_sdio_probe._entry_ptr, ptr @b43_sdio_probe._entry_ptr.12, ptr @b43_sdio_probe._entry_ptr.15, ptr @b43_sdio_probe._entry_ptr.18, ptr @b43_sdio_probe._entry_ptr.9, ptr @b43_sdio_driver, ptr @.str, ptr @b43_sdio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_sdio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_sdio_request_irq(ptr noundef %dev, ptr noundef %handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus2, align 4
  %7 = getelementptr inbounds %struct.ssb_bus, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %irq_handler_opaque = getelementptr inbounds %struct.b43_sdio, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %irq_handler_opaque to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %irq_handler_opaque, align 4
  %irq_handler = getelementptr inbounds %struct.b43_sdio, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %handler, ptr %irq_handler, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #4
  %call4 = tail call i32 @sdio_claim_irq(ptr noundef %9, ptr noundef nonnull @b43_sdio_interrupt_dispatcher) #4
  tail call void @sdio_release_host(ptr noundef %9) #4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_sdio_interrupt_dispatcher(ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq_handler_opaque = getelementptr inbounds %struct.b43_sdio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq_handler_opaque to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_handler_opaque, align 4
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #4
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sdio_release_host(ptr noundef %func) #4
  %irq_handler = getelementptr inbounds %struct.b43_sdio, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_handler, align 4
  tail call void %7(ptr noundef %3) #4
  tail call void @sdio_claim_host(ptr noundef %func) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_sdio_free_irq(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus2, align 4
  %7 = getelementptr inbounds %struct.ssb_bus, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  tail call void @sdio_claim_host(ptr noundef %9) #4
  %call4 = tail call i32 @sdio_release_irq(ptr noundef %9) #4
  tail call void @sdio_release_host(ptr noundef %9) #4
  %irq_handler_opaque = getelementptr inbounds %struct.b43_sdio, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %irq_handler_opaque to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %irq_handler_opaque, align 4
  %irq_handler = getelementptr inbounds %struct.b43_sdio, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %irq_handler, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_sdio_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @b43_sdio_driver) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_sdio_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdio_unregister_driver(ptr noundef nonnull @b43_sdio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 16
  %0 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %0)
  %tuple.0103 = load ptr, ptr %tuples, align 4
  %tobool.not104 = icmp eq ptr %tuple.0103, null
  br i1 %tobool.not104, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog24.while.body_crit_edge, %while.body.lr.ph
  %tuple.0107 = phi ptr [ %tuple.0103, %while.body.lr.ph ], [ %tuple.0, %sw.epilog24.while.body_crit_edge ]
  %device.0106 = phi i16 [ 0, %while.body.lr.ph ], [ %device.1, %sw.epilog24.while.body_crit_edge ]
  %vendor.0105 = phi i16 [ 0, %while.body.lr.ph ], [ %vendor.1, %sw.epilog24.while.body_crit_edge ]
  %code = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0107, i32 0, i32 1
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %2)
  %cond = icmp eq i8 %2, -128
  br i1 %cond, label %sw.bb, label %while.body.sw.epilog24_crit_edge

while.body.sw.epilog24_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

sw.bb:                                            ; preds = %while.body
  %data = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0107, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cond67 = icmp eq i8 %4, 1
  br i1 %cond67, label %sw.bb2, label %sw.bb.sw.epilog24_crit_edge

sw.bb.sw.epilog24_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

sw.bb2:                                           ; preds = %sw.bb
  %size = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0107, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp.not = icmp eq i8 %6, 5
  br i1 %cmp.not, label %if.end, label %sw.bb2.sw.epilog24_crit_edge

sw.bb2.sw.epilog24_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog24

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0107, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i16
  %arrayidx9 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0107, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 2
  %conv10 = zext i8 %10 to i16
  %shl = shl nuw i16 %conv10, 8
  %or = or i16 %shl, %conv7
  %arrayidx13 = getelementptr [0 x i8], ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i16
  %arrayidx16 = getelementptr [0 x i8], ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %14 to i16
  %shl18 = shl nuw i16 %conv17, 8
  %or19 = or i16 %shl18, %conv14
  %conv21 = zext i16 %or to i32
  %conv22 = zext i16 %or19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv21, i32 noundef %conv22) #7
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %if.end, %sw.bb2.sw.epilog24_crit_edge, %sw.bb.sw.epilog24_crit_edge, %while.body.sw.epilog24_crit_edge
  %vendor.1 = phi i16 [ %vendor.0105, %sw.bb2.sw.epilog24_crit_edge ], [ %or, %if.end ], [ %vendor.0105, %sw.bb.sw.epilog24_crit_edge ], [ %vendor.0105, %while.body.sw.epilog24_crit_edge ]
  %device.1 = phi i16 [ %device.0106, %sw.bb2.sw.epilog24_crit_edge ], [ %or19, %if.end ], [ %device.0106, %sw.bb.sw.epilog24_crit_edge ], [ %device.0106, %while.body.sw.epilog24_crit_edge ]
  %15 = ptrtoint ptr %tuple.0107 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tuple.0 = load ptr, ptr %tuple.0107, align 4
  %tobool.not = icmp eq ptr %tuple.0, null
  br i1 %tobool.not, label %while.end, label %sw.epilog24.while.body_crit_edge

sw.epilog24.while.body_crit_edge:                 ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vendor.1)
  %tobool25.not = icmp eq i16 %vendor.1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %device.1)
  %tobool26.not = icmp eq i16 %device.1, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %while.end.cleanup_crit_edge, label %if.end28

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %while.end
  tail call void @sdio_claim_host(ptr noundef %func) #4
  %call = tail call i32 @sdio_set_block_size(ptr noundef %func, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %dev34 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.7, i32 noundef 64, i32 noundef %call) #7
  br label %err_release_host

if.end35:                                         ; preds = %if.end28
  %call36 = tail call i32 @sdio_enable_func(ptr noundef %func) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %dev42 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.11, i32 noundef %call36) #7
  br label %err_release_host

if.end43:                                         ; preds = %if.end35
  tail call void @sdio_release_host(ptr noundef %func) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 1768) #8
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %dev50 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.14) #7
  br label %err_disable_func

if.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %vendor.1)
  %cmp.i = icmp eq i16 %vendor.1, 5348
  call void @__sanitizer_cov_trace_const_cmp2(i16 17176, i16 %device.1)
  %cmp7.i = icmp eq i16 %device.1, 17176
  %or.cond.i = and i1 %cmp.i, %cmp7.i
  %.lcssa.i = zext i1 %or.cond.i to i32
  %call53 = tail call i32 @ssb_bus_sdiobus_register(ptr noundef nonnull %call7.i.i, ptr noundef %func, i32 noundef %.lcssa.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %dev59 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.17, i32 noundef %call53) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %err_disable_func

if.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

err_disable_func:                                 ; preds = %do.end58, %if.then46
  %error.0 = phi i32 [ %call53, %do.end58 ], [ -12, %if.then46 ]
  tail call void @sdio_claim_host(ptr noundef %func) #4
  %call62 = tail call i32 @sdio_disable_func(ptr noundef %func) #4
  br label %err_release_host

err_release_host:                                 ; preds = %err_disable_func, %do.end41, %do.end33
  %error.1 = phi i32 [ %call, %do.end33 ], [ %call36, %do.end41 ], [ %error.0, %err_disable_func ]
  tail call void @sdio_release_host(ptr noundef %func) #4
  br label %cleanup

cleanup:                                          ; preds = %err_release_host, %if.end60, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ %error.1, %err_release_host ], [ -19, %while.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_sdio_remove(ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @ssb_bus_unregister(ptr noundef %1) #4
  tail call void @sdio_claim_host(ptr noundef %func) #4
  %call1 = tail call i32 @sdio_disable_func(ptr noundef %func) #4
  tail call void @sdio_release_host(ptr noundef %func) #4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_sdiobus_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 189, i32 11}
!2 = !{ptr @b43_sdio_driver, !3, !"b43_sdio_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 188, i32 27}
!4 = !{ptr @b43_sdio_ids, !5, !"b43_sdio_ids", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 182, i32 36}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 111, i32 5}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @b43_sdio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @b43_sdio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 131, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @b43_sdio_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @b43_sdio_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 137, i32 3}
!21 = !{ptr @b43_sdio_probe._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @b43_sdio_probe._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 145, i32 3}
!25 = !{ptr @b43_sdio_probe._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @b43_sdio_probe._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 151, i32 3}
!29 = !{ptr @b43_sdio_probe._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @b43_sdio_probe._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"b43_sdio_quirks", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/b43/sdio.c", i32 31, i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
