; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm63xx-usbh.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm63xx-usbh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcm63xx_usbh_phy_variant = type { [14 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bcm63xx_usbh_phy = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_bcm63xx_usbh__290_452_bcm63xx_usbh_phy_driver_init6 = internal global ptr @bcm63xx_usbh_phy_driver_init, section ".initcall6.init", align 4
@bcm63xx_usbh_phy_driver = internal global %struct.platform_driver { ptr @bcm63xx_usbh_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_usbh_phy_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@__exitcall_bcm63xx_usbh_phy_driver_exit = internal global ptr @bcm63xx_usbh_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"phy_bcm63xx_usbh.description=BCM63xx USBH PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [69 x i8] c"phy_bcm63xx_usbh.author=\C3\81lvaro Fern\C3\A1ndez Rojas <noltari@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [37 x i8] c"phy_bcm63xx_usbh.author=Simon Arlott\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [60 x i8] c"phy_bcm63xx_usbh.file=drivers/phy/broadcom/phy-bcm63xx-usbh\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [29 x i8] c"phy_bcm63xx_usbh.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm63xx-usbh-phy\00", [47 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6318-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm6318 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm6328 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6358-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm6358 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6362-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm6368 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6368-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm6368 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63268-usbh-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbh_bcm63268 }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@bcm63xx_usbh_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm63xx_usbh_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/broadcom/phy-bcm63xx-usbh.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_probe._entry_ptr = internal global ptr @bcm63xx_usbh_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usbh\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_ref\00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @bcm63xx_usbh_phy_init, ptr @bcm63xx_usbh_phy_exit, ptr @bcm63xx_usbh_phy_power_on, ptr @bcm63xx_usbh_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_probe._entry_ptr.10 = internal global ptr @bcm63xx_usbh_phy_probe._entry.8, section ".printk_index", align 4
@bcm63xx_usbh_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_probe._entry_ptr.13 = internal global ptr @bcm63xx_usbh_phy_probe._entry.11, section ".printk_index", align 4
@bcm63xx_usbh_phy_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_bcm63xx_usbh\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Registered BCM63xx USB PHY driver\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable usbh clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm63xx_usbh_phy_init\00", [42 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_init._entry_ptr = internal global ptr @bcm63xx_usbh_phy_init._entry, section ".printk_index", align 4
@bcm63xx_usbh_phy_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to enable usb_ref clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_init._entry_ptr.20 = internal global ptr @bcm63xx_usbh_phy_init._entry.18, section ".printk_index", align 4
@bcm63xx_usbh_phy_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm63xx_usbh_phy_init._entry_ptr.23 = internal global ptr @bcm63xx_usbh_phy_init._entry.21, section ".printk_index", align 4
@usbh_bcm6318 = internal constant { %struct.bcm63xx_usbh_phy_variant, [40 x i8] } { %struct.bcm63xx_usbh_phy_variant { [14 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 44, i32 28, i32 4, i32 12, i32 -1, i32 8, i32 0, i32 20, i32 24, i32 32], i32 -2147483648, i32 134217728, i32 0, i32 16, i32 64, i32 0, i32 32, i32 1 }, [40 x i8] zeroinitializer }, align 32
@usbh_bcm6328 = internal constant { %struct.bcm63xx_usbh_phy_variant, [40 x i8] } { %struct.bcm63xx_usbh_phy_variant { [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52], i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i32 1 }, [40 x i8] zeroinitializer }, align 32
@usbh_bcm6358 = internal constant { %struct.bcm63xx_usbh_phy_variant, [40 x i8] } { %struct.bcm63xx_usbh_phy_variant { [14 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 36, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], i32 0, i32 0, i32 0, i32 0, i32 0, i32 1835040, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@usbh_bcm6368 = internal constant { %struct.bcm63xx_usbh_phy_variant, [40 x i8] } { %struct.bcm63xx_usbh_phy_variant { [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 -1, i32 36, i32 40, i32 44, i32 48, i32 52], i32 1536, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i32 1 }, [40 x i8] zeroinitializer }, align 32
@usbh_bcm63268 = internal constant { %struct.bcm63xx_usbh_phy_variant, [40 x i8] } { %struct.bcm63xx_usbh_phy_variant { [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52], i32 1536, i32 0, i32 32, i32 16, i32 64, i32 0, i32 0, i32 1 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 447, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 401, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 405, i32 46 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 409, i32 49 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"bcm63xx_usbh_phy_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 359, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 415, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 425, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 429, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 247, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 253, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 260, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"usbh_bcm6318\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 105, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"usbh_bcm6328\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 130, i32 46 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"usbh_bcm6358\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 152, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"usbh_bcm6368\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 177, i32 46 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"usbh_bcm63268\00", align 1
@___asan_gen_.106 = private constant [43 x i8] c"../drivers/phy/broadcom/phy-bcm63xx-usbh.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 200, i32 46 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_bcm63xx_usbh_phy_driver_exit, ptr @__initcall__kmod_phy_bcm63xx_usbh__290_452_bcm63xx_usbh_phy_driver_init6, ptr @bcm63xx_usbh_phy_driver_exit, ptr @bcm63xx_usbh_phy_init._entry, ptr @bcm63xx_usbh_phy_init._entry.18, ptr @bcm63xx_usbh_phy_init._entry.21, ptr @bcm63xx_usbh_phy_init._entry_ptr, ptr @bcm63xx_usbh_phy_init._entry_ptr.20, ptr @bcm63xx_usbh_phy_init._entry_ptr.23, ptr @bcm63xx_usbh_phy_probe._entry, ptr @bcm63xx_usbh_phy_probe._entry.11, ptr @bcm63xx_usbh_phy_probe._entry.8, ptr @bcm63xx_usbh_phy_probe._entry_ptr, ptr @bcm63xx_usbh_phy_probe._entry_ptr.10, ptr @bcm63xx_usbh_phy_probe._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bcm63xx_usbh_phy_ops, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @usbh_bcm6318, ptr @usbh_bcm6328, ptr @usbh_bcm6358, ptr @usbh_bcm6368, ptr @usbh_bcm63268], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_usbh_phy_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbh_bcm6318 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbh_bcm6328 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbh_bcm6358 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbh_bcm6368 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbh_bcm63268 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm63xx_usbh_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm63xx_usbh_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm63xx_usbh_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %variant6 = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %variant6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %variant6, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call.i100 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %reset = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i100, ptr %reset, align 4
  %cmp.i101 = icmp ugt ptr %call.i100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end13
  %cmp.not = icmp eq ptr %call.i100, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then17.if.end21_crit_edge, label %do.end

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then17.if.end21_crit_edge
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %call25 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  %usbh_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %usbh_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %usbh_clk, align 4
  %cmp.i102 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7) #4
  %usb_ref_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %usb_ref_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call32, ptr %usb_ref_clk, align 4
  %cmp.i103 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %call39 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @bcm63xx_usbh_phy_ops) #4
  %cmp.i104 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  %11 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i105 = getelementptr inbounds %struct.device, ptr %call39, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i105 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i105, align 4
  %call47 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @bcm63xx_usbh_phy_xlate) #4
  %cmp.i106 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end52, label %do.body55

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %14 = ptrtoint ptr %call47 to i32
  br label %cleanup

do.body55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm63xx_usbh_phy_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm63xx_usbh_phy_probe, %if.then60)) #4
          to label %cleanup [label %if.then60], !srcloc !76

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm63xx_usbh_phy_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body55, %do.end52, %do.end44, %if.then35, %if.then28, %if.end21, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %6, %if.end21 ], [ %8, %if.then28 ], [ %10, %if.then35 ], [ %11, %do.end44 ], [ %14, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm63xx_usbh_phy_xlate(ptr noundef %dev, ptr noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %device_mode = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %device_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %device_mode, align 4
  %call3 = tail call ptr @of_phy_simple_xlate(ptr noundef %dev, ptr noundef %args) #4
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_init(ptr noundef %phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usbh_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usbh_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbh_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %usb_ref_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %usb_ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_ref_clk, align 4
  %call.i123 = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %if.end.i127, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.end.i127:                                      ; preds = %if.end
  %call1.i125 = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool2.not.i126 = icmp eq i32 %call1.i125, 0
  br i1 %tobool2.not.i126, label %if.end10, label %if.then3.i128

if.then3.i128:                                    ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i128, %if.end.do.end7_crit_edge
  %retval.0.i129.ph = phi i32 [ %call1.i125, %if.then3.i128 ], [ %call.i123, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i129.ph) #7
  %6 = ptrtoint ptr %usbh_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbh_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end.i127
  %reset = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  %call11 = tail call i32 @reset_control_reset(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end20, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.22, i32 noundef %call11) #7
  %10 = ptrtoint ptr %usb_ref_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  %12 = ptrtoint ptr %usbh_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbh_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %variant.i = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant.i, align 4
  %arrayidx.i = getelementptr [14 x i32], ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %if.then22, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then22:                                        ; preds = %if.end20
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !77
  %or = and i32 %20, -28
  %or24 = or i32 %or, 9
  %device_mode = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %device_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %device_mode, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp eq i8 %22, 0
  br i1 %tobool26.not, label %if.then22.if.end32_crit_edge, label %land.lhs.true

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant.i, align 4
  %swapctl_dev_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %swapctl_dev_set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %swapctl_dev_set, align 4
  %or31 = or i32 %26, %or24
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %if.then22.if.end32_crit_edge
  %val.0 = phi i32 [ %or24, %if.then22.if.end32_crit_edge ], [ %or31, %land.lhs.true ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant.i, align 4
  %arrayidx.i134 = getelementptr [14 x i32], ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %val.0) #4, !srcloc !79
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end20.if.end33_crit_edge
  %33 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant.i, align 4
  %arrayidx.i137 = getelementptr [14 x i32], ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i138 = icmp sgt i32 %36, -1
  br i1 %cmp.i138, label %if.then35, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i141 = getelementptr i8, ptr %38, i32 %36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #4, !srcloc !77
  %40 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %variant.i, align 4
  %setup_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %setup_set to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %setup_set, align 4
  %or39 = or i32 %43, %39
  %setup_clr = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %setup_clr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %setup_clr, align 4
  %neg = xor i32 %45, -1
  %and41 = and i32 %or39, %neg
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx.i143 = getelementptr [14 x i32], ptr %41, i32 0, i32 10
  %48 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %47, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %and41) #4, !srcloc !79
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end33.if.end42_crit_edge
  %50 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %variant.i, align 4
  %arrayidx.i146 = getelementptr [14 x i32], ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i147 = icmp sgt i32 %53, -1
  br i1 %cmp.i147, label %if.then44, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i150 = getelementptr i8, ptr %55, i32 %53
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #4, !srcloc !77
  %57 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %variant.i, align 4
  %usc_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %usc_set to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usc_set, align 4
  %or48 = or i32 %60, %56
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %arrayidx.i152 = getelementptr [14 x i32], ptr %58, i32 0, i32 13
  %63 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i152, align 4
  %add.ptr.i153 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %or48) #4, !srcloc !79
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end42.if.end49_crit_edge
  %65 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant.i, align 4
  %tpc_val = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %tpc_val to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tpc_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool51.not = icmp eq i32 %68, 0
  br i1 %tobool51.not, label %if.end49.if.end57_crit_edge, label %land.lhs.true52

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true52:                                  ; preds = %if.end49
  %arrayidx.i155 = getelementptr [14 x i32], ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i156 = icmp sgt i32 %70, -1
  br i1 %cmp.i156, label %if.then54, label %land.lhs.true52.if.end57_crit_edge

land.lhs.true52.if.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr.i159 = getelementptr i8, ptr %72, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %68) #4, !srcloc !79
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %land.lhs.true52.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %device_mode58 = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 5
  %73 = ptrtoint ptr %device_mode58 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %device_mode58, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool59.not = icmp eq i8 %74, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %land.lhs.true60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end57
  %75 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %variant.i, align 4
  %arrayidx.i161 = getelementptr [14 x i32], ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i162 = icmp sgt i32 %78, -1
  br i1 %cmp.i162, label %land.lhs.true62, label %land.lhs.true60.cleanup_crit_edge

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true62:                                  ; preds = %land.lhs.true60
  %utmictl1_dev_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %76, i32 0, i32 8
  %79 = ptrtoint ptr %utmictl1_dev_set to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %utmictl1_dev_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool64.not = icmp eq i32 %80, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %if.then65

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then65:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %add.ptr.i165 = getelementptr i8, ptr %82, i32 %78
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #4, !srcloc !77
  %84 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %variant.i, align 4
  %utmictl1_dev_set69 = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %utmictl1_dev_set69 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %utmictl1_dev_set69, align 4
  %or70 = or i32 %87, %83
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %arrayidx.i167 = getelementptr [14 x i32], ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i167, align 4
  %add.ptr.i168 = getelementptr i8, ptr %89, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %or70) #4, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %land.lhs.true62.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i129.ph, %do.end7 ], [ %call11, %do.end16 ], [ 0, %if.then65 ], [ 0, %land.lhs.true62.cleanup_crit_edge ], [ 0, %land.lhs.true60.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_exit(ptr nocapture noundef readonly %phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usbh_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usbh_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbh_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  %usb_ref_clk = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %usb_ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_power_on(ptr nocapture noundef readonly %phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant.i = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant.i, align 4
  %arrayidx.i = getelementptr [14 x i32], ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !77
  %9 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant.i, align 4
  %power_pllc_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %power_pllc_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_pllc_set, align 4
  %or = or i32 %12, %8
  %power_pllc_clr = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %power_pllc_clr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_pllc_clr, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %or, %neg
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx.i13 = getelementptr [14 x i32], ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %and) #4, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_usbh_phy_power_off(ptr nocapture noundef readonly %phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant.i = getelementptr inbounds %struct.bcm63xx_usbh_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant.i, align 4
  %arrayidx.i = getelementptr [14 x i32], ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !77
  %9 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant.i, align 4
  %power_pllc_set = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %power_pllc_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_pllc_set, align 4
  %neg = xor i32 %12, -1
  %and = and i32 %8, %neg
  %power_pllc_clr = getelementptr inbounds %struct.bcm63xx_usbh_phy_variant, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %power_pllc_clr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_pllc_clr, align 4
  %or = or i32 %and, %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx.i13 = getelementptr [14 x i32], ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %or) #4, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_phy_bcm63xx_usbh__290_452_bcm63xx_usbh_phy_driver_init6, !1, !"__initcall__kmod_phy_bcm63xx_usbh__290_452_bcm63xx_usbh_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 452, i32 1}
!2 = !{ptr @__exitcall_bcm63xx_usbh_phy_driver_exit, !1, !"__exitcall_bcm63xx_usbh_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 454, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 455, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 456, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 457, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 447, i32 11}
!14 = !{ptr @bcm63xx_usbh_phy_driver, !15, !"bcm63xx_usbh_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 445, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 401, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm63xx_usbh_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm63xx_usbh_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 405, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 409, i32 49}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 415, i32 3}
!30 = !{ptr @bcm63xx_usbh_phy_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm63xx_usbh_phy_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 425, i32 3}
!34 = !{ptr @bcm63xx_usbh_phy_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm63xx_usbh_phy_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 429, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcm63xx_usbh_phy_probe.__UNIQUE_ID_ddebug289, !37, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!40 = !{ptr @bcm63xx_usbh_phy_ops, !41, !"bcm63xx_usbh_phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 359, i32 29}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 247, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bcm63xx_usbh_phy_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm63xx_usbh_phy_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 253, i32 3}
!49 = !{ptr @bcm63xx_usbh_phy_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm63xx_usbh_phy_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 260, i32 3}
!53 = !{ptr @bcm63xx_usbh_phy_init._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bcm63xx_usbh_phy_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @bcm63xx_usbh_phy_ids, !56, !"bcm63xx_usbh_phy_ids", i1 false, i1 false}
!56 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 434, i32 34}
!57 = !{ptr @usbh_bcm6318, !58, !"usbh_bcm6318", i1 false, i1 false}
!58 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 105, i32 46}
!59 = !{ptr @usbh_bcm6328, !60, !"usbh_bcm6328", i1 false, i1 false}
!60 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 130, i32 46}
!61 = !{ptr @usbh_bcm6358, !62, !"usbh_bcm6358", i1 false, i1 false}
!62 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 152, i32 46}
!63 = !{ptr @usbh_bcm6368, !64, !"usbh_bcm6368", i1 false, i1 false}
!64 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 177, i32 46}
!65 = !{ptr @usbh_bcm63268, !66, !"usbh_bcm63268", i1 false, i1 false}
!66 = !{!"../drivers/phy/broadcom/phy-bcm63xx-usbh.c", i32 200, i32 46}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148732311, i64 2148732316, i64 2148732329, i64 2148732373, i64 2148732407, i64 2148732428}
!77 = !{i64 2039819}
!78 = !{i8 0, i8 2}
!79 = !{i64 2039401}
