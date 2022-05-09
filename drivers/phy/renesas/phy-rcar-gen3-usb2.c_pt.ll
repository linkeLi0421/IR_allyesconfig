; ModuleID = '/llk/IR_all_yes/drivers/phy/renesas/phy-rcar-gen3-usb2.c_pt.bc'
source_filename = "../drivers/phy/renesas/phy-rcar-gen3-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.rcar_gen3_phy_drv_data = type { ptr, i8 }
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
%struct.rcar_gen3_chan = type { ptr, ptr, ptr, [4 x %struct.rcar_gen3_phy], ptr, %struct.work_struct, %struct.mutex, i32, i32, i32, i8, i8, i8, i8 }
%struct.rcar_gen3_phy = type { ptr, ptr, i32, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_rcar_gen3_usb2__293_778_rcar_gen3_phy_usb2_driver_init6 = internal global ptr @rcar_gen3_phy_usb2_driver_init, section ".initcall6.init", align 4
@rcar_gen3_phy_usb2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_gen3_phy_usb2_probe, ptr @rcar_gen3_phy_usb2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gen3_phy_usb2_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_gen3_phy_usb2_driver_exit = internal global ptr @rcar_gen3_phy_usb2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [63 x i8] c"phy_rcar_gen3_usb2.file=drivers/phy/renesas/phy-rcar-gen3-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [34 x i8] c"phy_rcar_gen3_usb2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [62 x i8] c"phy_rcar_gen3_usb2.description=Renesas R-Car Gen3 USB 2.0 PHY\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [79 x i8] c"phy_rcar_gen3_usb2.author=Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_rcar_gen3_usb2\00", [45 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_match_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb2-phy-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_g1c_phy_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb2-phy-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_phy_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb2-phy-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_phy_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb2-phy-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_phy_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_g2l_phy_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_phy_usb2_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"This driver needs device tree\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_gen3_phy_usb2_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/renesas/phy-rcar-gen3-usb2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry_ptr = internal global ptr @rcar_gen3_phy_usb2_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"renesas,no-otg-pins\00", [44 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry_ptr.9 = internal global ptr @rcar_gen3_phy_usb2_probe._entry.7, section ".printk_index", align 4
@rcar_gen3_phy_usb2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&channel->lock\00", [17 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create USB2 PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry_ptr.13 = internal global ptr @rcar_gen3_phy_usb2_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_probe._entry_ptr.17 = internal global ptr @rcar_gen3_phy_usb2_probe._entry.15, section ".printk_index", align 4
@dev_attr_role = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @role_show, ptr @role_store }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"role\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rz_g1c_phy_usb2_data = internal constant { %struct.rcar_gen3_phy_drv_data, [24 x i8] } { %struct.rcar_gen3_phy_drv_data { ptr @rz_g1c_phy_usb2_ops, i8 0 }, [24 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_data = internal constant { %struct.rcar_gen3_phy_drv_data, [24 x i8] } { %struct.rcar_gen3_phy_drv_data { ptr @rcar_gen3_phy_usb2_ops, i8 0 }, [24 x i8] zeroinitializer }, align 32
@rz_g2l_phy_usb2_data = internal constant { %struct.rcar_gen3_phy_drv_data, [24 x i8] } { %struct.rcar_gen3_phy_drv_data { ptr @rcar_gen3_phy_usb2_ops, i8 1 }, [24 x i8] zeroinitializer }, align 32
@rz_g1c_phy_usb2_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rcar_gen3_phy_usb2_init, ptr @rcar_gen3_phy_usb2_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&channel->work)\00", [62 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No irq handler (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_gen3_phy_usb2_init\00", [40 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb2_init._entry_ptr = internal global ptr @rcar_gen3_phy_usb2_init._entry, section ".printk_index", align 4
@rcar_gen3_phy_usb2_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rcar_gen3_phy_usb2_init, ptr @rcar_gen3_phy_usb2_exit, ptr @rcar_gen3_phy_usb2_power_on, ptr @rcar_gen3_phy_usb2_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"rcar_gen3_phy_usb2_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 770, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 772, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"rcar_gen3_phy_usb2_match_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 577, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 661, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 682, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"rcar_gen3_phy_cable\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 606, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 690, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 711, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 716, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 725, i32 51 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 739, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"dev_attr_role\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 389, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 386, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 386, i32 54 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 387, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"rz_g1c_phy_usb2_data\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 567, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"rcar_gen3_phy_usb2_data\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 562, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"rz_g2l_phy_usb2_data\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 572, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"rz_g1c_phy_usb2_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 556, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 443, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 447, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"rcar_gen3_phy_usb2_ops\00", align 1
@___asan_gen_.128 = private constant [44 x i8] c"../drivers/phy/renesas/phy-rcar-gen3-usb2.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 548, i32 29 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_rcar_gen3_phy_usb2_driver_exit, ptr @__initcall__kmod_phy_rcar_gen3_usb2__293_778_rcar_gen3_phy_usb2_driver_init6, ptr @rcar_gen3_phy_usb2_driver_exit, ptr @rcar_gen3_phy_usb2_init._entry, ptr @rcar_gen3_phy_usb2_init._entry_ptr, ptr @rcar_gen3_phy_usb2_probe._entry, ptr @rcar_gen3_phy_usb2_probe._entry.11, ptr @rcar_gen3_phy_usb2_probe._entry.15, ptr @rcar_gen3_phy_usb2_probe._entry.7, ptr @rcar_gen3_phy_usb2_probe._entry_ptr, ptr @rcar_gen3_phy_usb2_probe._entry_ptr.13, ptr @rcar_gen3_phy_usb2_probe._entry_ptr.17, ptr @rcar_gen3_phy_usb2_probe._entry_ptr.9, ptr @rcar_gen3_phy_usb2_driver, ptr @.str, ptr @rcar_gen3_phy_usb2_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rcar_gen3_phy_cable, ptr @.str.8, ptr @rcar_gen3_phy_usb2_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @dev_attr_role, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rz_g1c_phy_usb2_data, ptr @rcar_gen3_phy_usb2_data, ptr @rz_g2l_phy_usb2_data, ptr @rz_g1c_phy_usb2_ops, ptr @rcar_gen3_phy_usb2_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @rcar_gen3_phy_usb2_ops], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_match_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_role to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_g1c_phy_usb2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_g2l_phy_usb2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_g1c_phy_usb2_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb2_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gen3_phy_usb2_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_phy_usb2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gen3_phy_usb2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup109

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup109_crit_edge, label %if.end4

if.end.cleanup109_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup109

if.end11:                                         ; preds = %if.end4
  %obint_enable_bits = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %obint_enable_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6144, ptr %obint_enable_bits, align 4
  %call12 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12, ptr %irq, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i182 = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp1.not.i = icmp eq i32 %call.i182, 0
  %call.122.i = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.122.i)
  %cmp1.not.123.i = icmp eq i32 %call.122.i, 0
  br i1 %cmp1.not.i, label %for.inc.thread.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i182, i32 %call.122.i)
  %cmp4.not.1.i = icmp eq i32 %call.i182, %call.122.i
  %or.cond.i = select i1 %cmp1.not.123.i, i1 true, i1 %cmp4.not.1.i
  br i1 %or.cond.i, label %for.inc.i.for.inc.1.i_crit_edge, label %for.inc.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge

for.inc.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_get_dr_mode.exit.thread

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.thread.i:                                 ; preds = %if.end11
  br i1 %cmp1.not.123.i, label %for.inc.1.thread.i, label %for.inc.thread.i.for.inc.1.i_crit_edge

for.inc.thread.i.for.inc.1.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.thread.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %candidate.1.1.i = phi i32 [ %call.i182, %for.inc.i.for.inc.1.i_crit_edge ], [ %call.122.i, %for.inc.thread.i.for.inc.1.i_crit_edge ]
  %call.2.i = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.not.2.i = icmp eq i32 %call.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %candidate.1.1.i, i32 %call.2.i)
  %cmp4.not.2.i = icmp eq i32 %candidate.1.1.i, %call.2.i
  %or.cond = select i1 %cmp1.not.2.i, i1 true, i1 %cmp4.not.2.i
  br i1 %or.cond, label %for.inc.1.i.for.inc.2.i_crit_edge, label %for.inc.1.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge

for.inc.1.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_get_dr_mode.exit.thread

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.1.thread.i:                               ; preds = %for.inc.thread.i
  %call.230.i = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.230.i)
  %cmp1.not.231.i = icmp eq i32 %call.230.i, 0
  br i1 %cmp1.not.231.i, label %rcar_gen3_get_dr_mode.exit, label %for.inc.1.thread.i.for.inc.2.i_crit_edge

for.inc.1.thread.i.for.inc.2.i_crit_edge:         ; preds = %for.inc.1.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.1.thread.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %candidate.1.2.i = phi i32 [ %candidate.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %call.230.i, %for.inc.1.thread.i.for.inc.2.i_crit_edge ]
  %call.3.i = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.not.3.i = icmp eq i32 %call.3.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %candidate.1.2.i, i32 %call.3.i)
  %cmp4.not.3.i = icmp eq i32 %candidate.1.2.i, %call.3.i
  %or.cond199 = select i1 %cmp1.not.3.i, i1 true, i1 %cmp4.not.3.i
  br i1 %or.cond199, label %rcar_gen3_get_dr_mode.exit.thread193, label %for.inc.2.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge

for.inc.2.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_get_dr_mode.exit.thread

rcar_gen3_get_dr_mode.exit.thread:                ; preds = %for.inc.2.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge, %for.inc.1.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge, %for.inc.i.rcar_gen3_get_dr_mode.exit.thread_crit_edge
  %dr_mode190 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %dr_mode190 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dr_mode190, align 4
  br label %if.end35

rcar_gen3_get_dr_mode.exit.thread193:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dr_mode195 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %dr_mode195 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %candidate.1.2.i, ptr %dr_mode195, align 4
  br label %if.then16

rcar_gen3_get_dr_mode.exit:                       ; preds = %for.inc.1.thread.i
  %call.338.i = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %7, i32 noundef 3) #7
  %dr_mode = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.338.i, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.338.i)
  %cmp.not = icmp eq i32 %call.338.i, 0
  br i1 %cmp.not, label %rcar_gen3_get_dr_mode.exit.if.end35_crit_edge, label %rcar_gen3_get_dr_mode.exit.if.then16_crit_edge

rcar_gen3_get_dr_mode.exit.if.then16_crit_edge:   ; preds = %rcar_gen3_get_dr_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

rcar_gen3_get_dr_mode.exit.if.end35_crit_edge:    ; preds = %rcar_gen3_get_dr_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then16:                                        ; preds = %rcar_gen3_get_dr_mode.exit.if.then16_crit_edge, %rcar_gen3_get_dr_mode.exit.thread193
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_otg_channel, align 1
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i183 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i183, null
  %uses_otg_pins = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 12
  %frombool = zext i1 %tobool.i.not to i8
  %14 = ptrtoint ptr %uses_otg_pins to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %uses_otg_pins, align 2
  %call20 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev1, ptr noundef nonnull @rcar_gen3_phy_cable) #7
  %extcon = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %extcon, align 4
  %cmp.i184 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call20 to i32
  br label %cleanup109

if.end26:                                         ; preds = %if.then16
  %call28 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev1, ptr noundef %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup109

if.end35:                                         ; preds = %if.end26.if.end35_crit_edge, %rcar_gen3_get_dr_mode.exit.if.end35_crit_edge, %rcar_gen3_get_dr_mode.exit.thread
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call36 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.error_crit_edge, label %if.end39

if.end35.error_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end39:                                         ; preds = %if.end35
  %no_adp_ctrl = getelementptr inbounds %struct.rcar_gen3_phy_drv_data, ptr %call36, i32 0, i32 1
  %17 = ptrtoint ptr %no_adp_ctrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %no_adp_ctrl, align 4, !range !83
  %soc_no_adp_ctrl = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %soc_no_adp_ctrl to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %soc_no_adp_ctrl, align 1
  %20 = load i8, ptr %no_adp_ctrl, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.end39.do.body47_crit_edge, label %if.then44

if.end39.do.body47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %obint_enable_bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %obint_enable_bits, align 4
  br label %do.body47

do.body47:                                        ; preds = %if.then44, %if.end39.do.body47_crit_edge
  %lock = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @rcar_gen3_phy_usb2_probe.__key) #7
  %22 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call36, align 4
  %call51 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %23) #7
  %arrayidx = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call51, ptr %arrayidx, align 4
  %cmp.i185 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.body47.do.end59_crit_edge, label %if.end64

do.body47.do.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59:                                         ; preds = %if.end64.2.do.end59_crit_edge, %if.end64.1.do.end59_crit_edge, %if.end64.do.end59_crit_edge, %do.body47.do.end59_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %do.body47.do.end59_crit_edge ], [ %arrayidx.1, %if.end64.do.end59_crit_edge ], [ %arrayidx.2, %if.end64.1.do.end59_crit_edge ], [ %arrayidx.3, %if.end64.2.do.end59_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %25 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.lcssa, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %error

if.end64:                                         ; preds = %do.body47
  %ch = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %ch, align 4
  %int_enable_bits = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %29 = ptrtoint ptr %int_enable_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %int_enable_bits, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call51, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call36, align 4
  %call51.1 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %32) #7
  %arrayidx.1 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call51.1, ptr %arrayidx.1, align 4
  %cmp.i185.1 = icmp ugt ptr %call51.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.1, label %if.end64.do.end59_crit_edge, label %if.end64.1

if.end64.do.end59_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end64.1:                                       ; preds = %if.end64
  %ch.1 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %34 = ptrtoint ptr %ch.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %ch.1, align 4
  %int_enable_bits.1 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %35 = ptrtoint ptr %int_enable_bits.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %int_enable_bits.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %call51.1, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.1, ptr %driver_data.i.i.1, align 4
  %37 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call36, align 4
  %call51.2 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %38) #7
  %arrayidx.2 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call51.2, ptr %arrayidx.2, align 4
  %cmp.i185.2 = icmp ugt ptr %call51.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.2, label %if.end64.1.do.end59_crit_edge, label %if.end64.2

if.end64.1.do.end59_crit_edge:                    ; preds = %if.end64.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end64.2:                                       ; preds = %if.end64.1
  %ch.2 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %40 = ptrtoint ptr %ch.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %ch.2, align 4
  %int_enable_bits.2 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 2, i32 2
  %41 = ptrtoint ptr %int_enable_bits.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %int_enable_bits.2, align 4
  %driver_data.i.i.2 = getelementptr inbounds %struct.device, ptr %call51.2, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx.2, ptr %driver_data.i.i.2, align 4
  %43 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call36, align 4
  %call51.3 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %44) #7
  %arrayidx.3 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call51.3, ptr %arrayidx.3, align 4
  %cmp.i185.3 = icmp ugt ptr %call51.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.3, label %if.end64.2.do.end59_crit_edge, label %if.end64.3

if.end64.2.do.end59_crit_edge:                    ; preds = %if.end64.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end64.3:                                       ; preds = %if.end64.2
  %ch.3 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %46 = ptrtoint ptr %ch.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %ch.3, align 4
  %int_enable_bits.3 = getelementptr %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 3, i32 3, i32 2
  %47 = ptrtoint ptr %int_enable_bits.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %int_enable_bits.3, align 4
  %driver_data.i.i.3 = getelementptr inbounds %struct.device, ptr %call51.3, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.3, ptr %driver_data.i.i.3, align 4
  %call75 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %vbus = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call75, ptr %vbus, align 4
  %cmp.i186 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then78, label %if.end64.3.if.end87_crit_edge

if.end64.3.if.end87_crit_edge:                    ; preds = %if.end64.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then78:                                        ; preds = %if.end64.3
  %cmp81 = icmp eq ptr %call75, inttoptr (i32 -517 to ptr)
  br i1 %cmp81, label %if.then78.error_crit_edge, label %if.end85

if.then78.error_crit_edge:                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %vbus, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end64.3.if.end87_crit_edge
  %driver_data.i.i187 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i187 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i187, align 4
  %dev88 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %dev88 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev1, ptr %dev88, align 4
  %call89 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @rcar_gen3_phy_usb2_xlate) #7
  %cmp.i188 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %do.end94, label %if.else

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  %53 = ptrtoint ptr %call89 to i32
  br label %error

if.else:                                          ; preds = %if.end87
  %is_otg_channel96 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %call.i, i32 0, i32 11
  %54 = ptrtoint ptr %is_otg_channel96 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_otg_channel96, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool97.not = icmp eq i8 %55, 0
  br i1 %tobool97.not, label %if.else.cleanup109_crit_edge, label %if.then98

if.else.cleanup109_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.then98:                                        ; preds = %if.else
  %call100 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_role) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then98.error_crit_edge, label %if.then98.cleanup109_crit_edge

if.then98.cleanup109_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.then98.error_crit_edge:                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.then98.error_crit_edge, %do.end94, %if.then78.error_crit_edge, %do.end59, %if.end35.error_crit_edge
  %ret.0 = phi i32 [ %27, %do.end59 ], [ %53, %do.end94 ], [ 0, %if.then98.error_crit_edge ], [ -22, %if.end35.error_crit_edge ], [ -517, %if.then78.error_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup109

cleanup109:                                       ; preds = %error, %if.then98.cleanup109_crit_edge, %if.else.cleanup109_crit_edge, %do.end33, %if.then23, %if.then8, %if.end.cleanup109_crit_edge, %do.end
  %retval.2 = phi i32 [ %3, %if.then8 ], [ %ret.0, %error ], [ -22, %do.end ], [ -12, %if.end.cleanup109_crit_edge ], [ 0, %if.then98.cleanup109_crit_edge ], [ 0, %if.else.cleanup109_crit_edge ], [ %16, %if.then23 ], [ %call28, %do.end33 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg_channel, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_role) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rcar_gen3_phy_usb2_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rphys = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp sgt i32 %3, 1
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.else
  %args6 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp8 = icmp ugt i32 %5, 3
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 %5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.then
  %arrayidx15.sink = phi ptr [ %arrayidx15, %if.end11 ], [ %rphys, %if.then ]
  %6 = ptrtoint ptr %arrayidx15.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx15.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.else.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end5.cleanup_crit_edge ], [ %7, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg_channel, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %initialized.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 0, i32 3
  %4 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.cond.i, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %lor.lhs.false
  %initialized.1.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 1, i32 3
  %6 = ptrtoint ptr %initialized.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized.1.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1.i = icmp eq i8 %7, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %initialized.2.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 2, i32 3
  %8 = ptrtoint ptr %initialized.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %initialized.2.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2.i = icmp eq i8 %9, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_is_any_rphy_initialized.exit, label %for.cond.1.i.if.end_crit_edge

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rcar_gen3_is_any_rphy_initialized.exit:           ; preds = %for.cond.1.i
  %initialized.3.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 3, i32 3
  %10 = ptrtoint ptr %initialized.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized.3.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.3.i.not = icmp eq i8 %11, 0
  br i1 %tobool.not.3.i.not, label %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge, label %rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge

rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1536
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %.mask.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i6 = icmp eq i32 %.mask.i, 0
  %cond = select i1 %tobool.not.i6, ptr @.str.20, ptr @.str.21
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -5, %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg_channel, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %initialized.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 0, i32 3
  %4 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.cond.i, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %lor.lhs.false
  %initialized.1.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 1, i32 3
  %6 = ptrtoint ptr %initialized.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized.1.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1.i = icmp eq i8 %7, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %initialized.2.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 2, i32 3
  %8 = ptrtoint ptr %initialized.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %initialized.2.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2.i = icmp eq i8 %9, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_is_any_rphy_initialized.exit, label %for.cond.1.i.if.end_crit_edge

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rcar_gen3_is_any_rphy_initialized.exit:           ; preds = %for.cond.1.i
  %initialized.3.i = getelementptr %struct.rcar_gen3_chan, ptr %1, i32 0, i32 3, i32 3, i32 3
  %10 = ptrtoint ptr %initialized.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized.3.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.3.i.not = icmp eq i8 %11, 0
  br i1 %tobool.not.3.i.not, label %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge, label %rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge

rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rcar_gen3_is_any_rphy_initialized.exit.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.20) #7
  br i1 %call2, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.21) #7
  br i1 %call4, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %new_mode.0 = phi i32 [ 1, %if.end.if.end8_crit_edge ], [ 6, %if.else.if.end8_crit_edge ]
  %uses_otg_pins.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %uses_otg_pins.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %uses_otg_pins.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i38 = icmp eq i8 %13, 0
  br i1 %tobool.not.i38, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dr_mode.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp ne i32 %15, 1
  br label %rcar_gen3_check_id.exit

if.end.i:                                         ; preds = %if.end8
  %soc_no_adp_ctrl.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %soc_no_adp_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %soc_no_adp_ctrl.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  br i1 %tobool2.not.i, label %if.end7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %19, i32 1552
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.i = icmp ne i32 %21, 0
  br label %rcar_gen3_check_id.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr11.i = getelementptr i8, ptr %19, i32 1584
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %23 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.i = icmp ne i32 %23, 0
  br label %rcar_gen3_check_id.exit

rcar_gen3_check_id.exit:                          ; preds = %if.end7.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i1 [ %tobool5.i, %if.then3.i ], [ %tobool16.i, %if.end7.i ], [ %cmp.i, %if.then.i ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 1536
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %.mask.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  %..i = select i1 %tobool.not.i.i, i32 1, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %new_mode.0)
  %cmp = icmp eq i32 %..i, %new_mode.0
  br i1 %cmp, label %rcar_gen3_check_id.exit.cleanup_crit_edge, label %if.end12

rcar_gen3_check_id.exit.cleanup_crit_edge:        ; preds = %rcar_gen3_check_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %rcar_gen3_check_id.exit
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  br i1 %call2, label %if.then14, label %if.else19

if.then14:                                        ; preds = %if.end12
  br i1 %retval.0.i, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i39 = getelementptr i8, ptr %28, i32 1544
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #7, !srcloc !84
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %obint_enable_bits3.i.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %obint_enable_bits3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %obint_enable_bits3.i.i, align 4
  %neg.i.i = xor i32 %32, -1
  %and.i.i = and i32 %30, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %33) #7, !srcloc !90
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %soc_no_adp_ctrl.i.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %soc_no_adp_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %soc_no_adp_ctrl.i.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i4.i = icmp eq i8 %37, 0
  %spec.select.i.i = select i1 %tobool.not.i4.i, i32 16, i32 1
  %spec.select12.i.i = select i1 %tobool.not.i4.i, i32 1584, i32 1548
  %add.ptr.i5.i = getelementptr i8, ptr %35, i32 %spec.select12.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !84
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %or.i6.i = or i32 %39, %spec.select.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i6.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %40) #7, !srcloc !90
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 1552
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %44 = or i32 %43, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %44) #7, !srcloc !90
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %46, i32 1536
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %48 = and i32 %47, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %48) #7, !srcloc !90
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %51 = ptrtoint ptr %soc_no_adp_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %soc_no_adp_ctrl.i.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i = icmp eq i8 %52, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 1
  %spec.select12.i.i.i = select i1 %tobool.not.i.i.i, i32 1584, i32 1548
  %add.ptr.i6.i.i = getelementptr i8, ptr %50, i32 %spec.select12.i.i.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #7, !srcloc !84
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %or.i7.i.i = or i32 %54, %spec.select.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i7.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %55) #7, !srcloc !90
  %extcon_host.i.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %extcon_host.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %extcon_host.i.i, align 4
  %work.i.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %work.i.i) #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %59, i32 1544
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !84
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %62 = ptrtoint ptr %uses_otg_pins.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %uses_otg_pins.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i11.i = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %obint_enable_bits3.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %obint_enable_bits3.i.i, align 4
  %or.i13.i = or i32 %65, %61
  %neg.i14.i = xor i32 %65, -1
  %and.i15.i = and i32 %61, %neg.i14.i
  %val.0.i.i = select i1 %tobool.not.i11.i, i32 %and.i15.i, i32 %or.i13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %66) #7, !srcloc !90
  br label %cleanup

if.else17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i40 = getelementptr i8, ptr %28, i32 1552
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %68 = or i32 %67, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %68) #7, !srcloc !90
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %70, i32 1552
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %72 = or i32 %71, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 %72) #7, !srcloc !90
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %74, i32 1536
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %76 = and i32 %75, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %76) #7, !srcloc !90
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %soc_no_adp_ctrl.i.i42 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 13
  %79 = ptrtoint ptr %soc_no_adp_ctrl.i.i42 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %soc_no_adp_ctrl.i.i42, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i43 = icmp eq i8 %80, 0
  %spec.select12.i.i44 = select i1 %tobool.not.i.i43, i32 1584, i32 1548
  %add.ptr.i21.i = getelementptr i8, ptr %78, i32 %spec.select12.i.i44
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !84
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %neg.i.i45 = select i1 %tobool.not.i.i43, i32 -17, i32 -2
  %and.i.i46 = and i32 %82, %neg.i.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %and.i.i46) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %83) #7, !srcloc !90
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %85 = and i32 %84, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %85) #7, !srcloc !90
  br label %cleanup

if.else19:                                        ; preds = %if.end12
  %add.ptr.i.i52 = getelementptr i8, ptr %28, i32 1552
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %87 = and i32 %86, -1281
  %88 = or i32 %87, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %88) #7
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %add.ptr.i5.i53 = getelementptr i8, ptr %90, i32 1536
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %92 = or i32 %91, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i53, i32 %92) #7
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %soc_no_adp_ctrl.i.i54 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 13
  %95 = ptrtoint ptr %soc_no_adp_ctrl.i.i54 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %soc_no_adp_ctrl.i.i54, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i.i55 = icmp eq i8 %96, 0
  br i1 %retval.0.i, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select.i.i50 = select i1 %tobool.not.i.i55, i32 16, i32 1
  %spec.select12.i.i51 = select i1 %tobool.not.i.i55, i32 1584, i32 1548
  %add.ptr.i4.i = getelementptr i8, ptr %94, i32 %spec.select12.i.i51
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #7, !srcloc !84
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %or.i5.i = or i32 %98, %spec.select.i.i50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i5.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %99) #7, !srcloc !90
  br label %cleanup

if.else22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select12.i.i56 = select i1 %tobool.not.i.i55, i32 1584, i32 1548
  %add.ptr.i6.i = getelementptr i8, ptr %94, i32 %spec.select12.i.i56
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #7, !srcloc !84
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %neg.i.i57 = select i1 %tobool.not.i.i55, i32 -17, i32 -2
  %and.i.i58 = and i32 %101, %neg.i.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %102 = tail call i32 @llvm.bswap.i32(i32 %and.i.i58) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %102) #7, !srcloc !90
  %extcon_host.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 10
  %103 = ptrtoint ptr %extcon_host.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %extcon_host.i, align 4
  %work.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %104 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %104, ptr noundef %work.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.then21, %if.else17, %if.then16, %rcar_gen3_check_id.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %rcar_gen3_is_any_rphy_initialized.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %rcar_gen3_check_id.exit.cleanup_crit_edge ], [ %count, %if.then21 ], [ %count, %if.else22 ], [ %count, %if.then16 ], [ %count, %if.else17 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_init(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ch = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %initialized.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.cond.i:                                       ; preds = %entry
  %initialized.1.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 3
  %8 = ptrtoint ptr %initialized.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %initialized.1.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end17_crit_edge

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.cond.1.i:                                     ; preds = %for.cond.i
  %initialized.2.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 3
  %10 = ptrtoint ptr %initialized.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized.2.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_is_any_rphy_initialized.exit, label %for.cond.1.i.if.end17_crit_edge

for.cond.1.i.if.end17_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

rcar_gen3_is_any_rphy_initialized.exit:           ; preds = %for.cond.1.i
  %initialized.3.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 3
  %12 = ptrtoint ptr %initialized.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initialized.3.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3.i.not = icmp eq i8 %13, 0
  br i1 %tobool.not.3.i.not, label %land.lhs.true, label %rcar_gen3_is_any_rphy_initialized.exit.if.end17_crit_edge

rcar_gen3_is_any_rphy_initialized.exit.if.end17_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  %irq = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true
  %work = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @rcar_gen3_phy_usb2_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rcar_gen3_phy_usb2_work, ptr %func, align 4
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %dev = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i65 = icmp eq ptr %25, null
  br i1 %tobool.not.i65, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %do.body.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @rcar_gen3_phy_usb2_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %do.end14, label %dev_name.exit.if.end17_crit_edge

dev_name.exit.if.end17_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %31) #10
  br label %cleanup

if.end17:                                         ; preds = %dev_name.exit.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %rcar_gen3_is_any_rphy_initialized.exit.if.end17_crit_edge, %for.cond.1.i.if.end17_crit_edge, %for.cond.i.if.end17_crit_edge, %entry.if.end17_crit_edge
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %int_enable_bits = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %int_enable_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_enable_bits, align 4
  %35 = or i32 %32, 134217728
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %or20 = or i32 %36, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or20)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %37) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %add.ptr28 = getelementptr i8, ptr %5, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1694347775) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %add.ptr32 = getelementptr i8, ptr %5, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1425473024) #7, !srcloc !90
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 11
  %38 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_otg_channel, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %if.end17.if.end37_crit_edge, label %if.then33

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end17
  %otg_initialized.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 0, i32 4
  %40 = ptrtoint ptr %otg_initialized.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %otg_initialized.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i66 = icmp eq i8 %41, 0
  br i1 %tobool.not.i66, label %for.cond.i68, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond.i68:                                     ; preds = %if.then33
  %otg_initialized.1.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 4
  %42 = ptrtoint ptr %otg_initialized.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %otg_initialized.1.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.1.i67 = icmp eq i8 %43, 0
  br i1 %tobool.not.1.i67, label %for.cond.1.i70, label %for.cond.i68.if.end36_crit_edge

for.cond.i68.if.end36_crit_edge:                  ; preds = %for.cond.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond.1.i70:                                   ; preds = %for.cond.i68
  %otg_initialized.2.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 4
  %44 = ptrtoint ptr %otg_initialized.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %otg_initialized.2.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.2.i69 = icmp eq i8 %45, 0
  br i1 %tobool.not.2.i69, label %rcar_gen3_needs_init_otg.exit, label %for.cond.1.i70.if.end36_crit_edge

for.cond.1.i70.if.end36_crit_edge:                ; preds = %for.cond.1.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

rcar_gen3_needs_init_otg.exit:                    ; preds = %for.cond.1.i70
  %otg_initialized.3.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 4
  %46 = ptrtoint ptr %otg_initialized.3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %otg_initialized.3.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.3.i71 = icmp eq i8 %47, 0
  br i1 %tobool.not.3.i71, label %if.then35, label %rcar_gen3_needs_init_otg.exit.if.end36_crit_edge

rcar_gen3_needs_init_otg.exit.if.end36_crit_edge: ; preds = %rcar_gen3_needs_init_otg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %rcar_gen3_needs_init_otg.exit
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 1552
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %51 = and i32 %50, -3841
  %52 = or i32 %51, 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #7, !srcloc !90
  %soc_no_adp_ctrl.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 13
  %53 = ptrtoint ptr %soc_no_adp_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %soc_no_adp_ctrl.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i74 = icmp eq i8 %54, 0
  br i1 %tobool.not.i74, label %if.then.i, label %if.then35.rcar_gen3_init_otg.exit_crit_edge

if.then35.rcar_gen3_init_otg.exit_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_init_otg.exit

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7.i = getelementptr i8, ptr %49, i32 1548
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %56 = and i32 %55, -65793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %57 = or i32 %56, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %57) #7, !srcloc !90
  %add.ptr19.i = getelementptr i8, ptr %49, i32 1584
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %59 = or i32 %58, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %59) #7, !srcloc !90
  br label %rcar_gen3_init_otg.exit

rcar_gen3_init_otg.exit:                          ; preds = %if.then.i, %if.then35.rcar_gen3_init_otg.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %add.ptr31.i = getelementptr i8, ptr %49, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 -1) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %obint_enable_bits.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 9
  %60 = ptrtoint ptr %obint_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %obint_enable_bits.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %add.ptr35.i = getelementptr i8, ptr %49, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %62) #7, !srcloc !90
  tail call fastcc void @rcar_gen3_device_recognition(ptr noundef %3) #7
  br label %if.end36

if.end36:                                         ; preds = %rcar_gen3_init_otg.exit, %rcar_gen3_needs_init_otg.exit.if.end36_crit_edge, %for.cond.1.i70.if.end36_crit_edge, %for.cond.i68.if.end36_crit_edge, %if.then33.if.end36_crit_edge
  %otg_initialized = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %otg_initialized to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %otg_initialized, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end17.if.end37_crit_edge
  %initialized = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end14
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call.i, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_exit(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ch = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %initialized = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %initialized, align 4
  %is_otg_channel = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %is_otg_channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_otg_channel, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %otg_initialized = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %otg_initialized to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %otg_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !84
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %int_enable_bits = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %int_enable_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_enable_bits, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %11, %neg
  %initialized.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %initialized.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge

if.end.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_is_any_rphy_initialized.exit.thread

for.cond.i:                                       ; preds = %if.end
  %initialized.1.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 3
  %16 = ptrtoint ptr %initialized.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %initialized.1.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.1.i = icmp eq i8 %17, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge

for.cond.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_is_any_rphy_initialized.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %initialized.2.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 3
  %18 = ptrtoint ptr %initialized.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initialized.2.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.2.i = icmp eq i8 %19, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_is_any_rphy_initialized.exit, label %for.cond.1.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge

for.cond.1.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_is_any_rphy_initialized.exit.thread

rcar_gen3_is_any_rphy_initialized.exit:           ; preds = %for.cond.1.i
  %initialized.3.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 3
  %20 = ptrtoint ptr %initialized.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %initialized.3.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.3.i.not = icmp eq i8 %21, 0
  %and5 = and i32 %and, -9
  br i1 %tobool.not.3.i.not, label %rcar_gen3_is_any_rphy_initialized.exit._crit_edge, label %rcar_gen3_is_any_rphy_initialized.exit.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge

rcar_gen3_is_any_rphy_initialized.exit.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gen3_is_any_rphy_initialized.exit.thread

rcar_gen3_is_any_rphy_initialized.exit._crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %22

rcar_gen3_is_any_rphy_initialized.exit.thread:    ; preds = %rcar_gen3_is_any_rphy_initialized.exit.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge, %for.cond.1.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge, %for.cond.i.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge, %if.end.rcar_gen3_is_any_rphy_initialized.exit.thread_crit_edge
  br label %22

22:                                               ; preds = %rcar_gen3_is_any_rphy_initialized.exit.thread, %rcar_gen3_is_any_rphy_initialized.exit._crit_edge
  %23 = phi i32 [ %and, %rcar_gen3_is_any_rphy_initialized.exit.thread ], [ %and5, %rcar_gen3_is_any_rphy_initialized.exit._crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %24) #7, !srcloc !90
  %irq = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp = icmp sgt i32 %26, -1
  br i1 %cmp, label %land.lhs.true, label %.if.end12_crit_edge

.if.end12_crit_edge:                              ; preds = %22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %22
  %27 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %initialized.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i26 = icmp eq i8 %28, 0
  br i1 %tobool.not.i26, label %for.cond.i29, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.i29:                                     ; preds = %land.lhs.true
  %initialized.1.i27 = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 3
  %29 = ptrtoint ptr %initialized.1.i27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %initialized.1.i27, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.1.i28 = icmp eq i8 %30, 0
  br i1 %tobool.not.1.i28, label %for.cond.1.i32, label %for.cond.i29.if.end12_crit_edge

for.cond.i29.if.end12_crit_edge:                  ; preds = %for.cond.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.1.i32:                                   ; preds = %for.cond.i29
  %initialized.2.i30 = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 3
  %31 = ptrtoint ptr %initialized.2.i30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %initialized.2.i30, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.2.i31 = icmp eq i8 %32, 0
  br i1 %tobool.not.2.i31, label %rcar_gen3_is_any_rphy_initialized.exit37, label %for.cond.1.i32.if.end12_crit_edge

for.cond.1.i32.if.end12_crit_edge:                ; preds = %for.cond.1.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

rcar_gen3_is_any_rphy_initialized.exit37:         ; preds = %for.cond.1.i32
  %initialized.3.i33 = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 3
  %33 = ptrtoint ptr %initialized.3.i33 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %initialized.3.i33, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.3.i34.not = icmp eq i8 %34, 0
  br i1 %tobool.not.3.i34.not, label %if.then9, label %rcar_gen3_is_any_rphy_initialized.exit37.if.end12_crit_edge

rcar_gen3_is_any_rphy_initialized.exit37.if.end12_crit_edge: ; preds = %rcar_gen3_is_any_rphy_initialized.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %rcar_gen3_is_any_rphy_initialized.exit37
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %3) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %rcar_gen3_is_any_rphy_initialized.exit37.if.end12_crit_edge, %for.cond.1.i32.if.end12_crit_edge, %for.cond.i29.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_phy_usb2_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon_host = getelementptr i8, ptr %work, i32 148
  %0 = ptrtoint ptr %extcon_host to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extcon_host, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %extcon3 = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %extcon3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extcon3, align 4
  %not.tobool.not = xor i1 %tobool.not, true
  %call4 = tail call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 2, i1 noundef zeroext %not.tobool.not) #7
  %4 = ptrtoint ptr %extcon3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extcon3, align 4
  %call6 = tail call i32 @extcon_set_state_sync(ptr noundef %5, i32 noundef 1, i1 noundef zeroext %tobool.not) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_irq(i32 noundef %irq, ptr noundef %_ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_ch, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %obint_enable_bits = getelementptr inbounds %struct.rcar_gen3_chan, ptr %_ch, i32 0, i32 9
  %4 = ptrtoint ptr %obint_enable_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obint_enable_bits, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %obint_enable_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obint_enable_bits, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !90
  tail call fastcc void @rcar_gen3_device_recognition(ptr noundef %_ch)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %do.body ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_gen3_device_recognition(ptr noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uses_otg_pins.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 12
  %0 = ptrtoint ptr %uses_otg_pins.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uses_otg_pins.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %rcar_gen3_check_id.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %soc_no_adp_ctrl.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 13
  %2 = ptrtoint ptr %soc_no_adp_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %soc_no_adp_ctrl.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch, align 4
  br i1 %tobool2.not.i, label %if.end7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 1552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.i.not = icmp eq i32 %7, 0
  br i1 %tobool5.i.not, label %if.then3.i.if.then_crit_edge, label %if.then3.i.if.else_crit_edge

if.then3.i.if.else_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then3.i.if.then_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end7.i:                                        ; preds = %if.end.i
  %add.ptr11.i = getelementptr i8, ptr %5, i32 1584
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %9 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.i.not = icmp eq i32 %9, 0
  br i1 %tobool16.i.not, label %if.end7.i.if.then_crit_edge, label %if.end7.i.if.else_crit_edge

if.end7.i.if.else_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rcar_gen3_check_id.exit:                          ; preds = %entry
  %dr_mode.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 7
  %10 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 1
  br i1 %cmp.i.not, label %rcar_gen3_check_id.exit.if.then_crit_edge, label %rcar_gen3_check_id.exit.if.else_crit_edge

rcar_gen3_check_id.exit.if.else_crit_edge:        ; preds = %rcar_gen3_check_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

rcar_gen3_check_id.exit.if.then_crit_edge:        ; preds = %rcar_gen3_check_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %rcar_gen3_check_id.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge, %if.then3.i.if.then_crit_edge
  %12 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 1552
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %15 = or i32 %14, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #7, !srcloc !90
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %17, i32 1536
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %19 = and i32 %18, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %19) #7, !srcloc !90
  %20 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch, align 4
  %soc_no_adp_ctrl.i.i = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 13
  %22 = ptrtoint ptr %soc_no_adp_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %soc_no_adp_ctrl.i.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 1
  %spec.select12.i.i = select i1 %tobool.not.i.i, i32 1584, i32 1548
  %add.ptr.i6.i = getelementptr i8, ptr %21, i32 %spec.select12.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #7, !srcloc !84
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %or.i7.i = or i32 %25, %spec.select.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i7.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %26) #7, !srcloc !90
  br label %if.end

if.else:                                          ; preds = %rcar_gen3_check_id.exit.if.else_crit_edge, %if.end7.i.if.else_crit_edge, %if.then3.i.if.else_crit_edge
  %27 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %28, i32 1552
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %30 = and i32 %29, -1281
  %31 = or i32 %30, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3, i32 %31) #7, !srcloc !90
  %32 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch, align 4
  %add.ptr.i5.i4 = getelementptr i8, ptr %33, i32 1536
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i4) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %35 = or i32 %34, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i4, i32 %35) #7, !srcloc !90
  %36 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch, align 4
  %soc_no_adp_ctrl.i.i5 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 13
  %38 = ptrtoint ptr %soc_no_adp_ctrl.i.i5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %soc_no_adp_ctrl.i.i5, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i6 = icmp eq i8 %39, 0
  %spec.select12.i.i7 = select i1 %tobool.not.i.i6, i32 1584, i32 1548
  %add.ptr.i6.i8 = getelementptr i8, ptr %37, i32 %spec.select12.i.i7
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i8) #7, !srcloc !84
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %neg.i.i = select i1 %tobool.not.i.i6, i32 -17, i32 -2
  %and.i.i = and i32 %41, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i8, i32 %42) #7, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then ]
  %extcon_host.i9 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 10
  %43 = ptrtoint ptr %extcon_host.i9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %extcon_host.i9, align 4
  %work.i10 = getelementptr inbounds %struct.rcar_gen3_chan, ptr %ch, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i.i11 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work.i10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_power_on(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ch = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %powered.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 0, i32 5
  %6 = ptrtoint ptr %powered.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %powered.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.i:                                       ; preds = %entry
  %powered.1.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 5
  %8 = ptrtoint ptr %powered.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %powered.1.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.out_crit_edge

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.1.i:                                     ; preds = %for.cond.i
  %powered.2.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 5
  %10 = ptrtoint ptr %powered.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %powered.2.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_are_all_rphys_power_off.exit, label %for.cond.1.i.out_crit_edge

for.cond.1.i.out_crit_edge:                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

rcar_gen3_are_all_rphys_power_off.exit:           ; preds = %for.cond.1.i
  %powered.3.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 5
  %12 = ptrtoint ptr %powered.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %powered.3.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3.i = icmp eq i8 %13, 0
  br i1 %tobool.not.3.i, label %if.end, label %rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge

rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge: ; preds = %rcar_gen3_are_all_rphys_power_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %rcar_gen3_are_all_rphys_power_off.exit
  %vbus = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regulator_enable(ptr noundef nonnull %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %17 = or i32 %16, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #7, !srcloc !90
  %18 = and i32 %16, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #7, !srcloc !90
  br label %out

out:                                              ; preds = %if.end8, %if.then2.out_crit_edge, %rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge, %for.cond.1.i.out_crit_edge, %for.cond.i.out_crit_edge, %entry.out_crit_edge
  %powered = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %powered, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb2_power_off(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ch = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %lock = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %powered = getelementptr inbounds %struct.rcar_gen3_phy, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %powered, align 2
  %powered.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %powered.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %powered.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.i:                                       ; preds = %entry
  %powered.1.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 1, i32 5
  %7 = ptrtoint ptr %powered.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %powered.1.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.1.i = icmp eq i8 %8, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.out_crit_edge

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.1.i:                                     ; preds = %for.cond.i
  %powered.2.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 2, i32 5
  %9 = ptrtoint ptr %powered.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %powered.2.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.2.i = icmp eq i8 %10, 0
  br i1 %tobool.not.2.i, label %rcar_gen3_are_all_rphys_power_off.exit, label %for.cond.1.i.out_crit_edge

for.cond.1.i.out_crit_edge:                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

rcar_gen3_are_all_rphys_power_off.exit:           ; preds = %for.cond.1.i
  %powered.3.i = getelementptr %struct.rcar_gen3_chan, ptr %3, i32 0, i32 3, i32 3, i32 5
  %11 = ptrtoint ptr %powered.3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %powered.3.i, align 2, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.3.i = icmp eq i8 %12, 0
  br i1 %tobool.not.3.i, label %if.end, label %rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge

rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge: ; preds = %rcar_gen3_are_all_rphys_power_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %rcar_gen3_are_all_rphys_power_off.exit
  %vbus = getelementptr inbounds %struct.rcar_gen3_chan, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %14) #7
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge, %for.cond.1.i.out_crit_edge, %for.cond.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.end.out_crit_edge ], [ 0, %rcar_gen3_are_all_rphys_power_off.exit.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %for.cond.i.out_crit_edge ], [ 0, %for.cond.1.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !66, !67, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_phy_rcar_gen3_usb2__293_778_rcar_gen3_phy_usb2_driver_init6, !1, !"__initcall__kmod_phy_rcar_gen3_usb2__293_778_rcar_gen3_phy_usb2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 778, i32 1}
!2 = !{ptr @__exitcall_rcar_gen3_phy_usb2_driver_exit, !1, !"__exitcall_rcar_gen3_phy_usb2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file294, !4, !"__UNIQUE_ID_file294", i1 false, i1 false}
!4 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 780, i32 1}
!5 = !{ptr @__UNIQUE_ID_license295, !4, !"__UNIQUE_ID_license295", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 781, i32 1}
!8 = !{ptr @__UNIQUE_ID_author297, !9, !"__UNIQUE_ID_author297", i1 false, i1 false}
!9 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 782, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 772, i32 12}
!12 = !{ptr @rcar_gen3_phy_usb2_driver, !13, !"rcar_gen3_phy_usb2_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 770, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 661, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_gen3_phy_usb2_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_gen3_phy_usb2_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 682, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 690, i32 4}
!26 = !{ptr @rcar_gen3_phy_usb2_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rcar_gen3_phy_usb2_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rcar_gen3_phy_usb2_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 711, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 716, i32 4}
!33 = !{ptr @rcar_gen3_phy_usb2_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rcar_gen3_phy_usb2_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 725, i32 51}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 739, i32 3}
!39 = !{ptr @rcar_gen3_phy_usb2_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rcar_gen3_phy_usb2_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rcar_gen3_phy_cable, !42, !"rcar_gen3_phy_cable", i1 false, i1 false}
!42 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 606, i32 27}
!43 = distinct !{null, !44, !"rcar_gen3_int_enable", i1 false, i1 false}
!44 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 94, i32 18}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 389, i32 8}
!47 = !{ptr @dev_attr_role, !46, !"dev_attr_role", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 386, i32 22}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 386, i32 54}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 387, i32 12}
!54 = !{ptr @rcar_gen3_phy_usb2_match_table, !55, !"rcar_gen3_phy_usb2_match_table", i1 false, i1 false}
!55 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 577, i32 34}
!56 = !{ptr @rz_g1c_phy_usb2_data, !57, !"rz_g1c_phy_usb2_data", i1 false, i1 false}
!57 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 567, i32 44}
!58 = !{ptr @rz_g1c_phy_usb2_ops, !59, !"rz_g1c_phy_usb2_ops", i1 false, i1 false}
!59 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 556, i32 29}
!60 = !{ptr @rcar_gen3_phy_usb2_init.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 443, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 447, i32 4}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rcar_gen3_phy_usb2_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rcar_gen3_phy_usb2_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rcar_gen3_phy_usb2_data, !69, !"rcar_gen3_phy_usb2_data", i1 false, i1 false}
!69 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 562, i32 44}
!70 = !{ptr @rcar_gen3_phy_usb2_ops, !71, !"rcar_gen3_phy_usb2_ops", i1 false, i1 false}
!71 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 548, i32 29}
!72 = !{ptr @rz_g2l_phy_usb2_data, !73, !"rz_g2l_phy_usb2_data", i1 false, i1 false}
!73 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb2.c", i32 572, i32 44}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{i64 4892942}
!85 = !{i64 2155274495}
!86 = !{i64 2155273353}
!87 = !{i64 2155273923}
!88 = !{i64 2155270284}
!89 = !{i64 2155270504}
!90 = !{i64 4892524}
!91 = !{i64 2155269387}
!92 = !{i64 2155269609}
!93 = !{i64 2155264752}
!94 = !{i64 2155266933}
!95 = !{i64 2155262112}
!96 = !{i64 2155264085}
!97 = !{i64 2155271171}
!98 = !{i64 2155271503}
!99 = !{i64 2155272260}
!100 = !{i64 2155272594}
!101 = !{i64 2155285636}
!102 = !{i64 2155285938}
!103 = !{i64 2155286351}
!104 = !{i64 2155286785}
!105 = !{i64 2155276448}
!106 = !{i64 2155277004}
!107 = !{i64 2155277671}
!108 = !{i64 2155278087}
!109 = !{i64 2155278844}
!110 = !{i64 2155279176}
!111 = !{i64 2155279668}
!112 = !{i64 2155280102}
!113 = !{i64 2155287473}
!114 = !{i64 2155287775}
!115 = !{i64 2155280823}
!116 = !{i64 2155282604}
!117 = !{i64 2155288484}
!118 = !{i64 2155288786}
!119 = !{i64 2155289263}
