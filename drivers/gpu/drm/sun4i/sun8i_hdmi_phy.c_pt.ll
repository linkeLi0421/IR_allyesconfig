; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_hdmi_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sun8i_hdmi_phy_variant = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_hdmi_curr_ctrl = type { i32, [3 x i16] }
%struct.dw_hdmi_mpll_config = type { i32, [3 x %struct.anon.79] }
%struct.anon.79 = type { i16, i16 }
%struct.dw_hdmi_phy_config = type { i32, i16, i16, i16 }
%struct.sun8i_hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
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
%struct.sun8i_dw_hdmi = type { ptr, ptr, ptr, %struct.drm_encoder, ptr, %struct.dw_hdmi_plat_data, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@sun8i_hdmi_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 515, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot deassert phy reset control: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun8i_hdmi_phy_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_init._entry_ptr = internal global ptr @sun8i_hdmi_phy_init._entry, section ".printk_index", align 4
@sun8i_hdmi_phy_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot enable bus clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_init._entry_ptr.7 = internal global ptr @sun8i_hdmi_phy_init._entry.5, section ".printk_index", align 4
@sun8i_hdmi_phy_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot enable mod clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_init._entry_ptr.10 = internal global ptr @sun8i_hdmi_phy_init._entry.8, section ".printk_index", align 4
@sun8i_hdmi_phy_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't create the PHY clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_init._entry_ptr.13 = internal global ptr @sun8i_hdmi_phy_init._entry.11, section ".printk_index", align 4
@sun8i_hdmi_phy_ops = internal constant { %struct.dw_hdmi_phy_ops, [44 x i8] } { %struct.dw_hdmi_phy_ops { ptr @sun8i_hdmi_phy_config, ptr @sun8i_hdmi_phy_disable, ptr @dw_hdmi_phy_read_hpd, ptr @dw_hdmi_phy_update_hpd, ptr @dw_hdmi_phy_setup_hpd }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_dw_hdmi_phy\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i-hdmi-phy\00", [17 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_of_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_hdmi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_hdmi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_hdmi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_hdmi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-hdmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_hdmi_phy }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_hdmi_phy_probe, ptr @sun8i_hdmi_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_hdmi_phy_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Incompatible HDMI PHY\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun8i_hdmi_phy_probe\00", [43 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr = internal global ptr @sun8i_hdmi_phy_probe._entry, section ".printk_index", align 4
@sun8i_hdmi_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy: Couldn't get our resources\0A\00", [63 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.20 = internal global ptr @sun8i_hdmi_phy_probe._entry.18, section ".printk_index", align 4
@sun8i_hdmi_phy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 704, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't map the HDMI PHY registers\0A\00", [59 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.23 = internal global ptr @sun8i_hdmi_phy_probe._entry.21, section ".printk_index", align 4
@sun8i_hdmi_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun8i_hdmi_phy_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.44, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 60, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sun8i_hdmi_phy:709:(&sun8i_hdmi_phy_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.2, i32 711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't create the HDMI PHY regmap\0A\00", [59 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.27 = internal global ptr @sun8i_hdmi_phy_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.2, i32 717, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.31 = internal global ptr @sun8i_hdmi_phy_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get mod clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.35 = internal global ptr @sun8i_hdmi_phy_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll-0\00", [26 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.17, ptr @.str.2, i32 731, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not get pll-0 clock\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.39 = internal global ptr @sun8i_hdmi_phy_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll-1\00", [26 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.17, ptr @.str.2, i32 739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not get pll-1 clock\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.43 = internal global ptr @sun8i_hdmi_phy_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.17, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get phy reset control\0A\00", [63 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_probe._entry_ptr.47 = internal global ptr @sun8i_hdmi_phy_probe._entry.45, section ".printk_index", align 4
@sun8i_a83t_hdmi_phy = internal constant { %struct.sun8i_hdmi_phy_variant, [36 x i8] } { %struct.sun8i_hdmi_phy_variant { i8 0, i8 0, i8 -128, ptr null, ptr null, ptr null, ptr @sun8i_hdmi_phy_init_a83t, ptr @sun8i_hdmi_phy_disable_a83t, ptr @sun8i_hdmi_phy_config_a83t }, [36 x i8] zeroinitializer }, align 32
@sun8i_h3_hdmi_phy = internal constant { %struct.sun8i_hdmi_phy_variant, [36 x i8] } { %struct.sun8i_hdmi_phy_variant { i8 1, i8 0, i8 -128, ptr null, ptr null, ptr null, ptr @sun8i_hdmi_phy_init_h3, ptr @sun8i_hdmi_phy_disable_h3, ptr @sun8i_hdmi_phy_config_h3 }, [36 x i8] zeroinitializer }, align 32
@sun8i_r40_hdmi_phy = internal constant { %struct.sun8i_hdmi_phy_variant, [36 x i8] } { %struct.sun8i_hdmi_phy_variant { i8 1, i8 1, i8 -128, ptr null, ptr null, ptr null, ptr @sun8i_hdmi_phy_init_h3, ptr @sun8i_hdmi_phy_disable_h3, ptr @sun8i_hdmi_phy_config_h3 }, [36 x i8] zeroinitializer }, align 32
@sun50i_a64_hdmi_phy = internal constant { %struct.sun8i_hdmi_phy_variant, [36 x i8] } { %struct.sun8i_hdmi_phy_variant { i8 1, i8 0, i8 -128, ptr null, ptr null, ptr null, ptr @sun8i_hdmi_phy_init_h3, ptr @sun8i_hdmi_phy_disable_h3, ptr @sun8i_hdmi_phy_config_h3 }, [36 x i8] zeroinitializer }, align 32
@sun50i_h6_hdmi_phy = internal constant { %struct.sun8i_hdmi_phy_variant, [36 x i8] } { %struct.sun8i_hdmi_phy_variant { i8 0, i8 0, i8 0, ptr @sun50i_h6_cur_ctr, ptr @sun50i_h6_mpll_cfg, ptr @sun50i_h6_phy_config, ptr @sun50i_hdmi_phy_init_h6, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun50i_h6_cur_ctr = internal constant { [6 x %struct.dw_hdmi_curr_ctrl], [56 x i8] } { [6 x %struct.dw_hdmi_curr_ctrl] [%struct.dw_hdmi_curr_ctrl { i32 27000000, [3 x i16] [i16 18, i16 0, i16 0] }, %struct.dw_hdmi_curr_ctrl { i32 74250000, [3 x i16] [i16 19, i16 26, i16 27] }, %struct.dw_hdmi_curr_ctrl { i32 148500000, [3 x i16] [i16 25, i16 51, i16 52] }, %struct.dw_hdmi_curr_ctrl { i32 297000000, [3 x i16] [i16 25, i16 27, i16 27] }, %struct.dw_hdmi_curr_ctrl { i32 594000000, [3 x i16] [i16 16, i16 27, i16 27] }, %struct.dw_hdmi_curr_ctrl { i32 -1, [3 x i16] zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@sun50i_h6_mpll_cfg = internal constant { [14 x %struct.dw_hdmi_mpll_config], [32 x i8] } { [14 x %struct.dw_hdmi_mpll_config] [%struct.dw_hdmi_mpll_config { i32 30666000, [3 x %struct.anon.79] [%struct.anon.79 { i16 179, i16 0 }, %struct.anon.79 { i16 8531, i16 0 }, %struct.anon.79 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 36800000, [3 x %struct.anon.79] [%struct.anon.79 { i16 179, i16 0 }, %struct.anon.79 { i16 8531, i16 0 }, %struct.anon.79 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 46000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 179, i16 0 }, %struct.anon.79 { i16 8514, i16 1 }, %struct.anon.79 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 61333000, [3 x %struct.anon.79] [%struct.anon.79 { i16 114, i16 1 }, %struct.anon.79 { i16 8514, i16 1 }, %struct.anon.79 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 73600000, [3 x %struct.anon.79] [%struct.anon.79 { i16 114, i16 1 }, %struct.anon.79 { i16 8514, i16 1 }, %struct.anon.79 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 92000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 114, i16 1 }, %struct.anon.79 { i16 8517, i16 2 }, %struct.anon.79 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 122666000, [3 x %struct.anon.79] [%struct.anon.79 { i16 81, i16 2 }, %struct.anon.79 { i16 8517, i16 2 }, %struct.anon.79 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 147200000, [3 x %struct.anon.79] [%struct.anon.79 { i16 81, i16 2 }, %struct.anon.79 { i16 8517, i16 2 }, %struct.anon.79 { i16 16484, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 184000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 81, i16 2 }, %struct.anon.79 { i16 8524, i16 3 }, %struct.anon.79 { i16 16484, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 226666000, [3 x %struct.anon.79] [%struct.anon.79 { i16 64, i16 3 }, %struct.anon.79 { i16 8524, i16 3 }, %struct.anon.79 { i16 16484, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 272000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 64, i16 3 }, %struct.anon.79 { i16 8524, i16 3 }, %struct.anon.79 { i16 23140, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 340000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 64, i16 3 }, %struct.anon.79 { i16 15180, i16 3 }, %struct.anon.79 { i16 23140, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 594000000, [3 x %struct.anon.79] [%struct.anon.79 { i16 6720, i16 3 }, %struct.anon.79 { i16 15180, i16 3 }, %struct.anon.79 { i16 23140, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 -1, [3 x %struct.anon.79] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@sun50i_h6_phy_config = internal constant { [6 x %struct.dw_hdmi_phy_config], [56 x i8] } { [6 x %struct.dw_hdmi_phy_config] [%struct.dw_hdmi_phy_config { i32 27000000, i16 -32759, i16 7, i16 688 }, %struct.dw_hdmi_phy_config { i32 74250000, i16 -32759, i16 6, i16 557 }, %struct.dw_hdmi_phy_config { i32 148500000, i16 -32727, i16 6, i16 624 }, %struct.dw_hdmi_phy_config { i32 297000000, i16 -32711, i16 5, i16 427 }, %struct.dw_hdmi_phy_config { i32 594000000, i16 -32727, i16 0, i16 138 }, %struct.dw_hdmi_phy_config { i32 -1, i16 0, i16 0, i16 0 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 515, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 521, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 527, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 535, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"sun8i_hdmi_phy_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 385, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 572, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 786, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"sun8i_hdmi_phy_of_table\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 628, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"sun8i_hdmi_phy_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 782, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 685, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 698, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 704, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [29 x i8] c"sun8i_hdmi_phy_regmap_config\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 581, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 708, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 711, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 715, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 717, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 721, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 723, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 729, i32 44 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 731, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 737, i32 45 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 739, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 746, i32 51 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 748, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"sun8i_a83t_hdmi_phy\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 589, i32 44 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"sun8i_h3_hdmi_phy\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 596, i32 44 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"sun8i_r40_hdmi_phy\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 604, i32 44 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"sun50i_a64_hdmi_phy\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 613, i32 44 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"sun50i_h6_hdmi_phy\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 621, i32 44 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"sun50i_h6_cur_ctr\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 106, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant [19 x i8] c"sun50i_h6_mpll_cfg\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 18, i32 41 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"sun50i_h6_phy_config\00", align 1
@___asan_gen_.202 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 116, i32 40 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @sun8i_hdmi_phy_init._entry, ptr @sun8i_hdmi_phy_init._entry.11, ptr @sun8i_hdmi_phy_init._entry.5, ptr @sun8i_hdmi_phy_init._entry.8, ptr @sun8i_hdmi_phy_init._entry_ptr, ptr @sun8i_hdmi_phy_init._entry_ptr.10, ptr @sun8i_hdmi_phy_init._entry_ptr.13, ptr @sun8i_hdmi_phy_init._entry_ptr.7, ptr @sun8i_hdmi_phy_probe._entry, ptr @sun8i_hdmi_phy_probe._entry.18, ptr @sun8i_hdmi_phy_probe._entry.21, ptr @sun8i_hdmi_phy_probe._entry.25, ptr @sun8i_hdmi_phy_probe._entry.29, ptr @sun8i_hdmi_phy_probe._entry.33, ptr @sun8i_hdmi_phy_probe._entry.37, ptr @sun8i_hdmi_phy_probe._entry.41, ptr @sun8i_hdmi_phy_probe._entry.45, ptr @sun8i_hdmi_phy_probe._entry_ptr, ptr @sun8i_hdmi_phy_probe._entry_ptr.20, ptr @sun8i_hdmi_phy_probe._entry_ptr.23, ptr @sun8i_hdmi_phy_probe._entry_ptr.27, ptr @sun8i_hdmi_phy_probe._entry_ptr.31, ptr @sun8i_hdmi_phy_probe._entry_ptr.35, ptr @sun8i_hdmi_phy_probe._entry_ptr.39, ptr @sun8i_hdmi_phy_probe._entry_ptr.43, ptr @sun8i_hdmi_phy_probe._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @sun8i_hdmi_phy_ops, ptr @.str.14, ptr @.str.15, ptr @sun8i_hdmi_phy_of_table, ptr @sun8i_hdmi_phy_driver, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @sun8i_hdmi_phy_probe._key, ptr @sun8i_hdmi_phy_regmap_config, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @sun8i_a83t_hdmi_phy, ptr @sun8i_h3_hdmi_phy, ptr @sun8i_r40_hdmi_phy, ptr @sun50i_a64_hdmi_phy, ptr @sun50i_h6_hdmi_phy, ptr @sun50i_h6_cur_ctr, ptr @sun50i_h6_mpll_cfg, ptr @sun50i_h6_phy_config], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_of_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_hdmi_phy_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_hdmi_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_hdmi_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_hdmi_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_hdmi_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_hdmi_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_cur_ctr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_mpll_cfg to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_phy_config to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_hdmi_phy_init(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %rst_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_phy, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i, %if.end.do.end6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end6_crit_edge ]
  %dev7 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 5
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i.ph) #9
  br label %err_assert_rst_phy

if.end8:                                          ; preds = %if.end.i
  %clk_mod = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 1
  %8 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mod, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end.i65:                                       ; preds = %if.end8
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end16, label %if.then3.i66

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then3.i66, %if.end8.do.end14_crit_edge
  %retval.0.i67.ph = phi i32 [ %call1.i63, %if.then3.i66 ], [ %call.i61, %if.end8.do.end14_crit_edge ]
  %dev15 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 5
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i67.ph) #9
  br label %err_disable_clk_bus

if.end16:                                         ; preds = %if.end.i65
  %variant = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 9
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  br i1 %tobool17.not, label %if.end16.if.end31_crit_edge, label %if.then18

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then18:                                        ; preds = %if.end16
  %dev19 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 5
  %16 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev19, align 4
  %has_second_pll = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %has_second_pll to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_second_pll, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21 = icmp ne i8 %19, 0
  %call22 = tail call i32 @sun8i_phy_clk_create(ptr noundef %phy, ptr noundef %17, i1 noundef zeroext %tobool21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12) #9
  %22 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_mod, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %err_disable_clk_bus

if.end29:                                         ; preds = %if.then18
  %clk_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 2
  %24 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_phy, align 4
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end29.if.end31_crit_edge

if.end29.if.end31_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i73:                                       ; preds = %if.end29
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end.i73.if.end31_crit_edge, label %if.then3.i74

if.end.i73.if.end31_crit_edge:                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then3.i74, %if.end.i73.if.end31_crit_edge, %if.end29.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 4
  %phy_init = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_init, align 4
  tail call void %29(ptr noundef %phy) #6
  br label %cleanup

err_disable_clk_bus:                              ; preds = %do.end27, %do.end14
  %ret.0 = phi i32 [ %retval.0.i67.ph, %do.end14 ], [ %call22, %do.end27 ]
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %err_assert_rst_phy

err_assert_rst_phy:                               ; preds = %err_disable_clk_bus, %do.end6
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end6 ], [ %ret.0, %err_disable_clk_bus ]
  %32 = ptrtoint ptr %rst_phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rst_phy, align 4
  %call36 = tail call i32 @reset_control_assert(ptr noundef %33) #6
  br label %cleanup

cleanup:                                          ; preds = %err_assert_rst_phy, %if.end31, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.1, %err_assert_rst_phy ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_phy_clk_create(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_hdmi_phy_deinit(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_mod = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mod, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %clk_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_phy, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %rst_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %rst_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst_phy, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %7) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sun8i_hdmi_phy_set_ops(ptr noundef %phy, ptr nocapture noundef writeonly %plat_data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  %is_custom_phy = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %is_custom_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_custom_phy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phy_ops = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 7
  %3 = ptrtoint ptr %phy_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sun8i_hdmi_phy_ops, ptr %phy_ops, align 4
  %phy_name = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 8
  %4 = ptrtoint ptr %phy_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.14, ptr %phy_name, align 4
  %phy_data = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 9
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phy, ptr %phy_data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mpll_cfg = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mpll_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mpll_cfg, align 4
  %mpll_cfg2 = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 11
  %8 = ptrtoint ptr %mpll_cfg2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mpll_cfg2, align 4
  %cur_ctr = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cur_ctr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_ctr, align 4
  %cur_ctr3 = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 12
  %11 = ptrtoint ptr %cur_ctr3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cur_ctr3, align 4
  %phy_cfg = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_cfg, align 4
  %phy_config = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %plat_data, i32 0, i32 13
  %14 = ptrtoint ptr %phy_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %phy_config, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_hdmi_phy_get(ptr nocapture noundef writeonly %hdmi, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %node) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phy5 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %hdmi, i32 0, i32 4
  %2 = ptrtoint ptr %phy5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %phy5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end4 ], [ -517, %if.end.cleanup.sink.split_crit_edge ]
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev6) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_hdmi_phy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_hdmi_phy_of_table, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %variant, align 4
  %dev6 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev6, align 4
  %call7 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #6
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  %7 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call14, ptr noundef nonnull @sun8i_hdmi_phy_regmap_config, ptr noundef nonnull @sun8i_hdmi_phy_probe._key, ptr noundef nonnull @.str.24) #6
  %regs23 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %regs23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %regs23, align 4
  %cmp.i153 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  %9 = ptrtoint ptr %regs23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs23, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %call33 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.28) #6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call33, ptr %call.i, align 4
  %cmp.i154 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %call43 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.32) #6
  %clk_mod = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %clk_mod to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %clk_mod, align 4
  %cmp.i155 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #9
  %17 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_mod, align 4
  br label %err_put_clk_bus

if.end52:                                         ; preds = %if.end42
  %19 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %variant, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool54.not = icmp eq i8 %22, 0
  br i1 %tobool54.not, label %if.end52.if.end80_crit_edge, label %if.then55

if.end52.if.end80_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then55:                                        ; preds = %if.end52
  %call56 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.36) #6
  %clk_pll0 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %clk_pll0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call56, ptr %clk_pll0, align 4
  %cmp.i156 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #9
  %24 = ptrtoint ptr %clk_pll0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_pll0, align 4
  br label %err_put_clk_mod

if.end65:                                         ; preds = %if.then55
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 4
  %has_second_pll = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %has_second_pll to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_second_pll, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool67.not = icmp eq i8 %29, 0
  br i1 %tobool67.not, label %if.end65.if.end80_crit_edge, label %if.then68

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then68:                                        ; preds = %if.end65
  %call69 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.40) #6
  %clk_pll1 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %clk_pll1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call69, ptr %clk_pll1, align 4
  %cmp.i157 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %do.end75, label %if.then68.if.end80_crit_edge

if.then68.if.end80_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end75:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #9
  %31 = ptrtoint ptr %clk_pll1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_pll1, align 4
  br label %err_put_clk_pll0

if.end80:                                         ; preds = %if.then68.if.end80_crit_edge, %if.end65.if.end80_crit_edge, %if.end52.if.end80_crit_edge
  %call.i158 = call ptr @__of_reset_control_get(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rst_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %rst_phy to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i158, ptr %rst_phy, align 4
  %cmp.i159 = icmp ugt ptr %call.i158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end87, label %if.end90

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #9
  %34 = ptrtoint ptr %rst_phy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rst_phy, align 4
  %clk_pll191 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %clk_pll191 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_pll191, align 4
  call void @clk_put(ptr noundef %37) #6
  br label %err_put_clk_pll0

if.end90:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_put_clk_pll0:                                 ; preds = %do.end87, %do.end75
  %ret.0.in = phi ptr [ %32, %do.end75 ], [ %35, %do.end87 ]
  %clk_pll092 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %clk_pll092 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_pll092, align 4
  call void @clk_put(ptr noundef %40) #6
  br label %err_put_clk_mod

err_put_clk_mod:                                  ; preds = %err_put_clk_pll0, %do.end62
  %ret.1.in = phi ptr [ %25, %do.end62 ], [ %ret.0.in, %err_put_clk_pll0 ]
  %41 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_mod, align 4
  call void @clk_put(ptr noundef %42) #6
  br label %err_put_clk_bus

err_put_clk_bus:                                  ; preds = %err_put_clk_mod, %do.end49
  %ret.2.in = phi ptr [ %18, %do.end49 ], [ %ret.1.in, %err_put_clk_mod ]
  %ret.2 = ptrtoint ptr %ret.2.in to i32
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  call void @clk_put(ptr noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_clk_bus, %if.end90, %do.end39, %do.end29, %do.end19, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %7, %do.end19 ], [ %11, %do.end29 ], [ %15, %do.end39 ], [ %ret.2, %err_put_clk_bus ], [ 0, %if.end90 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_hdmi_phy_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rst_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_phy, align 4
  tail call void @reset_control_put(ptr noundef %3) #6
  %clk_pll0 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_pll0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pll0, align 4
  tail call void @clk_put(ptr noundef %5) #6
  %clk_pll1 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk_pll1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pll1, align 4
  tail call void @clk_put(ptr noundef %7) #6
  %clk_mod = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mod, align 4
  tail call void @clk_put(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @clk_put(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_hdmi_phy_config(ptr noundef %hdmi, ptr noundef %data, ptr nocapture noundef readnone %display, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = shl i32 %1, 7
  %2 = and i32 %and, 256
  %and2 = shl i32 %1, 6
  %3 = and i32 %and2, 512
  %4 = or i32 %3, %2
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 65280, i32 noundef %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %variant = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %data, i32 0, i32 9
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %entry.if.end10_crit_edge, label %if.then8

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk_phy = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_phy, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %13 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %14, 1000
  %call9 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %mul) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge
  %15 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant, align 4
  %phy_config = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %phy_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_config, align 4
  %crtc_clock12 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %19 = ptrtoint ptr %crtc_clock12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_clock12, align 4
  %mul13 = mul i32 %20, 1000
  %call14 = tail call i32 %18(ptr noundef %hdmi, ptr noundef %data, i32 noundef %mul13) #6
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_hdmi_phy_disable(ptr noundef %hdmi, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %phy_disable = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %phy_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_disable, align 4
  tail call void %3(ptr noundef %hdmi, ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_hdmi_phy_read_hpd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_update_hpd(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_setup_hpd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_hdmi_phy_init_a83t(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef 1414677829) #6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 20, i32 noundef 1112100423) #6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 16711680, i32 noundef 6881280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_hdmi_phy_disable_a83t(ptr noundef %hdmi, ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_hdmi_phy_gen2_txpwron(ptr noundef %hdmi, i8 noundef zeroext 0) #6
  tail call void @dw_hdmi_phy_gen2_pddq(ptr noundef %hdmi, i8 noundef zeroext 1) #6
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_hdmi_phy_config_a83t(ptr noundef %hdmi, ptr nocapture noundef readonly %phy, i32 noundef %clk_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @dw_hdmi_phy_gen2_txpwron(ptr noundef %hdmi, i8 noundef zeroext 0) #6
  tail call void @dw_hdmi_phy_gen2_pddq(ptr noundef %hdmi, i8 noundef zeroext 1) #6
  tail call void @dw_hdmi_phy_reset(ptr noundef %hdmi) #6
  tail call void @dw_hdmi_phy_gen2_pddq(ptr noundef %hdmi, i8 noundef zeroext 0) #6
  tail call void @dw_hdmi_phy_i2c_set_addr(ptr noundef %hdmi, i8 noundef zeroext 105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %clk_rate)
  %cmp = icmp ult i32 %clk_rate, 27000001
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250001, i32 %clk_rate)
  %cmp1 = icmp ult i32 %clk_rate, 74250001
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500001, i32 %clk_rate)
  %cmp4 = icmp ult i32 %clk_rate, 148500001
  %. = select i1 %cmp4, i16 1184, i16 0
  %.48 = select i1 %cmp4, i16 10, i16 15
  %.49 = select i1 %cmp4, i16 33, i16 0
  %.50 = select i1 %cmp4, i16 -32727, i16 -32725
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %.sink47 = phi i16 [ 480, %entry.if.end8_crit_edge ], [ 1344, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %.sink46 = phi i16 [ 0, %entry.if.end8_crit_edge ], [ 5, %if.else.if.end8_crit_edge ], [ %.48, %if.else3 ]
  %.sink45 = phi i16 [ 2266, %entry.if.end8_crit_edge ], [ 0, %if.else.if.end8_crit_edge ], [ 0, %if.else3 ]
  %.sink44 = phi i16 [ 7, %entry.if.end8_crit_edge ], [ 7, %if.else.if.end8_crit_edge ], [ 2, %if.else3 ]
  %.sink43 = phi i16 [ 792, %entry.if.end8_crit_edge ], [ 693, %if.else.if.end8_crit_edge ], [ %.49, %if.else3 ]
  %.sink = phi i16 [ -32759, %entry.if.end8_crit_edge ], [ -32759, %if.else.if.end8_crit_edge ], [ %.50, %if.else3 ]
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink47, i8 noundef zeroext 6) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink46, i8 noundef zeroext 21) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink45, i8 noundef zeroext 16) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink44, i8 noundef zeroext 25) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink43, i8 noundef zeroext 14) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext %.sink, i8 noundef zeroext 9) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext 0, i8 noundef zeroext 30) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext 0, i8 noundef zeroext 19) #6
  tail call void @dw_hdmi_phy_i2c_write(ptr noundef %hdmi, i16 noundef zeroext 0, i8 noundef zeroext 23) #6
  tail call void @dw_hdmi_phy_gen2_txpwron(ptr noundef %hdmi, i8 noundef zeroext 1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_gen2_txpwron(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_gen2_pddq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_i2c_set_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_i2c_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_hdmi_phy_init_h3(ptr nocapture noundef %phy) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !108
  %regs.i = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef 1414677829) #6
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 20, i32 noundef 1112100423) #6
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %call = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 32, i32 noundef 0) #6
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 32, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 32, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 32, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 32, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #6
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 32, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #6
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 32, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 32, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 32, i32 noundef 112, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call17 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call17, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 475) #6
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %call2697 = call i32 @regmap_read(ptr noundef %26, i32 noundef 56, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2697)
  %tobool.not98 = icmp eq i32 %call2697, 0
  br i1 %tobool.not98, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then39.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %land.lhs.true, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call31 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call31, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then34, label %if.then39

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %call36 = call i32 @regmap_read(ptr noundef %30, i32 noundef 56, ptr noundef nonnull %val) #6
  br label %for.end

if.then39:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %call26 = call i32 @regmap_read(ptr noundef %32, i32 noundef 56, ptr noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then39.lor.lhs.false_crit_edge, label %if.then39.for.end_crit_edge

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then39.lor.lhs.false_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then39.for.end_crit_edge, %if.then34, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %call.i93 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 32, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %call.i94 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 32, i32 noundef 3840, i32 noundef 3840, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %call.i95 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 40, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %call.i96 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 44, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %call56 = call i32 @regmap_write(ptr noundef %42, i32 noundef 60, i32 noundef 0) #6
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %call58 = call i32 @regmap_read(ptr noundef %44, i32 noundef 56, ptr noundef nonnull %val) #6
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %and59 = lshr i32 %46, 2
  %shr60 = and i32 %and59, 15
  %rcal = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 6
  %47 = ptrtoint ptr %rcal to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr60, ptr %rcal, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_hdmi_phy_disable_h3(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 32, i32 noundef 7) #6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 44, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_hdmi_phy_config_h3(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readonly %phy, i32 noundef %clk_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %clk_rate)
  %cmp = icmp ult i32 %clk_rate, 27000001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rcal = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 6
  %1 = ptrtoint ptr %rcal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rcal, align 4
  %or4 = or i32 %2, -2141048832
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250001, i32 %clk_rate)
  %cmp6 = icmp ult i32 %clk_rate, 74250001
  br i1 %cmp6, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rcal11 = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %rcal11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rcal11, align 4
  %or14 = or i32 %4, -2141048832
  br label %if.end29

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500001, i32 %clk_rate)
  %cmp17 = icmp ult i32 %clk_rate, 148500001
  %. = select i1 %cmp17, i32 -2146942080, i32 -2146933824
  %.86 = select i1 %cmp17, i32 -2140952576, i32 -2140950528
  %.87 = select i1 %cmp17, i32 260162693, i32 260196021
  %.88 = select i1 %cmp17, i32 0, i32 2
  %.89 = select i1 %cmp17, i32 970743744, i32 836526016
  br label %if.end29

if.end29:                                         ; preds = %if.else16, %if.then7, %if.then
  %pll_cfg2_init.0 = phi i32 [ -2146942208, %if.then ], [ -2146942144, %if.then7 ], [ %., %if.else16 ]
  %ana_cfg1_end.0 = phi i32 [ 301989759, %if.then ], [ 301989759, %if.then7 ], [ 33554303, %if.else16 ]
  %ana_cfg2_init.0 = phi i32 [ %or4, %if.then ], [ %or14, %if.then7 ], [ %.86, %if.else16 ]
  %ana_cfg3_init.0 = phi i32 [ 260096645, %if.then ], [ 260129669, %if.then7 ], [ %.87, %if.else16 ]
  %b_offset.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ %.88, %if.else16 ]
  %pll_cfg1_init.0 = phi i32 [ 970743744, %if.then ], [ 970743744, %if.then7 ], [ %.89, %if.else16 ]
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 32, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 44, i32 noundef -67108865, i32 noundef %pll_cfg1_init.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 48, i32 noundef -16, i32 noundef %pll_cfg2_init.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 52, i32 noundef 1) #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 44, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @msleep(i32 noundef 100) #6
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %call39 = call i32 @regmap_read(ptr noundef %16, i32 noundef 56, ptr noundef nonnull %val) #6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = lshr i32 %18, 11
  %shr = and i32 %and, 63
  %add = add nuw nsw i32 %shr, %b_offset.0
  %19 = call i32 @llvm.umin.i32(i32 %add, i32 63)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %call.i93 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 44, i32 noundef -1073741824, i32 noundef -1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %call.i94 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 44, i32 noundef 63, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @msleep(i32 noundef 100) #6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %call47 = call i32 @regmap_write(ptr noundef %28, i32 noundef 32, i32 noundef %ana_cfg1_end.0) #6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %call49 = call i32 @regmap_write(ptr noundef %30, i32 noundef 36, i32 noundef %ana_cfg2_init.0) #6
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %call51 = call i32 @regmap_write(ptr noundef %32, i32 noundef 40, i32 noundef %ana_cfg3_init.0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_hdmi_phy_init_h6(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun8i_hdmi_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef -65536, i32 noundef -2134900736, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 515, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_hdmi_phy_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_hdmi_phy_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 521, i32 3}
!10 = !{ptr @sun8i_hdmi_phy_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_hdmi_phy_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 527, i32 3}
!14 = !{ptr @sun8i_hdmi_phy_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun8i_hdmi_phy_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 535, i32 4}
!18 = !{ptr @sun8i_hdmi_phy_init._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_hdmi_phy_init._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 572, i32 25}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 786, i32 11}
!24 = !{ptr @sun8i_hdmi_phy_driver, !25, !"sun8i_hdmi_phy_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 782, i32 24}
!26 = !{ptr @sun8i_hdmi_phy_ops, !27, !"sun8i_hdmi_phy_ops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 385, i32 37}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 685, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sun8i_hdmi_phy_probe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 698, i32 3}
!35 = !{ptr @sun8i_hdmi_phy_probe._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 704, i32 3}
!39 = !{ptr @sun8i_hdmi_phy_probe._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @sun8i_hdmi_phy_probe._key, !42, !"_key", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 708, i32 14}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 711, i32 3}
!46 = !{ptr @sun8i_hdmi_phy_probe._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 715, i32 42}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 717, i32 3}
!52 = !{ptr @sun8i_hdmi_phy_probe._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 721, i32 42}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 723, i32 3}
!58 = !{ptr @sun8i_hdmi_phy_probe._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 729, i32 44}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 731, i32 4}
!64 = !{ptr @sun8i_hdmi_phy_probe._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.39, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 737, i32 45}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 739, i32 5}
!70 = !{ptr @sun8i_hdmi_phy_probe._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 746, i32 51}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 748, i32 3}
!76 = !{ptr @sun8i_hdmi_phy_probe._entry.45, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sun8i_hdmi_phy_probe._entry_ptr.47, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @sun8i_hdmi_phy_regmap_config, !79, !"sun8i_hdmi_phy_regmap_config", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 581, i32 35}
!80 = !{ptr @sun8i_hdmi_phy_of_table, !81, !"sun8i_hdmi_phy_of_table", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 628, i32 34}
!82 = !{ptr @sun8i_a83t_hdmi_phy, !83, !"sun8i_a83t_hdmi_phy", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 589, i32 44}
!84 = !{ptr @sun8i_h3_hdmi_phy, !85, !"sun8i_h3_hdmi_phy", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 596, i32 44}
!86 = !{ptr @sun8i_r40_hdmi_phy, !87, !"sun8i_r40_hdmi_phy", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 604, i32 44}
!88 = !{ptr @sun50i_a64_hdmi_phy, !89, !"sun50i_a64_hdmi_phy", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 613, i32 44}
!90 = !{ptr @sun50i_h6_hdmi_phy, !91, !"sun50i_h6_hdmi_phy", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 621, i32 44}
!92 = !{ptr @sun50i_h6_cur_ctr, !93, !"sun50i_h6_cur_ctr", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 106, i32 39}
!94 = !{ptr @sun50i_h6_mpll_cfg, !95, !"sun50i_h6_mpll_cfg", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 18, i32 41}
!96 = !{ptr @sun50i_h6_phy_config, !97, !"sun50i_h6_phy_config", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c", i32 116, i32 40}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
!108 = !{!"auto-init"}
