; ModuleID = '/llk/IR_all_yes/drivers/phy/allwinner/phy-sun4i-usb.c_pt.bc'
source_filename = "../drivers/phy/allwinner/phy-sun4i-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sun4i_usb_phy_set_squelch_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_usb_phy_set_squelch_detect\09\09\09\09"
module asm "\09.long\09__crc_sun4i_usb_phy_set_squelch_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_usb_phy_set_squelch_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_usb_phy_set_squelch_detect\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_usb_phy_set_squelch_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sun4i_usb_phy_cfg = type { i32, i32, i32, i32, i8, i8, i8, i8, i32 }
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
%struct.sun4i_usb_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_usb_phy_data = type { ptr, ptr, i32, %struct.spinlock, [4 x %struct.sun4i_usb_phy], ptr, i8, ptr, ptr, ptr, %struct.notifier_block, i8, i8, i32, i32, i32, i32, %struct.delayed_work }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%union.power_supply_propval = type { i32 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_sun4i_usb_phy_set_squelch_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_usb_phy_set_squelch_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_usb_phy_set_squelch_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_usb_phy_set_squelch_detect to i32), ptr @__kstrtab_sun4i_usb_phy_set_squelch_detect, ptr @__kstrtabns_sun4i_usb_phy_set_squelch_detect }, section "___ksymtab_gpl+sun4i_usb_phy_set_squelch_detect", align 4
@__initcall__kmod_phy_sun4i_usb__294_998_sun4i_usb_phy_driver_init6 = internal global ptr @sun4i_usb_phy_driver_init, section ".initcall6.init", align 4
@sun4i_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_usb_phy_probe, ptr @sun4i_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_usb_phy_driver_exit = internal global ptr @sun4i_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [57 x i8] c"phy_sun4i_usb.description=Allwinner sun4i USB phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [57 x i8] c"phy_sun4i_usb.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [55 x i8] c"phy_sun4i_usb.file=drivers/phy/allwinner/phy-sun4i-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"phy_sun4i_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun4i-usb-phy\00", [18 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_cfg }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&data->detect)->work)\00", [54 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&data->detect)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb0_id_det\00", [20 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 709, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't request ID GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_usb_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/phy/allwinner/phy-sun4i-usb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr = internal global ptr @sun4i_usb_phy_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb0_vbus_det\00", [18 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 716, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't request VBUS detect GPIO\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.16 = internal global ptr @sun4i_usb_phy_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb0_vbus_power-supply\00", [41 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.10, i32 724, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't get the VBUS power supply\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.20 = internal global ptr @sun4i_usb_phy_probe._entry.18, section ".printk_index", align 4
@sun4i_usb_phy0_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.10, i32 736, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't allocate our extcon device\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.23 = internal global ptr @sun4i_usb_phy_probe._entry.21, section ".printk_index", align 4
@sun4i_usb_phy_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.10, i32 742, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register extcon: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.26 = internal global ptr @sun4i_usb_phy_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb%d_vbus\00", [21 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.10, i32 759, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't get regulator %s... Deferring probe\0A\00", [50 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.30 = internal global ptr @sun4i_usb_phy_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb%d_phy\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_phy\00", [24 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.10, i32 773, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get clock %s\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.35 = internal global ptr @sun4i_usb_phy_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb%d_hsic_12M\00", [17 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.10, i32 783, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.38 = internal global ptr @sun4i_usb_phy_probe._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb%d_reset\00", [20 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.9, ptr @.str.10, i32 791, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get reset %s\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.42 = internal global ptr @sun4i_usb_phy_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pmu%d\00", [26 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @sun4i_usb_phy_init, ptr @sun4i_usb_phy_exit, ptr @sun4i_usb_phy_power_on, ptr @sun4i_usb_phy_power_off, ptr @sun4i_usb_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.9, ptr @.str.10, i32 804, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to create PHY %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.46 = internal global ptr @sun4i_usb_phy_probe._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb0-id-det\00", [20 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.9, ptr @.str.10, i32 819, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Err requesting id-det-irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.50 = internal global ptr @sun4i_usb_phy_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb0-vbus-det\00", [18 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.9, ptr @.str.10, i32 831, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Err requesting vbus-det-irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_probe._entry_ptr.54 = internal global ptr @sun4i_usb_phy_probe._entry.52, section ".printk_index", align 4
@sun4i_usb_phy_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.9, ptr @.str.10, ptr @.str.56, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_sun4i_usb\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"successfully loaded\0A\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sun4i_usb_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.10, i32 435, ptr @.str.59, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"External vbus detected, not enabling our own vbus\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_usb_phy_power_on\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_power_on._entry_ptr = internal global ptr @sun4i_usb_phy_power_on._entry, section ".printk_index", align 4
@sun4i_usb_phy_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.10, i32 501, ptr @.str.62, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Changing dr_mode to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_usb_phy_set_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun4i_usb_phy_set_mode._entry_ptr = internal global ptr @sun4i_usb_phy_set_mode._entry, section ".printk_index", align 4
@sun4i_a10_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 0, i32 3, i8 4, i8 0, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun5i_a13_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 0, i32 2, i8 4, i8 0, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun6i_a31_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 1, i32 3, i8 4, i8 1, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun7i_a20_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 0, i32 2, i8 4, i8 0, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_a23_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 1, i32 3, i8 4, i8 1, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_a33_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 2, i32 3, i8 16, i8 1, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_a83t_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 3, i32 2, i32 3, i32 0, i8 16, i8 1, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_h3_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 4, i32 0, i32 4, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_r40_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 3, i32 0, i32 5, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun8i_v3s_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 1, i32 0, i32 6, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun50i_a64_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 2, i32 0, i32 7, i32 3, i8 16, i8 1, i8 1, i8 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun50i_h6_cfg = internal constant { %struct.sun4i_usb_phy_cfg, [40 x i8] } { %struct.sun4i_usb_phy_cfg { i32 4, i32 0, i32 8, i32 3, i8 16, i8 1, i8 0, i8 1, i32 6 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 8]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 11]
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"sun4i_usb_phy_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 990, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 995, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"sun4i_usb_phy_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 972, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 695, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 696, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 702, i32 59 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 706, i32 51 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 709, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 713, i32 53 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 716, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 720, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 724, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"sun4i_usb_phy0_cable\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 677, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 736, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 742, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 753, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 757, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 767, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 769, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 773, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 780, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 783, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 788, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 791, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 796, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"sun4i_usb_phy_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 520, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 804, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 817, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 819, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 829, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 831, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 855, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 435, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 501, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"sun4i_a10_cfg\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 860, i32 39 }
@___asan_gen_.249 = private unnamed_addr constant [14 x i8] c"sun5i_a13_cfg\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 869, i32 39 }
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"sun6i_a31_cfg\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 878, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"sun7i_a20_cfg\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 887, i32 39 }
@___asan_gen_.258 = private unnamed_addr constant [14 x i8] c"sun8i_a23_cfg\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 896, i32 39 }
@___asan_gen_.261 = private unnamed_addr constant [14 x i8] c"sun8i_a33_cfg\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 905, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant [15 x i8] c"sun8i_a83t_cfg\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 914, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"sun8i_h3_cfg\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 922, i32 39 }
@___asan_gen_.270 = private unnamed_addr constant [14 x i8] c"sun8i_r40_cfg\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 932, i32 39 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"sun8i_v3s_cfg\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 942, i32 39 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"sun50i_a64_cfg\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 952, i32 39 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"sun50i_h6_cfg\00", align 1
@___asan_gen_.280 = private constant [41 x i8] c"../drivers/phy/allwinner/phy-sun4i-usb.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 962, i32 39 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_sun4i_usb_phy_driver_exit, ptr @__initcall__kmod_phy_sun4i_usb__294_998_sun4i_usb_phy_driver_init6, ptr @__ksymtab_sun4i_usb_phy_set_squelch_detect, ptr @sun4i_usb_phy_driver_exit, ptr @sun4i_usb_phy_power_on._entry, ptr @sun4i_usb_phy_power_on._entry_ptr, ptr @sun4i_usb_phy_probe._entry, ptr @sun4i_usb_phy_probe._entry.14, ptr @sun4i_usb_phy_probe._entry.18, ptr @sun4i_usb_phy_probe._entry.21, ptr @sun4i_usb_phy_probe._entry.24, ptr @sun4i_usb_phy_probe._entry.28, ptr @sun4i_usb_phy_probe._entry.33, ptr @sun4i_usb_phy_probe._entry.37, ptr @sun4i_usb_phy_probe._entry.40, ptr @sun4i_usb_phy_probe._entry.44, ptr @sun4i_usb_phy_probe._entry.48, ptr @sun4i_usb_phy_probe._entry.52, ptr @sun4i_usb_phy_probe._entry_ptr, ptr @sun4i_usb_phy_probe._entry_ptr.16, ptr @sun4i_usb_phy_probe._entry_ptr.20, ptr @sun4i_usb_phy_probe._entry_ptr.23, ptr @sun4i_usb_phy_probe._entry_ptr.26, ptr @sun4i_usb_phy_probe._entry_ptr.30, ptr @sun4i_usb_phy_probe._entry_ptr.35, ptr @sun4i_usb_phy_probe._entry_ptr.38, ptr @sun4i_usb_phy_probe._entry_ptr.42, ptr @sun4i_usb_phy_probe._entry_ptr.46, ptr @sun4i_usb_phy_probe._entry_ptr.50, ptr @sun4i_usb_phy_probe._entry_ptr.54, ptr @sun4i_usb_phy_set_mode._entry, ptr @sun4i_usb_phy_set_mode._entry_ptr, ptr @sun4i_usb_phy_driver, ptr @.str, ptr @sun4i_usb_phy_of_match, ptr @sun4i_usb_phy_probe.__key, ptr @.str.1, ptr @sun4i_usb_phy_probe.__key.2, ptr @.str.3, ptr @sun4i_usb_phy_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @sun4i_usb_phy0_cable, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @sun4i_usb_phy_ops, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @sun4i_a10_cfg, ptr @sun5i_a13_cfg, ptr @sun6i_a31_cfg, ptr @sun7i_a20_cfg, ptr @sun8i_a23_cfg, ptr @sun8i_a33_cfg, ptr @sun8i_a83t_cfg, ptr @sun8i_h3_cfg, ptr @sun8i_r40_cfg, ptr @sun8i_v3s_cfg, ptr @sun50i_a64_cfg, ptr @sun50i_h6_cfg], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy0_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_usb_phy_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_usb_phy_set_squelch_detect(ptr nocapture noundef readonly %_phy, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cond = select i1 %enabled, i32 0, i32 2
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %1, i32 noundef 60, i32 noundef %cond, i32 noundef 2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_usb_phy_write(ptr noundef %phy, i32 noundef %addr, i32 noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %.neg = mul i32 %1, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %phy, i32 %idx.neg
  %mul = shl i32 %1, 1
  %shl = shl nuw i32 1, %mul
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %cfg = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 1
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %phyctl_offset = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %phyctl_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phyctl_offset, align 4
  %conv = zext i8 %7 to i32
  %add.ptr2 = getelementptr i8, ptr %3, i32 %conv
  %reg_lock = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #9
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %phyctl_offset10 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %phyctl_offset10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phyctl_offset10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cmp12 = icmp eq i8 %11, 16
  br i1 %cmp12, label %do.body14, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #9, !srcloc !155
  br label %if.end

if.end:                                           ; preds = %do.body14, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1795 = icmp sgt i32 %len, 0
  br i1 %cmp1795, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %neg = xor i32 %shl, -1
  %12 = trunc i32 %shl to i8
  %13 = trunc i32 %neg to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data.addr.097 = phi i32 [ %data, %for.body.lr.ph ], [ %shr, %for.body.for.body_crit_edge ]
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %15 = and i32 %14, -16711681
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add = add i32 %i.096, %addr
  %shl22 = shl i32 %add, 8
  %or = or i32 %16, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %17) #9, !srcloc !155
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %conv31 = zext i8 %18 to i32
  %and32 = and i32 %data.addr.097, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool.not = icmp eq i32 %and32, 0
  %or34 = or i32 %conv31, 128
  %and35 = and i32 %conv31, 127
  %temp.0 = select i1 %tobool.not, i32 %and35, i32 %or34
  %and37 = and i32 %temp.0, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %conv41 = trunc i32 %and37 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv41) #9, !srcloc !162
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %conv52 = or i8 %19, %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv52) #9, !srcloc !162
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %conv64 = and i8 %20, %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv64) #9, !srcloc !162
  %shr = lshr i32 %data.addr.097, 1
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_usb_phy_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_usb_phy_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_usb_phy_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 336, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup255_crit_edge, label %do.body

entry.cleanup255_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup255

do.body:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sun4i_usb_phy_probe.__key, i16 noundef signext 3) #9
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %detect, i32 noundef 0) #9
  %2 = ptrtoint ptr %detect to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %detect, align 4
  %lockdep_map = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @sun4i_usb_phy_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17, i32 0, i32 1
  %3 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sun4i_usb_phy0_id_vbus_det_scan, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @sun4i_usb_phy_probe.__key.4) #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %cfg = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %cfg, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.body.cleanup255_crit_edge, label %if.end27

do.body.cleanup255_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup255

if.end27:                                         ; preds = %do.body
  %call28 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call28 to i32
  br label %cleanup255

if.end34:                                         ; preds = %if.end27
  %call35 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 1) #9
  %id_det_gpio = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %id_det_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %id_det_gpio, align 4
  %cmp.i392 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i392, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  %11 = ptrtoint ptr %id_det_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id_det_gpio, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup255

if.end44:                                         ; preds = %if.end34
  %call45 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 1) #9
  %vbus_det_gpio = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %vbus_det_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call45, ptr %vbus_det_gpio, align 4
  %cmp.i393 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  %15 = ptrtoint ptr %vbus_det_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbus_det_gpio, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup255

if.end54:                                         ; preds = %if.end44
  %call55 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #9
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end54.if.end72_crit_edge, label %if.then57

if.end54.if.end72_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then57:                                        ; preds = %if.end54
  %call58 = tail call ptr @devm_power_supply_get_by_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  %vbus_power_supply = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %vbus_power_supply to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call58, ptr %vbus_power_supply, align 4
  %cmp.i394 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i394, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  %19 = ptrtoint ptr %vbus_power_supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vbus_power_supply, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup255

if.end67:                                         ; preds = %if.then57
  %tobool69.not = icmp eq ptr %call58, null
  br i1 %tobool69.not, label %if.end67.cleanup255_crit_edge, label %if.end67.if.end72_crit_edge

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end67.cleanup255_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup255

if.end72:                                         ; preds = %if.end67.if.end72_crit_edge, %if.end54.if.end72_crit_edge
  %call73 = tail call i32 @of_usb_get_dr_mode_by_phy(ptr noundef %1, i32 noundef 0) #9
  %dr_mode = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call73, ptr %dr_mode, align 4
  %call74 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev1, ptr noundef nonnull @sun4i_usb_phy0_cable) #9
  %extcon = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call74, ptr %extcon, align 4
  %cmp.i395 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i395, label %do.end80, label %if.end83

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  %24 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extcon, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup255

if.end83:                                         ; preds = %if.end72
  %call85 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev1, ptr noundef %call74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.cond.preheader, label %do.end90

for.cond.preheader:                               ; preds = %if.end83
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp444 = icmp sgt i32 %30, 0
  br i1 %cmp444, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phys = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 4
  br label %for.body

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call85) #12
  br label %cleanup255

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %31 = phi ptr [ %28, %for.body.lr.ph ], [ %70, %for.inc.for.body_crit_edge ]
  %i.0445 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %missing_phys = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %31, i32 0, i32 8
  %32 = call ptr @memset(ptr %name, i32 255, i32 16)
  %33 = ptrtoint ptr %missing_phys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %missing_phys, align 4
  %shl = shl nuw i32 1, %i.0445
  %and = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool94.not = icmp eq i32 %and, 0
  br i1 %tobool94.not, label %if.end96, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end96:                                         ; preds = %for.body
  %call98 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %i.0445)
  %call100 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull %name) #9
  %vbus = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 2
  %35 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call100, ptr %vbus, align 4
  %cmp.i396 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i396, label %if.then103, label %if.end96.if.end114_crit_edge

if.end96.if.end114_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then103:                                       ; preds = %if.end96
  %cmp106 = icmp eq ptr %call100, inttoptr (i32 -517 to ptr)
  br i1 %cmp106, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull %name) #12
  br label %cleanup.thread

if.end112:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %vbus, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end112, %if.end96.if.end114_crit_edge
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg, align 4
  %dedicated_clocks = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %dedicated_clocks to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dedicated_clocks, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool116.not = icmp eq i8 %40, 0
  br i1 %tobool116.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %call119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %i.0445)
  br label %if.end122

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef nonnull @.str.32, i32 noundef 16) #9
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then117
  %call124 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #9
  %clk = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 4
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call124, ptr %clk, align 4
  %cmp.i397 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i397, label %do.end130, label %if.end134

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull %name) #12
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup.thread

if.end134:                                        ; preds = %if.end122
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg, align 4
  %hsic_index = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %hsic_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hsic_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool136.not = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0445, i32 %48)
  %cmp139 = icmp eq i32 %i.0445, %48
  %or.cond = select i1 %tobool136.not, i1 %cmp139, i1 false
  br i1 %or.cond, label %if.then140, label %if.end134.if.end155_crit_edge

if.end134.if.end155_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then140:                                       ; preds = %if.end134
  %call142 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %i.0445)
  %call144 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #9
  %clk2 = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 5
  %49 = ptrtoint ptr %clk2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call144, ptr %clk2, align 4
  %cmp.i398 = icmp ugt ptr %call144, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i398, label %do.end150, label %if.then140.if.end155_crit_edge

if.then140.if.end155_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

do.end150:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull %name) #12
  %50 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk2, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %cleanup.thread

if.end155:                                        ; preds = %if.then140.if.end155_crit_edge, %if.end134.if.end155_crit_edge
  %call157 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.0445)
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull %name, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %reset = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 3
  %53 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i399 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i399, label %do.end165, label %if.end169

do.end165:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull %name) #12
  %54 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reset, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup.thread

if.end169:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0445)
  %tobool170.not = icmp eq i32 %i.0445, 0
  br i1 %tobool170.not, label %lor.lhs.false, label %if.end169.if.then173_crit_edge

if.end169.if.then173_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

lor.lhs.false:                                    ; preds = %if.end169
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg, align 4
  %phy0_dual_route = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %phy0_dual_route to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %phy0_dual_route, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool172.not = icmp eq i8 %60, 0
  br i1 %tobool172.not, label %lor.lhs.false.if.end184_crit_edge, label %lor.lhs.false.if.then173_crit_edge

lor.lhs.false.if.then173_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

lor.lhs.false.if.end184_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then173:                                       ; preds = %lor.lhs.false.if.then173_crit_edge, %if.end169.if.then173_crit_edge
  %call175 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.43, i32 noundef %i.0445)
  %call177 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull %name) #9
  %pmu = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 1
  %61 = ptrtoint ptr %pmu to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call177, ptr %pmu, align 4
  %cmp.i400 = icmp ugt ptr %call177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.then180, label %if.then173.if.end184_crit_edge

if.then173.if.end184_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then180:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call177 to i32
  br label %cleanup.thread

if.end184:                                        ; preds = %if.then173.if.end184_crit_edge, %lor.lhs.false.if.end184_crit_edge
  %call185 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @sun4i_usb_phy_ops) #9
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call185, ptr %add.ptr, align 4
  %cmp.i401 = icmp ugt ptr %call185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %do.end192, label %if.end195

do.end192:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %i.0445) #12
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %cleanup.thread

if.end195:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr %struct.sun4i_usb_phy, ptr %phys, i32 %i.0445, i32 7
  %67 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.0445, ptr %index, align 4
  %arrayidx = getelementptr %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 4, i32 %i.0445
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call185, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end192, %if.then180, %do.end165, %do.end150, %do.end130, %do.end110
  %retval.1.ph = phi i32 [ %66, %do.end192 ], [ %62, %if.then180 ], [ %56, %do.end165 ], [ %52, %do.end150 ], [ %44, %do.end130 ], [ -517, %do.end110 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  br label %cleanup255

for.inc:                                          ; preds = %if.end195, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  %inc = add nuw nsw i32 %i.0445, 1
  %69 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %cmp = icmp slt i32 %inc, %72
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %73 = ptrtoint ptr %id_det_gpio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %id_det_gpio, align 4
  %call200 = call i32 @gpiod_to_irq(ptr noundef %74) #9
  %id_det_irq = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 13
  %75 = ptrtoint ptr %id_det_irq to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call200, ptr %id_det_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp202 = icmp sgt i32 %call200, 0
  br i1 %cmp202, label %if.then203, label %for.end.if.end212_crit_edge

for.end.if.end212_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.then203:                                       ; preds = %for.end
  %call.i402 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call200, ptr noundef nonnull @sun4i_usb_phy0_id_vbus_det_irq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i402)
  %tobool206.not = icmp eq i32 %call.i402, 0
  br i1 %tobool206.not, label %if.then203.if.end212_crit_edge, label %do.end210

if.then203.if.end212_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

do.end210:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %call.i402) #12
  br label %cleanup255

if.end212:                                        ; preds = %if.then203.if.end212_crit_edge, %for.end.if.end212_crit_edge
  %76 = ptrtoint ptr %vbus_det_gpio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vbus_det_gpio, align 4
  %call214 = call i32 @gpiod_to_irq(ptr noundef %77) #9
  %vbus_det_irq = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 14
  %78 = ptrtoint ptr %vbus_det_irq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call214, ptr %vbus_det_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp216 = icmp sgt i32 %call214, 0
  br i1 %cmp216, label %if.then217, label %if.end212.if.end228_crit_edge

if.end212.if.end228_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then217:                                       ; preds = %if.end212
  %call.i403 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call214, ptr noundef nonnull @sun4i_usb_phy0_id_vbus_det_irq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403)
  %tobool220.not = icmp eq i32 %call.i403, 0
  br i1 %tobool220.not, label %if.then217.if.end228_crit_edge, label %do.end224

if.then217.if.end228_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

do.end224:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53, i32 noundef %call.i403) #12
  %79 = ptrtoint ptr %vbus_det_irq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %vbus_det_irq, align 4
  %call226 = call i32 @sun4i_usb_phy_remove(ptr noundef %pdev)
  br label %cleanup255

if.end228:                                        ; preds = %if.then217.if.end228_crit_edge, %if.end212.if.end228_crit_edge
  %vbus_power_supply229 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 9
  %80 = ptrtoint ptr %vbus_power_supply229 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vbus_power_supply229, align 4
  %tobool230.not = icmp eq ptr %81, null
  br i1 %tobool230.not, label %if.end228.if.end239_crit_edge, label %if.then231

if.end228.if.end239_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then231:                                       ; preds = %if.end228
  %vbus_power_nb = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 10
  %82 = ptrtoint ptr %vbus_power_nb to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @sun4i_usb_phy0_vbus_notify, ptr %vbus_power_nb, align 4
  %priority = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 10, i32 2
  %83 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %priority, align 4
  %call234 = call i32 @power_supply_reg_notifier(ptr noundef %vbus_power_nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end238, label %if.then236

if.then236:                                       ; preds = %if.then231
  %84 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i, align 4
  %vbus_power_nb_registered.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %vbus_power_nb_registered.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %vbus_power_nb_registered.i, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i, label %if.then236.if.end.i_crit_edge, label %if.then.i

if.then236.if.end.i_crit_edge:                    ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_power_nb.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %85, i32 0, i32 10
  call void @power_supply_unreg_notifier(ptr noundef %vbus_power_nb.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then236.if.end.i_crit_edge
  %id_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %85, i32 0, i32 13
  %88 = ptrtoint ptr %id_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i405 = icmp sgt i32 %89, 0
  br i1 %cmp.i405, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @devm_free_irq(ptr noundef %dev1, i32 noundef %89, ptr noundef %85) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %vbus_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %85, i32 0, i32 14
  %90 = ptrtoint ptr %vbus_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vbus_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp5.i = icmp sgt i32 %91, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.sun4i_usb_phy_remove.exit_crit_edge

if.end4.i.sun4i_usb_phy_remove.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy_remove.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @devm_free_irq(ptr noundef %dev1, i32 noundef %91, ptr noundef %85) #9
  br label %sun4i_usb_phy_remove.exit

sun4i_usb_phy_remove.exit:                        ; preds = %if.then6.i, %if.end4.i.sun4i_usb_phy_remove.exit_crit_edge
  %detect.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %85, i32 0, i32 17
  %call9.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect.i) #9
  br label %cleanup255

if.end238:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_power_nb_registered = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %call.i, i32 0, i32 11
  %92 = ptrtoint ptr %vbus_power_nb_registered to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %vbus_power_nb_registered, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.end228.if.end239_crit_edge
  %call240 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @sun4i_usb_phy_xlate) #9
  %cmp.i406 = icmp ugt ptr %call240, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i406, label %if.then242, label %do.body246

if.then242:                                       ; preds = %if.end239
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i, align 4
  %vbus_power_nb_registered.i409 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %vbus_power_nb_registered.i409 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %vbus_power_nb_registered.i409, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i410 = icmp eq i8 %96, 0
  br i1 %tobool.not.i410, label %if.then242.if.end.i415_crit_edge, label %if.then.i412

if.then242.if.end.i415_crit_edge:                 ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i415

if.then.i412:                                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_power_nb.i411 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %94, i32 0, i32 10
  call void @power_supply_unreg_notifier(ptr noundef %vbus_power_nb.i411) #9
  br label %if.end.i415

if.end.i415:                                      ; preds = %if.then.i412, %if.then242.if.end.i415_crit_edge
  %id_det_irq.i413 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %94, i32 0, i32 13
  %97 = ptrtoint ptr %id_det_irq.i413 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id_det_irq.i413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i414 = icmp sgt i32 %98, 0
  br i1 %cmp.i414, label %if.then2.i416, label %if.end.i415.if.end4.i419_crit_edge

if.end.i415.if.end4.i419_crit_edge:               ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i419

if.then2.i416:                                    ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #11
  call void @devm_free_irq(ptr noundef %dev1, i32 noundef %98, ptr noundef %94) #9
  br label %if.end4.i419

if.end4.i419:                                     ; preds = %if.then2.i416, %if.end.i415.if.end4.i419_crit_edge
  %vbus_det_irq.i417 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %94, i32 0, i32 14
  %99 = ptrtoint ptr %vbus_det_irq.i417 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vbus_det_irq.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp5.i418 = icmp sgt i32 %100, 0
  br i1 %cmp5.i418, label %if.then6.i420, label %if.end4.i419.sun4i_usb_phy_remove.exit423_crit_edge

if.end4.i419.sun4i_usb_phy_remove.exit423_crit_edge: ; preds = %if.end4.i419
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy_remove.exit423

if.then6.i420:                                    ; preds = %if.end4.i419
  call void @__sanitizer_cov_trace_pc() #11
  call void @devm_free_irq(ptr noundef %dev1, i32 noundef %100, ptr noundef %94) #9
  br label %sun4i_usb_phy_remove.exit423

sun4i_usb_phy_remove.exit423:                     ; preds = %if.then6.i420, %if.end4.i419.sun4i_usb_phy_remove.exit423_crit_edge
  %detect.i421 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %94, i32 0, i32 17
  %call9.i422 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect.i421) #9
  %101 = ptrtoint ptr %call240 to i32
  br label %cleanup255

do.body246:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_usb_phy_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_usb_phy_probe, %if.then251)) #9
          to label %cleanup255 [label %if.then251], !srcloc !168

if.then251:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_usb_phy_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.56) #9
  br label %cleanup255

cleanup255:                                       ; preds = %if.then251, %do.body246, %sun4i_usb_phy_remove.exit423, %sun4i_usb_phy_remove.exit, %do.end224, %do.end210, %cleanup.thread, %do.end90, %do.end80, %if.end67.cleanup255_crit_edge, %do.end64, %do.end51, %do.end41, %if.then31, %do.body.cleanup255_crit_edge, %entry.cleanup255_crit_edge
  %retval.2 = phi i32 [ %9, %if.then31 ], [ %13, %do.end41 ], [ %17, %do.end51 ], [ %21, %do.end64 ], [ %26, %do.end80 ], [ %call85, %do.end90 ], [ %call.i402, %do.end210 ], [ %call.i403, %do.end224 ], [ %call234, %sun4i_usb_phy_remove.exit ], [ %101, %sun4i_usb_phy_remove.exit423 ], [ -12, %entry.cleanup255_crit_edge ], [ -22, %do.body.cleanup255_crit_edge ], [ -517, %if.end67.cleanup255_crit_edge ], [ 0, %if.then251 ], [ %retval.1.ph, %cleanup.thread ], [ 0, %do.body246 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vbus_power_nb_registered = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vbus_power_nb_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vbus_power_nb_registered, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_power_nb = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 10
  tail call void @power_supply_unreg_notifier(ptr noundef %vbus_power_nb) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id_det_irq = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %id_det_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id_det_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %5, ptr noundef %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %vbus_det_irq = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %vbus_det_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbus_det_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %7, ptr noundef %1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 17
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_usb_phy0_id_vbus_det_scan(ptr noundef %work) #0 align 64 {
entry:
  %val.i = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -236
  %phys = getelementptr i8, ptr %work, i32 -180
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dr_mode.i = getelementptr i8, ptr %work, i32 -228
  %4 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dr_mode.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %if.end.sun4i_usb_phy0_get_id_det.exit_crit_edge
  ]

if.end.sun4i_usb_phy0_get_id_det.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_get_id_det.exit

sw.bb.i:                                          ; preds = %if.end
  %id_det_gpio.i = getelementptr i8, ptr %work, i32 -44
  %7 = ptrtoint ptr %id_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id_det_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.i.sun4i_usb_phy0_get_id_det.exit_crit_edge, label %if.then.i

sw.bb.i.sun4i_usb_phy0_get_id_det.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_get_id_det.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %8) #9
  br label %sun4i_usb_phy0_get_id_det.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_get_id_det.exit

sun4i_usb_phy0_get_id_det.exit:                   ; preds = %sw.default.i, %if.then.i, %sw.bb.i.sun4i_usb_phy0_get_id_det.exit_crit_edge, %if.end.sun4i_usb_phy0_get_id_det.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ %call.i, %if.then.i ], [ 1, %sw.bb.i.sun4i_usb_phy0_get_id_det.exit_crit_edge ], [ 0, %if.end.sun4i_usb_phy0_get_id_det.exit_crit_edge ]
  %vbus_det_gpio.i = getelementptr i8, ptr %work, i32 -40
  %9 = ptrtoint ptr %vbus_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbus_det_gpio.i, align 4
  %tobool.not.i107 = icmp eq ptr %10, null
  br i1 %tobool.not.i107, label %if.end.i, label %if.then.i109

if.then.i109:                                     ; preds = %sun4i_usb_phy0_get_id_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i108 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %10) #9
  br label %sun4i_usb_phy0_get_vbus_det.exit

if.end.i:                                         ; preds = %sun4i_usb_phy0_get_id_det.exit
  %vbus_power_supply.i = getelementptr i8, ptr %work, i32 -36
  %11 = ptrtoint ptr %vbus_power_supply.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbus_power_supply.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end.i.sun4i_usb_phy0_get_vbus_det.exit_crit_edge, label %if.then3.i

if.end.i.sun4i_usb_phy0_get_vbus_det.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_get_vbus_det.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !169
  %call5.i = call i32 @power_supply_get_property(ptr noundef nonnull %12, i32 noundef 3, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %sun4i_usb_phy0_get_vbus_det.exit

cleanup.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %sun4i_usb_phy0_get_vbus_det.exit

sun4i_usb_phy0_get_vbus_det.exit:                 ; preds = %cleanup.i, %cleanup.thread.i, %if.end.i.sun4i_usb_phy0_get_vbus_det.exit_crit_edge, %if.then.i109
  %retval.1.i = phi i32 [ %call.i108, %if.then.i109 ], [ %15, %cleanup.i ], [ 1, %cleanup.thread.i ], [ 1, %if.end.i.sun4i_usb_phy0_get_vbus_det.exit_crit_edge ]
  %mutex = getelementptr inbounds %struct.phy, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %phy0_init = getelementptr i8, ptr %work, i32 -48
  %16 = ptrtoint ptr %phy0_init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phy0_init, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sun4i_usb_phy0_get_vbus_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end7:                                          ; preds = %sun4i_usb_phy0_get_vbus_det.exit
  %force_session_end8 = getelementptr i8, ptr %work, i32 -19
  %18 = ptrtoint ptr %force_session_end8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %force_session_end8, align 1, !range !167
  store i8 0, ptr %force_session_end8, align 1
  %id_det11 = getelementptr i8, ptr %work, i32 -8
  %20 = ptrtoint ptr %id_det11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id_det11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %21)
  %cmp.not = icmp eq i32 %retval.0.i, %21
  br i1 %cmp.not, label %if.end7.if.end23_crit_edge, label %if.then12

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then12:                                        ; preds = %if.end7
  %22 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp13 = icmp eq i32 %23, 3
  br i1 %cmp13, label %land.lhs.true, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then12
  %24 = ptrtoint ptr %vbus_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbus_det_gpio.i, align 4
  %tobool.not.i111 = icmp eq ptr %25, null
  br i1 %tobool.not.i111, label %sun4i_usb_phy0_have_vbus_det.exit, label %land.lhs.true.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge

land.lhs.true.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_have_vbus_det.exit.thread

sun4i_usb_phy0_have_vbus_det.exit:                ; preds = %land.lhs.true
  %vbus_power_supply.i112 = getelementptr i8, ptr %work, i32 -36
  %26 = ptrtoint ptr %vbus_power_supply.i112 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus_power_supply.i112, align 4
  %tobool1.i.not = icmp eq ptr %27, null
  br i1 %tobool1.i.not, label %sun4i_usb_phy0_have_vbus_det.exit.if.end16_crit_edge, label %sun4i_usb_phy0_have_vbus_det.exit.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge

sun4i_usb_phy0_have_vbus_det.exit.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge: ; preds = %sun4i_usb_phy0_have_vbus_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy0_have_vbus_det.exit.thread

sun4i_usb_phy0_have_vbus_det.exit.if.end16_crit_edge: ; preds = %sun4i_usb_phy0_have_vbus_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

sun4i_usb_phy0_have_vbus_det.exit.thread:         ; preds = %sun4i_usb_phy0_have_vbus_det.exit.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge, %land.lhs.true.sun4i_usb_phy0_have_vbus_det.exit.thread_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %sun4i_usb_phy0_have_vbus_det.exit.thread, %sun4i_usb_phy0_have_vbus_det.exit.if.end16_crit_edge, %if.then12.if.end16_crit_edge
  %force_session_end.0 = phi i8 [ %19, %if.then12.if.end16_crit_edge ], [ %19, %sun4i_usb_phy0_have_vbus_det.exit.thread ], [ 1, %sun4i_usb_phy0_have_vbus_det.exit.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %force_session_end.0)
  %tobool17.not = icmp ne i8 %force_session_end.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %tobool17.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.then20, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i, align 4
  %.neg.i.i = mul i32 %31, -32
  %idx.neg.i.i = add i32 %.neg.i.i, -56
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %idx.neg.i.i
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %35 = and i32 %34, -3145729
  %36 = or i32 %35, 2097152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !155
  call void @msleep(i32 noundef 200) #9
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i114 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %index.i.i114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i.i114, align 4
  %.neg.i.i115 = mul i32 %42, -32
  %idx.neg.i.i116 = add i32 %.neg.i.i115, -56
  %add.ptr.i.i117 = getelementptr i8, ptr %40, i32 %idx.neg.i.i116
  %43 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i117, align 4
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %46 = or i32 %45, 3145728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i117, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !155
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %..i = select i1 %cmp19, i32 32768, i32 49152
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i121 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %index.i.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i.i121, align 4
  %.neg.i.i122 = mul i32 %52, -32
  %idx.neg.i.i123 = add i32 %.neg.i.i122, -56
  %add.ptr.i.i124 = getelementptr i8, ptr %50, i32 %idx.neg.i.i123
  %53 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i.i124, align 4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %56 = and i32 %55, -12582913
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  %or.i.i125 = or i32 %57, %..i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %58 = call i32 @llvm.bswap.i32(i32 %or.i.i125) #9
  %59 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i.i124, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #9, !srcloc !155
  %61 = ptrtoint ptr %id_det11 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i, ptr %id_det11, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end7.if.end23_crit_edge
  %force_session_end.1.off0.in = phi i8 [ %force_session_end.0, %if.end21 ], [ %19, %if.end7.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %force_session_end.1.off0.in)
  %force_session_end.1.off0.not = icmp ne i8 %force_session_end.1.off0.in, 0
  %vbus_det24 = getelementptr i8, ptr %work, i32 -4
  %62 = ptrtoint ptr %vbus_det24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vbus_det24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %63)
  %cmp25.not = icmp eq i32 %retval.1.i, %63
  br i1 %cmp25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not.i126 = icmp eq i32 %retval.1.i, 0
  %..i127 = select i1 %tobool.not.i126, i32 8192, i32 12288
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i129 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %index.i.i129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i.i129, align 4
  %.neg.i.i130 = mul i32 %67, -32
  %idx.neg.i.i131 = add i32 %.neg.i.i130, -56
  %add.ptr.i.i132 = getelementptr i8, ptr %65, i32 %idx.neg.i.i131
  %68 = ptrtoint ptr %add.ptr.i.i132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i132, align 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %71 = and i32 %70, -3145729
  %72 = call i32 @llvm.bswap.i32(i32 %71) #9
  %or.i.i133 = or i32 %72, %..i127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %73 = call i32 @llvm.bswap.i32(i32 %or.i.i133) #9
  %74 = ptrtoint ptr %add.ptr.i.i132 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i.i132, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #9, !srcloc !155
  %76 = ptrtoint ptr %vbus_det24 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.1.i, ptr %vbus_det24, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br i1 %cmp.not, label %if.end28.if.end46_crit_edge, label %if.then31

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then31:                                        ; preds = %if.end28
  %extcon = getelementptr i8, ptr %work, i32 -52
  %77 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extcon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool32.not = icmp eq i32 %retval.0.i, 0
  %call33 = call i32 @extcon_set_state_sync(ptr noundef %78, i32 noundef 2, i1 noundef zeroext %tobool32.not) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp36 = icmp eq i32 %retval.0.i, 1
  %or.cond106 = select i1 %force_session_end.1.off0.not, i1 %cmp36, i1 false
  br i1 %or.cond106, label %if.then37, label %if.then31.if.end40_crit_edge

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i135 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %index.i.i135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i.i135, align 4
  %.neg.i.i136 = mul i32 %82, -32
  %idx.neg.i.i137 = add i32 %.neg.i.i136, -56
  %add.ptr.i.i138 = getelementptr i8, ptr %80, i32 %idx.neg.i.i137
  %83 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i.i138, align 4
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %86 = and i32 %85, -3145729
  %87 = or i32 %86, 2097152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i.i138, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #9, !srcloc !155
  call void @msleep(i32 noundef 1000) #9
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i, align 4
  %index.i.i141 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %index.i.i141 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %index.i.i141, align 4
  %.neg.i.i142 = mul i32 %93, -32
  %idx.neg.i.i143 = add i32 %.neg.i.i142, -56
  %add.ptr.i.i144 = getelementptr i8, ptr %91, i32 %idx.neg.i.i143
  %94 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i.i144, align 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %97 = or i32 %96, 3145728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  call void @arm_heavy_mb() #9
  %98 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i144, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #9, !srcloc !155
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then31.if.end40_crit_edge
  %pmu.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 1
  %100 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pmu.i, align 4
  %tobool.not.i146 = icmp eq ptr %101, null
  br i1 %tobool.not.i146, label %if.end40.sun4i_usb_phy_passby.exit_crit_edge, label %if.end.i148

if.end40.sun4i_usb_phy_passby.exit_crit_edge:     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy_passby.exit

if.end.i148:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %index.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %3, i32 0, i32 7
  %102 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %103, -32
  %idx.neg.i = add i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %3, i32 %idx.neg.i
  %cfg.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr.i, i32 0, i32 1
  %104 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i, align 4
  %type.i = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp.i147 = icmp eq i32 %107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp2.i = icmp eq i32 %103, 2
  %or.cond.i = select i1 %cmp.i147, i1 %cmp2.i, i1 false
  %bits.0.i = select i1 %or.cond.i, i32 1115907, i32 1793
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %101) #9, !srcloc !156
  %109 = call i32 @llvm.bswap.i32(i32 %108) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %or10.i = or i32 %bits.0.i, %109
  %neg.i = xor i32 %bits.0.i, -1
  %and.i = and i32 %109, %neg.i
  %reg_value.0.i = select i1 %tobool32.not, i32 %or10.i, i32 %and.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @arm_heavy_mb() #9
  %110 = call i32 @llvm.bswap.i32(i32 %reg_value.0.i) #9
  %111 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pmu.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #9, !srcloc !155
  br label %sun4i_usb_phy_passby.exit

sun4i_usb_phy_passby.exit:                        ; preds = %if.end.i148, %if.end40.sun4i_usb_phy_passby.exit_crit_edge
  %cfg = getelementptr i8, ptr %work, i32 -232
  %113 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg, align 4
  %phy0_dual_route = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %phy0_dual_route to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %phy0_dual_route, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool43.not = icmp eq i8 %116, 0
  br i1 %tobool43.not, label %sun4i_usb_phy_passby.exit.if.end46_crit_edge, label %if.then44

sun4i_usb_phy_passby.exit.if.end46_crit_edge:     ; preds = %sun4i_usb_phy_passby.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %sun4i_usb_phy_passby.exit
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i150 = getelementptr i8, ptr %118, i32 32
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.i151 = icmp ne i32 %retval.0.i, 0
  %120 = and i32 %119, -16777217
  %121 = call i32 @llvm.bswap.i32(i32 %120) #9
  %masksel.i = zext i1 %cmp.i151 to i32
  %regval.0.i = or i32 %121, %masksel.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  call void @arm_heavy_mb() #9
  %122 = call i32 @llvm.bswap.i32(i32 %regval.0.i) #9
  %123 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr, align 4
  %add.ptr3.i = getelementptr i8, ptr %124, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %122) #9, !srcloc !155
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %sun4i_usb_phy_passby.exit.if.end46_crit_edge, %if.end28.if.end46_crit_edge
  br i1 %cmp25.not, label %if.end46.if.end52_crit_edge, label %if.then48

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %extcon49 = getelementptr i8, ptr %work, i32 -52
  %125 = ptrtoint ptr %extcon49 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %extcon49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool50 = icmp ne i32 %retval.1.i, 0
  %call51 = call i32 @extcon_set_state_sync(ptr noundef %126, i32 noundef 1, i1 noundef zeroext %tobool50) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46.if.end52_crit_edge
  %id_det_gpio.i152 = getelementptr i8, ptr %work, i32 -44
  %127 = ptrtoint ptr %id_det_gpio.i152 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %id_det_gpio.i152, align 4
  %tobool.not.i153 = icmp eq ptr %128, null
  br i1 %tobool.not.i153, label %if.end52.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end52.lor.lhs.false.i_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end52
  %id_det_irq.i = getelementptr i8, ptr %work, i32 -16
  %129 = ptrtoint ptr %id_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp.i154 = icmp slt i32 %130, 1
  br i1 %cmp.i154, label %land.lhs.true.i.if.then54_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i.if.then54_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end52.lor.lhs.false.i_crit_edge
  %131 = ptrtoint ptr %vbus_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vbus_det_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %132, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i158_crit_edge, label %land.lhs.true2.i

lor.lhs.false.i.if.end.i158_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i158

land.lhs.true2.i:                                 ; preds = %lor.lhs.false.i
  %vbus_det_irq.i = getelementptr i8, ptr %work, i32 -12
  %133 = ptrtoint ptr %vbus_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vbus_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp3.i = icmp slt i32 %134, 1
  br i1 %cmp3.i, label %land.lhs.true2.i.if.then54_crit_edge, label %land.lhs.true2.i.if.end.i158_crit_edge

land.lhs.true2.i.if.end.i158_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i158

land.lhs.true2.i.if.then54_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end.i158:                                      ; preds = %land.lhs.true2.i.if.end.i158_crit_edge, %lor.lhs.false.i.if.end.i158_crit_edge
  %cfg.i156 = getelementptr i8, ptr %work, i32 -232
  %135 = ptrtoint ptr %cfg.i156 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i156, align 4
  %type.i157 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %type.i157 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i157, align 4
  %.off.i = add i32 %138, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true9.i, label %if.end.i158.cleanup_crit_edge

if.end.i158.cleanup_crit_edge:                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %if.end.i158
  %vbus_power_supply.i159 = getelementptr i8, ptr %work, i32 -36
  %139 = ptrtoint ptr %vbus_power_supply.i159 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vbus_power_supply.i159, align 4
  %tobool10.not.i = icmp eq ptr %140, null
  br i1 %tobool10.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true11.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %regulator_on.i = getelementptr i8, ptr %work, i32 -156
  %141 = ptrtoint ptr %regulator_on.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %regulator_on.i, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool12.not.i = icmp eq i8 %142, 0
  br i1 %tobool12.not.i, label %land.lhs.true11.i.cleanup_crit_edge, label %land.lhs.true11.i.if.then54_crit_edge

land.lhs.true11.i.if.then54_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54:                                        ; preds = %land.lhs.true11.i.if.then54_crit_edge, %land.lhs.true2.i.if.then54_crit_edge, %land.lhs.true.i.if.then54_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %143 = load ptr, ptr @system_wq, align 4
  %call.i161 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %143, ptr noundef %work, i32 noundef 25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %if.end.i158.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_get_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy0_id_vbus_det_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %dev_id, i32 0, i32 17
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %detect, i32 noundef 5) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy0_vbus_notify(ptr noundef %nb, i32 noundef %val, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vbus_power_supply = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %vbus_power_supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_power_supply, align 4
  %cmp1 = icmp eq ptr %1, %v
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr i8, ptr %nb, i32 32
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %detect, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_reg_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sun4i_usb_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  %cfg = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %missing_phys = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %missing_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %missing_phys, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr %struct.sun4i_usb_phy_data, ptr %1, i32 0, i32 4, i32 %3
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.end8 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_usb_phy0_update_iscr(ptr nocapture noundef readonly %_phy, i32 noundef %clr, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !156
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %neg = xor i32 %clr, -1
  %and = and i32 %7, %neg
  %or = or i32 %and, %set
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_init(ptr nocapture noundef readonly %_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %clk = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk2 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk2, align 4
  %call.i105 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i109, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.i109:                                      ; preds = %if.end
  %call1.i107 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool2.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool2.not.i108, label %if.end6, label %if.then3.i110

if.then3.i110:                                    ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i110, %if.end.if.then4_crit_edge
  %retval.0.i111.ph = phi i32 [ %call1.i107, %if.then3.i110 ], [ %call.i105, %if.end.if.then4_crit_edge ]
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end.i109
  %reset = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  %call7 = tail call i32 @reset_control_deassert(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk2, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %cfg = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 4
  %type = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %19, label %if.else [
    i32 3, label %if.end12.if.then16_crit_edge
    i32 8, label %if.end12.if.then16_crit_edge121
  ]

if.end12.if.then16_crit_edge121:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end12.if.then16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %if.end12.if.then16_crit_edge, %if.end12.if.then16_crit_edge121
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18 = icmp eq i32 %22, 0
  br i1 %cmp18, label %if.then19, label %if.then16.if.end56_crit_edge

if.then16.if.end56_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %phyctl_offset = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %17, i32 0, i32 4
  %25 = ptrtoint ptr %phyctl_offset to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phyctl_offset, align 4
  %conv = zext i8 %26 to i32
  %add.ptr21 = getelementptr i8, ptr %24, i32 %conv
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %28 = and i32 %27, -671088641
  %29 = or i32 %28, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg, align 4
  %phyctl_offset27 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %phyctl_offset27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %phyctl_offset27, align 4
  %conv28 = zext i8 %35 to i32
  %add.ptr29 = getelementptr i8, ptr %31, i32 %conv28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %29) #9, !srcloc !155
  br label %if.end56

if.else:                                          ; preds = %if.end12
  %pmu = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmu, align 4
  %tobool31.not = icmp eq ptr %37, null
  br i1 %tobool31.not, label %if.else.if.end49_crit_edge, label %land.lhs.true

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.else
  %enable_pmu_unk1 = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %17, i32 0, i32 6
  %38 = ptrtoint ptr %enable_pmu_unk1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_pmu_unk1, align 2, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool33.not = icmp eq i8 %39, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end49_crit_edge, label %if.then35

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr39 = getelementptr i8, ptr %37, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %41 = and i32 %40, -33554433
  %42 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pmu, align 4
  %add.ptr48 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %41) #9, !srcloc !155
  br label %if.end49

if.end49:                                         ; preds = %if.then35, %land.lhs.true.if.end49_crit_edge, %if.else.if.end49_crit_edge
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp51 = icmp eq i32 %45, 0
  br i1 %cmp51, label %if.then53, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %1, i32 noundef 12, i32 noundef 1, i32 noundef 1)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %1, i32 noundef 32, i32 noundef 20, i32 noundef 5)
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg, align 4
  %disc_thresh = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %disc_thresh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %disc_thresh, align 4
  tail call fastcc void @sun4i_usb_phy_write(ptr noundef %1, i32 noundef 42, i32 noundef %49, i32 noundef 2)
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.then19, %if.then16.if.end56_crit_edge
  %pmu.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pmu.i, align 4
  %tobool.not.i113 = icmp eq ptr %51, null
  br i1 %tobool.not.i113, label %if.end56.sun4i_usb_phy_passby.exit_crit_edge, label %if.end.i114

if.end56.sun4i_usb_phy_passby.exit_crit_edge:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy_passby.exit

if.end.i114:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index, align 4
  %.neg.i = mul i32 %53, -32
  %idx.neg.i = add i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %cfg.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr.i, i32 0, i32 1
  %54 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i, align 4
  %type.i = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp.i = icmp eq i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i = icmp eq i32 %53, 2
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  %bits.0.i = select i1 %or.cond.i, i32 1115907, i32 1793
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #9, !srcloc !156
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %or10.i = or i32 %bits.0.i, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #9
  %61 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pmu.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #9, !srcloc !155
  br label %sun4i_usb_phy_passby.exit

sun4i_usb_phy_passby.exit:                        ; preds = %if.end.i114, %if.end56.sun4i_usb_phy_passby.exit_crit_edge
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp58 = icmp eq i32 %64, 0
  br i1 %cmp58, label %if.then60, label %sun4i_usb_phy_passby.exit.cleanup_crit_edge

sun4i_usb_phy_passby.exit.cleanup_crit_edge:      ; preds = %sun4i_usb_phy_passby.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %sun4i_usb_phy_passby.exit
  call void @__sanitizer_cov_trace_pc() #11
  %phy0_init = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 6
  %65 = ptrtoint ptr %phy0_init to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %phy0_init, align 4
  tail call fastcc void @sun4i_usb_phy0_update_iscr(ptr noundef %_phy, i32 noundef 0, i32 noundef 65536)
  tail call fastcc void @sun4i_usb_phy0_update_iscr(ptr noundef %_phy, i32 noundef 0, i32 noundef 131072)
  %id_det = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 15
  %66 = ptrtoint ptr %id_det to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %id_det, align 4
  %vbus_det = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 16
  %67 = ptrtoint ptr %vbus_det to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %vbus_det, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 17
  %call.i115 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %detect, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %sun4i_usb_phy_passby.exit.cleanup_crit_edge, %if.then9, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i111.ph, %if.then4 ], [ %call7, %if.then9 ], [ 0, %if.then60 ], [ 0, %sun4i_usb_phy_passby.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_exit(ptr nocapture noundef readonly %_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %cfg = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 1
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %type = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %7, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.if.then6_crit_edge
    i32 8, label %if.then.if.then6_crit_edge38
  ]

if.then.if.then6_crit_edge38:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %if.then.if.then6_crit_edge38
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %phyctl_offset = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %phyctl_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phyctl_offset, align 4
  %conv = zext i8 %12 to i32
  %add.ptr8 = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %14 = or i32 %13, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %14) #9, !srcloc !155
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %18, -32
  %idx.neg.i = add i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %16, i32 %idx.neg.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %22 = and i32 %21, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !155
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %index.i28 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %index.i28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i28, align 4
  %.neg.i29 = mul i32 %28, -32
  %idx.neg.i30 = add i32 %.neg.i29, -56
  %add.ptr.i31 = getelementptr i8, ptr %26, i32 %idx.neg.i30
  %29 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i31, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %32 = and i32 %31, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !155
  %phy0_init = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 6
  %35 = ptrtoint ptr %phy0_init to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %phy0_init, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %pmu.i = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmu.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end12.sun4i_usb_phy_passby.exit_crit_edge, label %if.end.i

if.end12.sun4i_usb_phy_passby.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sun4i_usb_phy_passby.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  %.neg.i34 = mul i32 %39, -32
  %idx.neg.i35 = add i32 %.neg.i34, -56
  %add.ptr.i36 = getelementptr i8, ptr %1, i32 %idx.neg.i35
  %cfg.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr.i36, i32 0, i32 1
  %40 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i, align 4
  %type.i = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i = icmp eq i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp2.i = icmp eq i32 %39, 2
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #9, !srcloc !156
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %neg.i = select i1 %or.cond.i, i32 -1115908, i32 -1794
  %and.i37 = and i32 %neg.i, %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i37) #9
  %47 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmu.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !155
  br label %sun4i_usb_phy_passby.exit

sun4i_usb_phy_passby.exit:                        ; preds = %if.end.i, %if.end12.sun4i_usb_phy_passby.exit_crit_edge
  %reset = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reset, align 4
  %call13 = tail call i32 @reset_control_assert(ptr noundef %50) #9
  %clk2 = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk2, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  tail call void @clk_unprepare(ptr noundef %52) #9
  %clk = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %54) #9
  tail call void @clk_unprepare(ptr noundef %54) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_power_on(ptr noundef %_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %vbus = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %regulator_on = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %regulator_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regulator_on, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %vbus_det_gpio.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 8
  %8 = ptrtoint ptr %vbus_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus_det_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sun4i_usb_phy0_have_vbus_det.exit, label %land.lhs.true.land.lhs.true4_crit_edge

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true4

sun4i_usb_phy0_have_vbus_det.exit:                ; preds = %land.lhs.true
  %vbus_power_supply.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 9
  %10 = ptrtoint ptr %vbus_power_supply.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_power_supply.i, align 4
  %tobool1.i.not = icmp eq ptr %11, null
  br i1 %tobool1.i.not, label %sun4i_usb_phy0_have_vbus_det.exit.if.end7_crit_edge, label %sun4i_usb_phy0_have_vbus_det.exit.land.lhs.true4_crit_edge

sun4i_usb_phy0_have_vbus_det.exit.land.lhs.true4_crit_edge: ; preds = %sun4i_usb_phy0_have_vbus_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true4

sun4i_usb_phy0_have_vbus_det.exit.if.end7_crit_edge: ; preds = %sun4i_usb_phy0_have_vbus_det.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4:                                   ; preds = %sun4i_usb_phy0_have_vbus_det.exit.land.lhs.true4_crit_edge, %land.lhs.true.land.lhs.true4_crit_edge
  %vbus_det = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 16
  %12 = ptrtoint ptr %vbus_det to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbus_det, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end7_crit_edge, label %do.end

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %_phy, ptr noundef nonnull @.str.57) #12
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %sun4i_usb_phy0_have_vbus_det.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call9 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %regulator_on to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %regulator_on, align 4
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true16:                                  ; preds = %if.end12
  %id_det_gpio.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 7
  %17 = ptrtoint ptr %id_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id_det_gpio.i, align 4
  %tobool.not.i36 = icmp eq ptr %18, null
  br i1 %tobool.not.i36, label %land.lhs.true16.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

land.lhs.true16.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %land.lhs.true16
  %id_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 13
  %19 = ptrtoint ptr %id_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp slt i32 %20, 1
  br i1 %cmp.i, label %land.lhs.true.i.if.then18_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i.if.then18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %land.lhs.true16.lor.lhs.false.i_crit_edge
  %vbus_det_gpio.i37 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 8
  %21 = ptrtoint ptr %vbus_det_gpio.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbus_det_gpio.i37, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true2.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %lor.lhs.false.i
  %vbus_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 14
  %23 = ptrtoint ptr %vbus_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vbus_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp3.i = icmp slt i32 %24, 1
  br i1 %cmp3.i, label %land.lhs.true2.i.if.then18_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i.if.then18_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %cfg.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 4
  %type.i = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %if.end.i
  %vbus_power_supply.i38 = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 9
  %29 = ptrtoint ptr %vbus_power_supply.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbus_power_supply.i38, align 4
  %tobool10.not.i = icmp eq ptr %30, null
  br i1 %tobool10.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true11.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %regulator_on.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 4, i32 0, i32 6
  %31 = ptrtoint ptr %regulator_on.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regulator_on.i, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.i = icmp eq i8 %32, 0
  br i1 %tobool12.not.i, label %land.lhs.true11.i.cleanup_crit_edge, label %land.lhs.true11.i.if.then18_crit_edge

land.lhs.true11.i.if.then18_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true11.i.if.then18_crit_edge, %land.lhs.true2.i.if.then18_crit_edge, %land.lhs.true.i.if.then18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 17
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %detect, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i.cleanup_crit_edge ], [ 0, %land.lhs.true11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_power_off(ptr nocapture noundef readonly %_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %vbus = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %regulator_on = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %regulator_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regulator_on, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #9
  %8 = ptrtoint ptr %regulator_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %regulator_on, align 4
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %id_det_gpio.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 7
  %11 = ptrtoint ptr %id_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id_det_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.lhs.true.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

land.lhs.true.lor.lhs.false.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %id_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 13
  %13 = ptrtoint ptr %id_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp slt i32 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %land.lhs.true.lor.lhs.false.i_crit_edge
  %vbus_det_gpio.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 8
  %15 = ptrtoint ptr %vbus_det_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbus_det_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true2.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %lor.lhs.false.i
  %vbus_det_irq.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 14
  %17 = ptrtoint ptr %vbus_det_irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbus_det_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.i = icmp slt i32 %18, 1
  br i1 %cmp3.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %cfg.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 1
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i, align 4
  %type.i = getelementptr inbounds %struct.sun4i_usb_phy_cfg, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true9.i, label %if.end.i.if.then7_crit_edge

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

land.lhs.true9.i:                                 ; preds = %if.end.i
  %vbus_power_supply.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 9
  %23 = ptrtoint ptr %vbus_power_supply.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbus_power_supply.i, align 4
  %tobool10.not.i = icmp eq ptr %24, null
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.then7_crit_edge, label %land.lhs.true11.i

land.lhs.true9.i.if.then7_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %regulator_on.i = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 4, i32 0, i32 6
  %25 = ptrtoint ptr %regulator_on.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regulator_on.i, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  br i1 %tobool12.not.i, label %land.lhs.true11.i.if.then7_crit_edge, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true11.i.if.then7_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true11.i.if.then7_crit_edge, %land.lhs.true9.i.if.then7_crit_edge, %if.end.i.if.then7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 17
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %detect, i32 noundef 25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_usb_phy_set_mode(ptr noundef %_phy, i32 noundef %mode, i32 noundef %submode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sun4i_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -32
  %idx.neg = add i32 %.neg, -56
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 1
  %. = select i1 %cmp2, i32 0, i32 -22
  br label %cleanup

if.end4:                                          ; preds = %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %mode, label %if.end4.cleanup_crit_edge [
    i32 1, label %if.end4.sw.epilog_crit_edge
    i32 6, label %sw.bb5
    i32 11, label %sw.bb6
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %if.end4.sw.epilog_crit_edge
  %new_mode.0 = phi i32 [ 3, %sw.bb6 ], [ 2, %sw.bb5 ], [ %mode, %if.end4.sw.epilog_crit_edge ]
  %dr_mode = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 2
  %5 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_mode.0, i32 %6)
  %cmp7.not = icmp eq i32 %new_mode.0, %6
  br i1 %cmp7.not, label %sw.epilog.if.end10_crit_edge, label %do.end

sw.epilog.if.end10_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %_phy, ptr noundef nonnull @.str.60, i32 noundef %new_mode.0) #12
  %7 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_mode.0, ptr %dr_mode, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %sw.epilog.if.end10_crit_edge
  %id_det = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 15
  %8 = ptrtoint ptr %id_det to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %id_det, align 4
  %force_session_end = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 12
  %9 = ptrtoint ptr %force_session_end to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %force_session_end, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %detect = getelementptr inbounds %struct.sun4i_usb_phy_data, ptr %add.ptr, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %detect, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %., %if.then ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unreg_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__ksymtab_sun4i_usb_phy_set_squelch_detect, !1, !"__ksymtab_sun4i_usb_phy_set_squelch_detect", i1 false, i1 false}
!1 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 518, i32 1}
!2 = !{ptr @__initcall__kmod_phy_sun4i_usb__294_998_sun4i_usb_phy_driver_init6, !3, !"__initcall__kmod_phy_sun4i_usb__294_998_sun4i_usb_phy_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 998, i32 1}
!4 = !{ptr @__exitcall_sun4i_usb_phy_driver_exit, !3, !"__exitcall_sun4i_usb_phy_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 1000, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 1001, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 1002, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 995, i32 12}
!14 = !{ptr @sun4i_usb_phy_driver, !15, !"sun4i_usb_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 990, i32 31}
!16 = !{ptr @sun4i_usb_phy_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 695, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sun4i_usb_phy_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 696, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_usb_phy_probe.__key.4, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 702, i32 59}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 706, i32 51}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 709, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sun4i_usb_phy_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @sun4i_usb_phy_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 713, i32 53}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 716, i32 3}
!40 = !{ptr @sun4i_usb_phy_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun4i_usb_phy_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 720, i32 27}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 724, i32 4}
!46 = !{ptr @sun4i_usb_phy_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sun4i_usb_phy_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 736, i32 3}
!50 = !{ptr @sun4i_usb_phy_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sun4i_usb_phy_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 742, i32 3}
!54 = !{ptr @sun4i_usb_phy_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun4i_usb_phy_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 753, i32 32}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 757, i32 5}
!60 = !{ptr @sun4i_usb_phy_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sun4i_usb_phy_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 767, i32 33}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 769, i32 18}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 773, i32 4}
!68 = !{ptr @sun4i_usb_phy_probe._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sun4i_usb_phy_probe._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 780, i32 33}
!72 = !{ptr @sun4i_usb_phy_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 783, i32 5}
!74 = !{ptr @sun4i_usb_phy_probe._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 788, i32 32}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 791, i32 4}
!79 = !{ptr @sun4i_usb_phy_probe._entry.40, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sun4i_usb_phy_probe._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 796, i32 33}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 804, i32 4}
!85 = !{ptr @sun4i_usb_phy_probe._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sun4i_usb_phy_probe._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 817, i32 5}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 819, i32 4}
!91 = !{ptr @sun4i_usb_phy_probe._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sun4i_usb_phy_probe._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 829, i32 5}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 831, i32 4}
!97 = !{ptr @sun4i_usb_phy_probe._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sun4i_usb_phy_probe._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 855, i32 2}
!101 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sun4i_usb_phy_probe.__UNIQUE_ID_ddebug293, !100, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!103 = !{ptr @sun4i_usb_phy0_cable, !104, !"sun4i_usb_phy0_cable", i1 false, i1 false}
!104 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 677, i32 27}
!105 = !{ptr @sun4i_usb_phy_ops, !106, !"sun4i_usb_phy_ops", i1 false, i1 false}
!106 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 520, i32 29}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 435, i32 3}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sun4i_usb_phy_power_on._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @sun4i_usb_phy_power_on._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 501, i32 3}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sun4i_usb_phy_set_mode._entry, !114, !"_entry", i1 false, i1 false}
!118 = !{ptr @sun4i_usb_phy_set_mode._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @sun4i_usb_phy_of_match, !120, !"sun4i_usb_phy_of_match", i1 false, i1 false}
!120 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 972, i32 34}
!121 = !{ptr @sun4i_a10_cfg, !122, !"sun4i_a10_cfg", i1 false, i1 false}
!122 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 860, i32 39}
!123 = !{ptr @sun5i_a13_cfg, !124, !"sun5i_a13_cfg", i1 false, i1 false}
!124 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 869, i32 39}
!125 = !{ptr @sun6i_a31_cfg, !126, !"sun6i_a31_cfg", i1 false, i1 false}
!126 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 878, i32 39}
!127 = !{ptr @sun7i_a20_cfg, !128, !"sun7i_a20_cfg", i1 false, i1 false}
!128 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 887, i32 39}
!129 = !{ptr @sun8i_a23_cfg, !130, !"sun8i_a23_cfg", i1 false, i1 false}
!130 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 896, i32 39}
!131 = !{ptr @sun8i_a33_cfg, !132, !"sun8i_a33_cfg", i1 false, i1 false}
!132 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 905, i32 39}
!133 = !{ptr @sun8i_a83t_cfg, !134, !"sun8i_a83t_cfg", i1 false, i1 false}
!134 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 914, i32 39}
!135 = !{ptr @sun8i_h3_cfg, !136, !"sun8i_h3_cfg", i1 false, i1 false}
!136 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 922, i32 39}
!137 = !{ptr @sun8i_r40_cfg, !138, !"sun8i_r40_cfg", i1 false, i1 false}
!138 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 932, i32 39}
!139 = !{ptr @sun8i_v3s_cfg, !140, !"sun8i_v3s_cfg", i1 false, i1 false}
!140 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 942, i32 39}
!141 = !{ptr @sun50i_a64_cfg, !142, !"sun50i_a64_cfg", i1 false, i1 false}
!142 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 952, i32 39}
!143 = !{ptr @sun50i_h6_cfg, !144, !"sun50i_h6_cfg", i1 false, i1 false}
!144 = !{!"../drivers/phy/allwinner/phy-sun4i-usb.c", i32 962, i32 39}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2155528494}
!155 = !{i64 4876298}
!156 = !{i64 4876716}
!157 = !{i64 2155529094}
!158 = !{i64 2155529298}
!159 = !{i64 4876496}
!160 = !{i64 2155529675}
!161 = !{i64 2155530043}
!162 = !{i64 4876101}
!163 = !{i64 2155530296}
!164 = !{i64 2155530500}
!165 = !{i64 2155530753}
!166 = !{i64 2155530957}
!167 = !{i8 0, i8 2}
!168 = !{i64 2148746083, i64 2148746088, i64 2148746101, i64 2148746145, i64 2148746179, i64 2148746200}
!169 = !{!"auto-init"}
!170 = !{i64 2155525913}
!171 = !{i64 2155526133}
!172 = !{i64 2155533489}
!173 = !{i64 2155533700}
!174 = !{i64 2155551145}
!175 = !{i64 2155551531}
!176 = !{i64 2155535909}
!177 = !{i64 2155536307}
!178 = !{i64 2155536985}
!179 = !{i64 2155537207}
!180 = !{i64 2155539879}
!181 = !{i64 2155540790}
