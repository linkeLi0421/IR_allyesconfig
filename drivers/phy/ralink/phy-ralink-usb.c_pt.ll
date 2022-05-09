; ModuleID = '/llk/IR_all_yes/drivers/phy/ralink/phy-ralink-usb.c_pt.bc'
source_filename = "../drivers/phy/ralink/phy-ralink-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ralink_usb_phy = type { ptr, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_phy_ralink_usb__289_234_ralink_usb_phy_driver_init6 = internal global ptr @ralink_usb_phy_driver_init, section ".initcall6.init", align 4
@ralink_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ralink_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ralink_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ralink_usb_phy_driver_exit = internal global ptr @ralink_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"phy_ralink_usb.description=Ralink USB phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"phy_ralink_usb.author=John Crispin <john@phrozen.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"phy_ralink_usb.file=drivers/phy/ralink/phy-ralink-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"phy_ralink_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ralink-usb-phy\00", [17 x i8] zeroinitializer }, align 32
@ralink_usb_phy_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ralink,rt3352-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1310720 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7620-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 37748736 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7628-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 37748736 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ralink,sysctl\00", [18 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get sysctl registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ralink_usb_phy_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/ralink/phy-ralink-usb.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry_ptr = internal global ptr @ralink_usb_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,mt7628-usbphy\00", [41 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to remap register memory\0A\00", [63 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry_ptr.10 = internal global ptr @ralink_usb_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host reset is missing\0A\00", [41 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry_ptr.14 = internal global ptr @ralink_usb_phy_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device reset is missing\0A\00", [39 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry_ptr.18 = internal global ptr @ralink_usb_phy_probe._entry.16, section ".printk_index", align 4
@ralink_usb_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @ralink_usb_phy_power_on, ptr @ralink_usb_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@ralink_usb_phy_probe._entry_ptr.21 = internal global ptr @ralink_usb_phy_probe._entry.19, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ralink_usb_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 121, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remote usb device wakeup %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ralink_usb_phy_power_on\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ralink_usb_phy_power_on._entry_ptr = internal global ptr @ralink_usb_phy_power_on._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@ralink_usb_phy_power_on._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 123, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UTMI 8bit 60MHz\0A\00", [47 x i8] zeroinitializer }, align 32
@ralink_usb_phy_power_on._entry_ptr.29 = internal global ptr @ralink_usb_phy_power_on._entry.27, section ".printk_index", align 4
@ralink_usb_phy_power_on._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 125, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UTMI 16bit 30MHz\0A\00", [46 x i8] zeroinitializer }, align 32
@ralink_usb_phy_power_on._entry_ptr.32 = internal global ptr @ralink_usb_phy_power_on._entry.30, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"ralink_usb_phy_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 227, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 231, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"ralink_usb_phy_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 151, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 188, i32 62 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 190, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 198, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 203, i32 52 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 205, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 209, i32 51 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 211, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"ralink_usb_phy_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 145, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 217, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 120, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 123, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [39 x i8] c"../drivers/phy/ralink/phy-ralink-usb.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 125, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ralink_usb_phy_driver_exit, ptr @__initcall__kmod_phy_ralink_usb__289_234_ralink_usb_phy_driver_init6, ptr @ralink_usb_phy_driver_exit, ptr @ralink_usb_phy_power_on._entry, ptr @ralink_usb_phy_power_on._entry.27, ptr @ralink_usb_phy_power_on._entry.30, ptr @ralink_usb_phy_power_on._entry_ptr, ptr @ralink_usb_phy_power_on._entry_ptr.29, ptr @ralink_usb_phy_power_on._entry_ptr.32, ptr @ralink_usb_phy_probe._entry, ptr @ralink_usb_phy_probe._entry.12, ptr @ralink_usb_phy_probe._entry.16, ptr @ralink_usb_phy_probe._entry.19, ptr @ralink_usb_phy_probe._entry.8, ptr @ralink_usb_phy_probe._entry_ptr, ptr @ralink_usb_phy_probe._entry_ptr.10, ptr @ralink_usb_phy_probe._entry_ptr.14, ptr @ralink_usb_phy_probe._entry_ptr.18, ptr @ralink_usb_phy_probe._entry_ptr.21, ptr @ralink_usb_phy_driver, ptr @.str, ptr @ralink_usb_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @ralink_usb_phy_ops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_power_on._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ralink_usb_phy_power_on._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ralink_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ralink_usb_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ralink_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ralink_usb_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ralink_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ralink_usb_phy_of_match, ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %clk = getelementptr inbounds %struct.ralink_usb_phy, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %clk, align 4
  %base = getelementptr inbounds %struct.ralink_usb_phy, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %base, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.1) #5
  %sysctl = getelementptr inbounds %struct.ralink_usb_phy, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %sysctl, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %8 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysctl, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call15 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end29_crit_edge, label %if.then17

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then17:                                        ; preds = %if.end13
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %base, align 4
  %cmp.i102 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %do.end25, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end13.if.end29_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rsthost = getelementptr inbounds %struct.ralink_usb_phy, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %rsthost to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %rsthost, align 4
  %cmp.i103 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %18 = ptrtoint ptr %rsthost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rsthost, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %call.i.i104 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i104, ptr %call.i, align 4
  %cmp.i105 = icmp ugt ptr %call.i.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %call52 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @ralink_usb_phy_ops) #5
  %phy53 = getelementptr inbounds %struct.ralink_usb_phy, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %phy53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call52, ptr %phy53, align 4
  %cmp.i106 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  %26 = ptrtoint ptr %phy53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy53, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call52, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call64 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call64 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end59, %do.end48, %do.end37, %do.end25, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %16, %do.end25 ], [ %20, %do.end37 ], [ %24, %do.end48 ], [ %28, %do.end59 ], [ %spec.select.i, %if.end62 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ralink_usb_phy_power_on(ptr nocapture noundef readonly %_phy) #2 align 64 {
entry:
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #5
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %t, align 4, !annotation !75
  %sysctl = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysctl, align 4
  %clk = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 48, i32 noundef %6, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysctl, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 20, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rsthost = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %rsthost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsthost, align 4
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %10) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %12) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  %base = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %tobool7.not = icmp eq ptr %24, null
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 2056
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %27, i32 2064
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %30, i32 2144
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %33, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 50331392) #5, !srcloc !79
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %35, i32 2144
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %38, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 39146752) #5, !srcloc !79
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %40, i32 2144
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %43, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 44739072) #5, !srcloc !79
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %45, i32 2144
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %48, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 33816576) #5, !srcloc !79
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %50, i32 2144
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %53, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 1778927616) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %55, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 469762116) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %57, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 8384) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %59, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 2) #5, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %60 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sysctl, align 4
  %call9 = call i32 @regmap_read(ptr noundef %61, i32 noundef 92, ptr noundef nonnull %t) #5
  %phy10 = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %phy10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy10, align 4
  %64 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %t, align 4
  %and = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.26, ptr @.str.25
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond) #8
  %66 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %t, align 4
  %and12 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %68 = ptrtoint ptr %phy10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy10, align 4
  %.str.31..str.28 = select i1 %tobool13.not, ptr @.str.31, ptr @.str.28
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull %.str.31..str.28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ralink_usb_phy_power_off(ptr nocapture noundef readonly %_phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sysctl = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl, align 4
  %clk = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef %5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %7) #5
  %rsthost = getelementptr inbounds %struct.ralink_usb_phy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rsthost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsthost, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_phy_ralink_usb__289_234_ralink_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_ralink_usb__289_234_ralink_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 234, i32 1}
!2 = !{ptr @__exitcall_ralink_usb_phy_driver_exit, !1, !"__exitcall_ralink_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 236, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 237, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 238, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 231, i32 12}
!12 = !{ptr @ralink_usb_phy_driver, !13, !"ralink_usb_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 227, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 188, i32 62}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 190, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ralink_usb_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ralink_usb_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 195, i32 44}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 198, i32 4}
!28 = !{ptr @ralink_usb_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ralink_usb_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 203, i32 52}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 205, i32 3}
!34 = !{ptr @ralink_usb_phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ralink_usb_phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 209, i32 51}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 211, i32 3}
!40 = !{ptr @ralink_usb_phy_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ralink_usb_phy_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 217, i32 3}
!44 = !{ptr @ralink_usb_phy_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ralink_usb_phy_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ralink_usb_phy_ops, !47, !"ralink_usb_phy_ops", i1 false, i1 false}
!47 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 145, i32 29}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 120, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ralink_usb_phy_power_on._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @ralink_usb_phy_power_on._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 123, i32 3}
!58 = !{ptr @ralink_usb_phy_power_on._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ralink_usb_phy_power_on._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 125, i32 3}
!62 = !{ptr @ralink_usb_phy_power_on._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ralink_usb_phy_power_on._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ralink_usb_phy_of_match, !65, !"ralink_usb_phy_of_match", i1 false, i1 false}
!65 = !{!"../drivers/phy/ralink/phy-ralink-usb.c", i32 151, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 2980822}
!77 = !{i64 2155179346}
!78 = !{i64 2155178695}
!79 = !{i64 2980404}
