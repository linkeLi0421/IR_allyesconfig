; ModuleID = '/llk/IR_all_yes/drivers/phy/phy-pistachio-usb.c_pt.bc'
source_filename = "../drivers/phy/phy-pistachio-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pistachio_usb_phy = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_phy_pistachio_usb__289_199_pistachio_usb_phy_driver_init6 = internal global ptr @pistachio_usb_phy_driver_init, section ".initcall6.init", align 4
@pistachio_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pistachio_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pistachio_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pistachio_usb_phy_driver_exit = internal global ptr @pistachio_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [67 x i8] c"phy_pistachio_usb.author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"phy_pistachio_usb.description=IMG Pistachio USB2.0 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [53 x i8] c"phy_pistachio_usb.file=drivers/phy/phy-pistachio-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"phy_pistachio_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pistachio-usb-phy\00", [46 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pistachio-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img,cr-top\00", [21 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get CR_TOP registers: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pistachio_usb_phy_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/phy/phy-pistachio-usb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry_ptr = internal global ptr @pistachio_usb_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_phy\00", [24 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get usb_phy clock: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry_ptr.10 = internal global ptr @pistachio_usb_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img,refclk\00", [21 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No reference clock selector specified\0A\00", [57 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry_ptr.14 = internal global ptr @pistachio_usb_phy_probe._entry.12, section ".printk_index", align 4
@pistachio_usb_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @pistachio_usb_phy_power_on, ptr @pistachio_usb_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create PHY: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry_ptr.17 = internal global ptr @pistachio_usb_phy_probe._entry.15, section ".printk_index", align 4
@pistachio_usb_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register PHY provider: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_probe._entry_ptr.20 = internal global ptr @pistachio_usb_phy_probe._entry.18, section ".printk_index", align 4
@pistachio_usb_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 61, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable PHY clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pistachio_usb_phy_power_on\00", [37 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_power_on._entry_ptr = internal global ptr @pistachio_usb_phy_power_on._entry, section ".printk_index", align 4
@pistachio_usb_phy_power_on._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported rate for XO crystal: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_power_on._entry_ptr.25 = internal global ptr @pistachio_usb_phy_power_on._entry.23, section ".printk_index", align 4
@pistachio_usb_phy_power_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported clock rate: %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_power_on._entry_ptr.28 = internal global ptr @pistachio_usb_phy_power_on._entry.26, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pistachio_usb_phy_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.4, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VBUS fault detected\0A\00", [43 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_power_on._entry_ptr.31 = internal global ptr @pistachio_usb_phy_power_on._entry.29, section ".printk_index", align 4
@pistachio_usb_phy_power_on._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.4, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timed out waiting for PHY to power on\0A\00", [57 x i8] zeroinitializer }, align 32
@pistachio_usb_phy_power_on._entry_ptr.34 = internal global ptr @pistachio_usb_phy_power_on._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9600000, i64 10000000]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 19200000, i64 20000000, i64 24000000, i64 50000000]
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"pistachio_usb_phy_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 192, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 195, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"pistachio_usb_phy_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 186, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 146, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 148, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 153, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 155, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 160, i32 50 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 163, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"pistachio_usb_phy_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 126, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 169, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 178, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 61, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 72, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 83, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [35 x i8] c"../drivers/phy/phy-pistachio-usb.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 109, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pistachio_usb_phy_driver_exit, ptr @__initcall__kmod_phy_pistachio_usb__289_199_pistachio_usb_phy_driver_init6, ptr @pistachio_usb_phy_driver_exit, ptr @pistachio_usb_phy_power_on._entry, ptr @pistachio_usb_phy_power_on._entry.23, ptr @pistachio_usb_phy_power_on._entry.26, ptr @pistachio_usb_phy_power_on._entry.29, ptr @pistachio_usb_phy_power_on._entry.32, ptr @pistachio_usb_phy_power_on._entry_ptr, ptr @pistachio_usb_phy_power_on._entry_ptr.25, ptr @pistachio_usb_phy_power_on._entry_ptr.28, ptr @pistachio_usb_phy_power_on._entry_ptr.31, ptr @pistachio_usb_phy_power_on._entry_ptr.34, ptr @pistachio_usb_phy_probe._entry, ptr @pistachio_usb_phy_probe._entry.12, ptr @pistachio_usb_phy_probe._entry.15, ptr @pistachio_usb_phy_probe._entry.18, ptr @pistachio_usb_phy_probe._entry.8, ptr @pistachio_usb_phy_probe._entry_ptr, ptr @pistachio_usb_phy_probe._entry_ptr.10, ptr @pistachio_usb_phy_probe._entry_ptr.14, ptr @pistachio_usb_phy_probe._entry_ptr.17, ptr @pistachio_usb_phy_probe._entry_ptr.20, ptr @pistachio_usb_phy_driver, ptr @.str, ptr @pistachio_usb_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @pistachio_usb_phy_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_power_on._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_power_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_phy_power_on._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pistachio_usb_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pistachio_usb_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %cr_top = getelementptr inbounds %struct.pistachio_usb_phy, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %cr_top to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %cr_top, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %7) #8
  %8 = ptrtoint ptr %cr_top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cr_top, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.7) #5
  %phy_clk = getelementptr inbounds %struct.pistachio_usb_phy, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %phy_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %phy_clk, align 4
  %cmp.i92 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i92, label %do.end21, label %if.end27

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef %14) #8
  %15 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %of_node29 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %18 = ptrtoint ptr %of_node29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node29, align 8
  %refclk = getelementptr inbounds %struct.pistachio_usb_phy, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef %refclk, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  br i1 %cmp, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %call38 = tail call ptr @devm_phy_create(ptr noundef %21, ptr noundef null, ptr noundef nonnull @pistachio_usb_phy_ops) #5
  %cmp.i93 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %24 = ptrtoint ptr %call38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef %24) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  %driver_data.i.i94 = getelementptr inbounds %struct.device, ptr %call38, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i94 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i94, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call49 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i95 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %do.end54, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = ptrtoint ptr %call49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.19, i32 noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.end47.cleanup_crit_edge, %do.end43, %do.end34, %do.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %17, %do.end21 ], [ %call.i.i, %do.end34 ], [ %24, %do.end43 ], [ %30, %do.end54 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_usb_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_clk = getelementptr inbounds %struct.pistachio_usb_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i) #8
  br label %cleanup50

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %cr_top = getelementptr inbounds %struct.pistachio_usb_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cr_top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_top, align 4
  %refclk = getelementptr inbounds %struct.pistachio_usb_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refclk, align 4
  %shl = shl i32 %9, 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %11) #5
  %12 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %call4)
  %cmp7.not = icmp eq i32 %call4, 12000000
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %for.body.preheader, label %do.end11

for.body.preheader:                               ; preds = %if.end
  %14 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %for.inc.1 [
    i32 9600000, label %for.body.preheader.if.end24_crit_edge
    i32 10000000, label %if.end24.fold.split
  ]

for.body.preheader.if.end24_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %call4) #8
  br label %disable_clk

for.inc.1:                                        ; preds = %for.body.preheader
  br i1 %cmp7.not, label %for.inc.1.if.end24_crit_edge, label %for.inc.2

for.inc.1.if.end24_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.inc.2:                                        ; preds = %for.inc.1
  %17 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call4, label %do.end22 [
    i32 19200000, label %for.inc.2.if.end24_crit_edge
    i32 20000000, label %if.end24.fold.split95
    i32 24000000, label %if.end24.fold.split96
    i32 0, label %if.end24.fold.split97
    i32 50000000, label %if.end24.fold.split98
  ]

for.inc.2.if.end24_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end22:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef %call4) #8
  br label %disable_clk

if.end24.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24.fold.split95:                            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24.fold.split96:                            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24.fold.split97:                            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24.fold.split98:                            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.end24.fold.split98, %if.end24.fold.split97, %if.end24.fold.split96, %if.end24.fold.split95, %if.end24.fold.split, %for.inc.2.if.end24_crit_edge, %for.inc.1.if.end24_crit_edge, %for.body.preheader.if.end24_crit_edge
  %i.091.lcssa = phi i32 [ 0, %for.body.preheader.if.end24_crit_edge ], [ 8, %for.inc.1.if.end24_crit_edge ], [ 12, %for.inc.2.if.end24_crit_edge ], [ 4, %if.end24.fold.split ], [ 16, %if.end24.fold.split95 ], [ 20, %if.end24.fold.split96 ], [ 24, %if.end24.fold.split97 ], [ 28, %if.end24.fold.split98 ]
  %20 = ptrtoint ptr %cr_top to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cr_top, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 28, i32 noundef %i.091.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -20, %22
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub92 = add i32 %add.neg, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92)
  %cmp2993 = icmp slt i32 %sub92, 0
  br i1 %cmp2993, label %if.end24.while.body_crit_edge, label %if.end24.do.end47_crit_edge

if.end24.do.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end24.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val, align 4, !annotation !80
  %25 = ptrtoint ptr %cr_top to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cr_top, align 4
  %call31 = call i32 @regmap_read(ptr noundef %26, i32 noundef 20, ptr noundef nonnull %val) #5
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end37, label %cleanup.thread86

cleanup.thread86:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  br label %disable_clk

if.end37:                                         ; preds = %while.body
  %31 = and i32 %28, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %31)
  %.not = icmp eq i32 %31, 768
  br i1 %.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  br label %cleanup50

cleanup:                                          ; preds = %if.end37
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %32
  %cmp29 = icmp slt i32 %sub, 0
  br i1 %cmp29, label %cleanup.while.body_crit_edge, label %cleanup.do.end47_crit_edge

cleanup.do.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end47:                                         ; preds = %cleanup.do.end47_crit_edge, %if.end24.do.end47_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.33) #8
  br label %disable_clk

disable_clk:                                      ; preds = %do.end47, %cleanup.thread86, %do.end22, %do.end11
  %ret.2 = phi i32 [ -22, %do.end11 ], [ -22, %do.end22 ], [ -110, %do.end47 ], [ -5, %cleanup.thread86 ]
  %35 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_clk, align 4
  call void @clk_disable(ptr noundef %36) #5
  call void @clk_unprepare(ptr noundef %36) #5
  br label %cleanup50

cleanup50:                                        ; preds = %disable_clk, %cleanup.thread, %do.end
  %retval.2 = phi i32 [ %retval.0.i, %do.end ], [ %ret.2, %disable_clk ], [ 0, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_usb_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_clk = getelementptr inbounds %struct.pistachio_usb_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_phy_pistachio_usb__289_199_pistachio_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_pistachio_usb__289_199_pistachio_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 199, i32 1}
!2 = !{ptr @__exitcall_pistachio_usb_phy_driver_exit, !1, !"__exitcall_pistachio_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 201, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 202, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 203, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 195, i32 11}
!12 = !{ptr @pistachio_usb_phy_driver, !13, !"pistachio_usb_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 192, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 146, i32 8}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 148, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pistachio_usb_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pistachio_usb_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 153, i32 44}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 155, i32 3}
!28 = !{ptr @pistachio_usb_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pistachio_usb_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 160, i32 50}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 163, i32 3}
!34 = !{ptr @pistachio_usb_phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pistachio_usb_phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 169, i32 3}
!38 = !{ptr @pistachio_usb_phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pistachio_usb_phy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 178, i32 3}
!42 = !{ptr @pistachio_usb_phy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pistachio_usb_phy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @pistachio_usb_phy_ops, !45, !"pistachio_usb_phy_ops", i1 false, i1 false}
!45 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 126, i32 29}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 61, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pistachio_usb_phy_power_on._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pistachio_usb_phy_power_on._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 72, i32 3}
!53 = !{ptr @pistachio_usb_phy_power_on._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pistachio_usb_phy_power_on._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 83, i32 3}
!57 = !{ptr @pistachio_usb_phy_power_on._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pistachio_usb_phy_power_on._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 99, i32 4}
!61 = !{ptr @pistachio_usb_phy_power_on._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pistachio_usb_phy_power_on._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 109, i32 2}
!65 = !{ptr @pistachio_usb_phy_power_on._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pistachio_usb_phy_power_on._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"fsel_rate_map", i1 false, i1 false}
!68 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 41, i32 28}
!69 = !{ptr @pistachio_usb_phy_of_match, !70, !"pistachio_usb_phy_of_match", i1 false, i1 false}
!70 = !{!"../drivers/phy/phy-pistachio-usb.c", i32 186, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
