; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/b53/b53_mdio.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }

@__initcall__kmod_b53_mdio__497_398_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@b53_mdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @b53_mdio_probe, ptr @b53_mdio_remove, ptr @b53_mdio_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description498 = internal constant [44 x i8] c"b53_mdio.description=B53 MDIO access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file499 = internal constant [43 x i8] c"b53_mdio.file=drivers/net/dsa/b53/b53_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [30 x i8] c"b53_mdio.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm53xx\00", [24 x i8] zeroinitializer }, align 32
@b53_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5389\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@b53_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"leaving address %d to PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b53_mdio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/b53/b53_mdio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@b53_mdio_probe._entry_ptr = internal global ptr @b53_mdio_probe._entry, section ".printk_index", align 4
@b53_mdio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported device: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@b53_mdio_probe._entry_ptr.8 = internal global ptr @b53_mdio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,bcm7445d0\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sf2 slave mii\00", [18 x i8] zeroinitializer }, align 32
@b53_mdio_ops = internal constant { %struct.b53_io_ops, [48 x i8] } { %struct.b53_io_ops { ptr @b53_mdio_read8, ptr @b53_mdio_read16, ptr @b53_mdio_read32, ptr @b53_mdio_read48, ptr @b53_mdio_read64, ptr @b53_mdio_write8, ptr @b53_mdio_write16, ptr @b53_mdio_write32, ptr @b53_mdio_write48, ptr @b53_mdio_write64, ptr @b53_mdio_phy_read16, ptr @b53_mdio_phy_write16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@b53_mdio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register switch: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@b53_mdio_probe._entry_ptr.13 = internal global ptr @b53_mdio_probe._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 30]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4218880, i64 21040128, i64 21216256, i64 56777728]
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"b53_mdio_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 389, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 394, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"b53_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 375, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 300, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 317, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 328, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 329, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"b53_mdio_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 270, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [34 x i8] c"../drivers/net/dsa/b53/b53_mdio.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 344, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_b53_mdio__497_398_mdio_module_init6, ptr @b53_mdio_probe._entry, ptr @b53_mdio_probe._entry.11, ptr @b53_mdio_probe._entry.6, ptr @b53_mdio_probe._entry_ptr, ptr @b53_mdio_probe._entry_ptr.13, ptr @b53_mdio_probe._entry_ptr.8, ptr @mdio_module_exit, ptr @b53_mdio_driver, ptr @.str, ptr @b53_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @b53_mdio_ops, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mdio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mdio_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mdio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @b53_mdio_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdio_driver_unregister(ptr noundef nonnull @b53_mdio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 30, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge73
  ]

entry.if.end_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.1, i32 noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge73
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %call = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef 0, i32 noundef 2) #5
  %shl = shl i32 %call, 16
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %call6 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef 0, i32 noundef 3) #5
  %or = or i32 %call6, %shl
  %and = and i32 %or, -1024
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and, label %do.end20 [
    i32 21216256, label %if.end.if.end22_crit_edge
    i32 56777728, label %if.end.if.end22_crit_edge74
    i32 4218880, label %if.end.if.end22_crit_edge75
    i32 21040128, label %if.end.if.end22_crit_edge76
  ]

if.end.if.end22_crit_edge76:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.if.end22_crit_edge75:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.if.end22_crit_edge74:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.7, i32 noundef %or) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %if.end.if.end22_crit_edge74, %if.end.if.end22_crit_edge75, %if.end.if.end22_crit_edge76
  %call23 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.end22
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call26 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(14) @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true24.if.end29_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 8
  %call32 = tail call ptr @b53_switch_alloc(ptr noundef %mdiodev, ptr noundef nonnull @b53_mdio_ops, ptr noundef %13) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %current_page = getelementptr inbounds %struct.b53_device, ptr %call32, i32 0, i32 19
  %14 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %current_page, align 4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %bus37 = getelementptr inbounds %struct.b53_device, ptr %call32, i32 0, i32 22
  %17 = ptrtoint ptr %bus37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bus37, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call32, ptr %driver_data.i, align 4
  %call39 = tail call i32 @b53_switch_register(ptr noundef nonnull %call32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end35.cleanup_crit_edge, label %do.end44

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.12, i32 noundef %call39) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %do.end20, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end20 ], [ %call39, %do.end44 ], [ -517, %land.lhs.true24.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b53_mdio_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b53_mdio_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_read8(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24) #5
  %conv = trunc i32 %call1 to i8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_read16(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24) #5
  %conv = trunc i32 %call1 to i16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_read32(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %val, align 4
  %call2 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25) #5
  %shl = shl i32 %call2, 16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or = or i32 %4, %shl
  store i32 %or, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_read48(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 26) #5
  %conv13 = zext i32 %call1 to i64
  %call1.1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25) #5
  %conv.1 = sext i32 %call1.1 to i64
  %2 = shl nuw i64 %conv13, 32
  %3 = shl nsw i64 %conv.1, 16
  %shl.2 = or i64 %2, %3
  %call1.2 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24) #5
  %conv.2 = sext i32 %call1.2 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.2, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_read64(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 27) #5
  %conv13 = zext i32 %call1 to i64
  %call1.1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 26) #5
  %conv.114 = zext i32 %call1.1 to i64
  %2 = shl nuw i64 %conv13, 32
  %3 = shl nuw nsw i64 %conv.114, 16
  %shl.2 = or i64 %2, %3
  %call1.2 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25) #5
  %conv.2 = sext i32 %call1.2 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %shl.3 = shl i64 %or.2, 16
  %call1.3 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24) #5
  %conv.3 = sext i32 %call1.3 to i64
  %or.3 = or i64 %shl.3, %conv.3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.3, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_write8(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = zext i8 %value to i16
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_write16(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_write32(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = trunc i32 %value to i16
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc:                                          ; preds = %entry
  %shr = lshr i32 %value, 16
  %conv.1 = trunc i32 %shr to i16
  %call.1 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %conv.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup2_crit_edge

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 1)
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.1, %for.inc.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ %call1, %for.inc.1 ], [ %call, %entry.cleanup2_crit_edge ], [ %call.1, %for.inc.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_write48(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = trunc i64 %value to i16
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc:                                          ; preds = %entry
  %shr = lshr i64 %value, 16
  %conv.1 = trunc i64 %shr to i16
  %call.1 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %conv.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup2_crit_edge

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.1:                                        ; preds = %for.inc
  %shr.1 = lshr i64 %value, 32
  %conv.2 = trunc i64 %shr.1 to i16
  %call.2 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 26, i16 noundef zeroext %conv.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.cleanup2_crit_edge

for.inc.1.cleanup2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 1)
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.2, %for.inc.1.cleanup2_crit_edge, %for.inc.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ %call1, %for.inc.2 ], [ %call, %entry.cleanup2_crit_edge ], [ %call.1, %for.inc.cleanup2_crit_edge ], [ %call.2, %for.inc.1.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_write64(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = trunc i64 %value to i16
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc:                                          ; preds = %entry
  %shr = lshr i64 %value, 16
  %conv.1 = trunc i64 %shr to i16
  %call.1 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %conv.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup2_crit_edge

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.1:                                        ; preds = %for.inc
  %shr.1 = lshr i64 %value, 32
  %conv.2 = trunc i64 %shr.1 to i16
  %call.2 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 26, i16 noundef zeroext %conv.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.cleanup2_crit_edge

for.inc.1.cleanup2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.2:                                        ; preds = %for.inc.1
  %shr.2 = lshr i64 %value, 48
  %conv.3 = trunc i64 %shr.2 to i16
  %call.3 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 27, i16 noundef zeroext %conv.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.cleanup2_crit_edge

for.inc.2.cleanup2_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup2

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @b53_mdio_op(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext 1)
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.3, %for.inc.2.cleanup2_crit_edge, %for.inc.1.cleanup2_crit_edge, %for.inc.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ %call1, %for.inc.3 ], [ %call, %entry.cleanup2_crit_edge ], [ %call.1, %for.inc.cleanup2_crit_edge ], [ %call.2, %for.inc.1.cleanup2_crit_edge ], [ %call.3, %for.inc.2.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_phy_read16(ptr nocapture noundef readonly %dev, i32 noundef %addr, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef %addr, i32 noundef %reg) #5
  %conv = trunc i32 %call to i16
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %value, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mdio_phy_write16(ptr nocapture noundef readonly %dev, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %value) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b53_mdio_op(ptr nocapture noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %current_page = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_page, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %page)
  %cmp.not = icmp eq i8 %3, %page
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %conv1 = zext i8 %page to i16
  %shl = shl nuw i16 %conv1, 8
  %or = or i16 %shl, 1
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 16, i16 noundef zeroext %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %page, ptr %current_page, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %conv8 = zext i8 %reg to i16
  %shl9 = shl nuw i16 %conv8, 8
  %or11 = or i16 %shl9, %op
  %call13 = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17, i16 noundef zeroext %or11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body.preheader, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7
  %call19 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17) #5
  %and = and i32 %call19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body.preheader.cleanup_crit_edge, label %if.end24

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %for.body.preheader
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %call19.1 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17) #5
  %and.1 = and i32 %call19.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool22.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool22.not.1, label %if.end24.cleanup_crit_edge, label %if.end24.1

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.1:                                       ; preds = %if.end24
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %call19.2 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17) #5
  %and.2 = and i32 %call19.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool22.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool22.not.2, label %if.end24.1.cleanup_crit_edge, label %if.end24.2

if.end24.1.cleanup_crit_edge:                     ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.2:                                       ; preds = %if.end24.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %call19.3 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17) #5
  %and.3 = and i32 %call19.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool22.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool22.not.3, label %if.end24.2.cleanup_crit_edge, label %if.end24.3

if.end24.2.cleanup_crit_edge:                     ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.3:                                       ; preds = %if.end24.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %call19.4 = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef 30, i32 noundef 17) #5
  %and.4 = and i32 %call19.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool22.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool22.not.4, label %if.end24.3.cleanup_crit_edge, label %do.end

if.end24.3.cleanup_crit_edge:                     ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 73, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24.3.cleanup_crit_edge, %if.end24.2.cleanup_crit_edge, %if.end24.1.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ -5, %do.end ], [ 0, %if.end24.3.cleanup_crit_edge ], [ 0, %if.end24.2.cleanup_crit_edge ], [ 0, %if.end24.1.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_b53_mdio__497_398_mdio_module_init6, !1, !"__initcall__kmod_b53_mdio__497_398_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 398, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description498, !4, !"__UNIQUE_ID_description498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 400, i32 1}
!5 = !{ptr @__UNIQUE_ID_file499, !6, !"__UNIQUE_ID_file499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 401, i32 1}
!7 = !{ptr @__UNIQUE_ID_license500, !6, !"__UNIQUE_ID_license500", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 394, i32 11}
!10 = !{ptr @b53_mdio_driver, !11, !"b53_mdio_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 389, i32 27}
!12 = !{ptr @b53_of_match, !13, !"b53_of_match", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 375, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 300, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @b53_mdio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @b53_mdio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 317, i32 3}
!24 = !{ptr @b53_mdio_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @b53_mdio_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 328, i32 31}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 329, i32 33}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 344, i32 3}
!32 = !{ptr @b53_mdio_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @b53_mdio_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @b53_mdio_ops, !35, !"b53_mdio_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/b53/b53_mdio.c", i32 270, i32 32}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
