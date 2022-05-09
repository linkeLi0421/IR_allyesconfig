; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/bcm2835-power.c_pt.bc'
source_filename = "../drivers/soc/bcm/bcm2835-power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.bcm2835_pm = type { ptr, ptr, ptr }
%struct.bcm2835_power = type { ptr, ptr, ptr, %struct.genpd_onecell_data, [13 x %struct.bcm2835_power_domain], %struct.reset_controller_dev }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.bcm2835_power_domain = type { %struct.generic_pm_domain, ptr, i32, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_bcm2835_power__170_692_bcm2835_power_driver_init6 = internal global ptr @bcm2835_power_driver_init, section ".initcall6.init", align 4
@bcm2835_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_power_probe, ptr @bcm2835_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_power_driver_exit = internal global ptr @bcm2835_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [51 x i8] c"bcm2835_power.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [81 x i8] c"bcm2835_power.description=Driver for Broadcom BCM2835 PM power domains and reset\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [49 x i8] c"bcm2835_power.file=drivers/soc/bcm/bcm2835-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [26 x i8] c"bcm2835_power.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm2835-power\00", [18 x i8] zeroinitializer }, align 32
@bcm2835_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASB register ID returned 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835_power_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/soc/bcm/bcm2835-power.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_power_probe._entry_ptr = internal global ptr @bcm2835_power_probe._entry, section ".printk_index", align 4
@power_domain_names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [44 x i8] zeroinitializer }, align 32
@bcm2835_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @bcm2835_reset_reset, ptr null, ptr null, ptr @bcm2835_reset_status }, [16 x i8] zeroinitializer }, align 32
@bcm2835_power_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 667, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Broadcom BCM2835 power domains driver\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_power_probe._entry_ptr.9 = internal global ptr @bcm2835_power_probe._entry.6, section ".printk_index", align 4
@bcm2835_power_pd_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid domain %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm2835_power_pd_power_on\00", [38 x i8] zeroinitializer }, align 32
@bcm2835_power_pd_power_on._entry_ptr = internal global ptr @bcm2835_power_pd_power_on._entry, section ".printk_index", align 4
@bcm2835_power_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for %s power OK\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm2835_power_power_on\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_power_power_on._entry_ptr = internal global ptr @bcm2835_power_power_on._entry, section ".printk_index", align 4
@bcm2835_power_power_on._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for %s memory repair\0A\00", [58 x i8] zeroinitializer }, align 32
@bcm2835_power_power_on._entry_ptr.16 = internal global ptr @bcm2835_power_power_on._entry.14, section ".printk_index", align 4
@bcm2835_asb_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable clock for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835_asb_power_on\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_on._entry_ptr = internal global ptr @bcm2835_asb_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm2835_asb_power_on._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_on._entry_ptr.20 = internal global ptr @bcm2835_asb_power_on._entry.19, section ".printk_index", align 4
@bcm2835_asb_power_on._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable ASB master for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_on._entry_ptr.23 = internal global ptr @bcm2835_asb_power_on._entry.21, section ".printk_index", align 4
@bcm2835_asb_power_on._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable ASB slave for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_on._entry_ptr.26 = internal global ptr @bcm2835_asb_power_on._entry.24, section ".printk_index", align 4
@bcm2835_power_pd_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.27, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm2835_power_pd_power_off\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_power_pd_power_off._entry_ptr = internal global ptr @bcm2835_power_pd_power_off._entry, section ".printk_index", align 4
@bcm2835_asb_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 340, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to disable ASB slave for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm2835_asb_power_off\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_off._entry_ptr = internal global ptr @bcm2835_asb_power_off._entry, section ".printk_index", align 4
@bcm2835_asb_power_off._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 346, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable ASB master for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm2835_asb_power_off._entry_ptr.33 = internal global ptr @bcm2835_asb_power_off._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grafx\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"v3d\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"image\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_image\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"h264\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsi0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsi1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cam0\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cam1\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccp2tx\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_reset_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad reset id %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835_reset_reset\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_reset_reset._entry_ptr = internal global ptr @bcm2835_reset_reset._entry, section ".printk_index", align 4
@switch.table.bcm2835_reset_reset = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -16416, i32 -12312, i32 -10944], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"bcm2835_power_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 685, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 689, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 632, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"power_domain_names\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 584, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"bcm2835_reset_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 579, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 667, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 420, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 239, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 254, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 284, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 299, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 306, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 312, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 483, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 339, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 345, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 585, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 586, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 588, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 589, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 591, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 590, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 593, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 594, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 595, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 596, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 597, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 598, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 599, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [35 x i8] c"../drivers/soc/bcm/bcm2835-power.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 550, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [33 x i8] c"switch.table.bcm2835_reset_reset\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_bcm2835_power_driver_exit, ptr @__initcall__kmod_bcm2835_power__170_692_bcm2835_power_driver_init6, ptr @bcm2835_asb_power_off._entry, ptr @bcm2835_asb_power_off._entry.31, ptr @bcm2835_asb_power_off._entry_ptr, ptr @bcm2835_asb_power_off._entry_ptr.33, ptr @bcm2835_asb_power_on._entry, ptr @bcm2835_asb_power_on._entry.19, ptr @bcm2835_asb_power_on._entry.21, ptr @bcm2835_asb_power_on._entry.24, ptr @bcm2835_asb_power_on._entry_ptr, ptr @bcm2835_asb_power_on._entry_ptr.20, ptr @bcm2835_asb_power_on._entry_ptr.23, ptr @bcm2835_asb_power_on._entry_ptr.26, ptr @bcm2835_power_driver_exit, ptr @bcm2835_power_pd_power_off._entry, ptr @bcm2835_power_pd_power_off._entry_ptr, ptr @bcm2835_power_pd_power_on._entry, ptr @bcm2835_power_pd_power_on._entry_ptr, ptr @bcm2835_power_power_on._entry, ptr @bcm2835_power_power_on._entry.14, ptr @bcm2835_power_power_on._entry_ptr, ptr @bcm2835_power_power_on._entry_ptr.16, ptr @bcm2835_power_probe._entry, ptr @bcm2835_power_probe._entry.6, ptr @bcm2835_power_probe._entry_ptr, ptr @bcm2835_power_probe._entry_ptr.9, ptr @bcm2835_reset_reset._entry, ptr @bcm2835_reset_reset._entry_ptr, ptr @bcm2835_power_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @power_domain_names, ptr @bcm2835_reset_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.bcm2835_reset_reset], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_domain_names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_pd_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_power_on._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_on._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_on._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_on._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_pd_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_asb_power_off._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_reset_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm2835_reset_reset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_power_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_power_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 17856, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 8
  %base = getelementptr inbounds %struct.bcm2835_pm, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %base5 = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %base5, align 4
  %asb = getelementptr inbounds %struct.bcm2835_pm, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %asb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asb, align 4
  %asb6 = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %asb6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %asb6, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1734636130, i32 %12)
  %cmp.not = icmp eq i32 %12, 1734636130
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #6
  %pd_xlate = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %pd_xlate to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %pd_xlate, align 4
  %tobool15.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %num_domains = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 13, ptr %num_domains, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17
  %i.0120 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x ptr], ptr @power_domain_names, i32 0, i32 %i.0120
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %arrayidx.i = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 %i.0120
  %parent.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  %call.i117 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef %17) #6
  %clk.i = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 %i.0120, i32 3
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i117, ptr %clk.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %cmp.i = icmp eq ptr %call.i117, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then.i.fail_crit_edge, label %if.end.i

if.then.i.fail_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %clk.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %for.body.for.inc_crit_edge
  %name9.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx.i, i32 0, i32 10
  %24 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %name9.i, align 8
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx.i, i32 0, i32 19
  %25 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bcm2835_power_pd_power_on, ptr %power_on.i, align 4
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx.i, i32 0, i32 18
  %26 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bcm2835_power_pd_power_off, ptr %power_off.i, align 8
  %domain.i = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 %i.0120, i32 2
  %27 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0120, ptr %domain.i, align 4
  %power12.i = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 %i.0120, i32 1
  %28 = ptrtoint ptr %power12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %power12.i, align 8
  %call14.i = tail call i32 @pm_genpd_init(ptr noundef %arrayidx.i, ptr noundef null, i1 noundef zeroext true) #6
  %29 = ptrtoint ptr %pd_xlate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pd_xlate, align 4
  %arrayidx17.i = getelementptr ptr, ptr %30, i32 %i.0120
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %arrayidx17.i, align 4
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.body26.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body26.preheader:                             ; preds = %for.inc
  %arrayidx30 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 0
  %arrayidx34 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 1
  %call36 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx30, ptr noundef %arrayidx34) #6
  %arrayidx30.1 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 2
  %arrayidx34.1 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 3
  %call36.1 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx30.1, ptr noundef %arrayidx34.1) #6
  %arrayidx34.2 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 5
  %call36.2 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx30.1, ptr noundef %arrayidx34.2) #6
  %arrayidx34.3 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 4
  %call36.3 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx30.1, ptr noundef %arrayidx34.3) #6
  %arrayidx34.4 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 6
  %call36.4 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx34.1, ptr noundef %arrayidx34.4) #6
  %arrayidx34.5 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 9
  %call36.5 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx34.1, ptr noundef %arrayidx34.5) #6
  %arrayidx34.6 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 10
  %call36.6 = tail call i32 @pm_genpd_add_subdomain(ptr noundef %arrayidx34.1, ptr noundef %arrayidx34.6) #6
  %reset = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 5
  %owner = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %nr_resets, align 8
  %34 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bcm2835_reset_ops, ptr %reset, align 8
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %of_node44 = getelementptr inbounds %struct.bcm2835_power, ptr %call.i, i32 0, i32 5, i32 5
  %39 = ptrtoint ptr %of_node44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %of_node44, align 4
  %call46 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef %reset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %for.body26.preheader.fail_crit_edge

for.body26.preheader.fail_crit_edge:              ; preds = %for.body26.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end49:                                         ; preds = %for.body26.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent, align 8
  %of_node51 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node51, align 8
  %call53 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %43, ptr noundef %pd_xlate) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

fail:                                             ; preds = %for.body26.preheader.fail_crit_edge, %if.then.i.fail_crit_edge
  %ret.0 = phi i32 [ %call46, %for.body26.preheader.fail_crit_edge ], [ -517, %if.then.i.fail_crit_edge ]
  %name = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 10
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 8
  %tobool63.not = icmp eq ptr %45, null
  br i1 %tobool63.not, label %fail.if.end66_crit_edge, label %if.then64

fail.if.end66_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then64:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 0
  %call65 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %fail.if.end66_crit_edge
  %name.1 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 10
  %46 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.1, align 8
  %tobool63.not.1 = icmp eq ptr %47, null
  br i1 %tobool63.not.1, label %if.end66.if.end66.1_crit_edge, label %if.then64.1

if.end66.if.end66.1_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.1

if.then64.1:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.1 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 1
  %call65.1 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.1) #6
  br label %if.end66.1

if.end66.1:                                       ; preds = %if.then64.1, %if.end66.if.end66.1_crit_edge
  %name.2 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 2, i32 0, i32 10
  %48 = ptrtoint ptr %name.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.2, align 8
  %tobool63.not.2 = icmp eq ptr %49, null
  br i1 %tobool63.not.2, label %if.end66.1.if.end66.2_crit_edge, label %if.then64.2

if.end66.1.if.end66.2_crit_edge:                  ; preds = %if.end66.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.2

if.then64.2:                                      ; preds = %if.end66.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.2 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 2
  %call65.2 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.2) #6
  br label %if.end66.2

if.end66.2:                                       ; preds = %if.then64.2, %if.end66.1.if.end66.2_crit_edge
  %name.3 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 3, i32 0, i32 10
  %50 = ptrtoint ptr %name.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name.3, align 8
  %tobool63.not.3 = icmp eq ptr %51, null
  br i1 %tobool63.not.3, label %if.end66.2.if.end66.3_crit_edge, label %if.then64.3

if.end66.2.if.end66.3_crit_edge:                  ; preds = %if.end66.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.3

if.then64.3:                                      ; preds = %if.end66.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.3 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 3
  %call65.3 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.3) #6
  br label %if.end66.3

if.end66.3:                                       ; preds = %if.then64.3, %if.end66.2.if.end66.3_crit_edge
  %name.4 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 4, i32 0, i32 10
  %52 = ptrtoint ptr %name.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name.4, align 8
  %tobool63.not.4 = icmp eq ptr %53, null
  br i1 %tobool63.not.4, label %if.end66.3.if.end66.4_crit_edge, label %if.then64.4

if.end66.3.if.end66.4_crit_edge:                  ; preds = %if.end66.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.4

if.then64.4:                                      ; preds = %if.end66.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.4 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 4
  %call65.4 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.4) #6
  br label %if.end66.4

if.end66.4:                                       ; preds = %if.then64.4, %if.end66.3.if.end66.4_crit_edge
  %name.5 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 5, i32 0, i32 10
  %54 = ptrtoint ptr %name.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.5, align 8
  %tobool63.not.5 = icmp eq ptr %55, null
  br i1 %tobool63.not.5, label %if.end66.4.if.end66.5_crit_edge, label %if.then64.5

if.end66.4.if.end66.5_crit_edge:                  ; preds = %if.end66.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.5

if.then64.5:                                      ; preds = %if.end66.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.5 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 5
  %call65.5 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.5) #6
  br label %if.end66.5

if.end66.5:                                       ; preds = %if.then64.5, %if.end66.4.if.end66.5_crit_edge
  %name.6 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 6, i32 0, i32 10
  %56 = ptrtoint ptr %name.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.6, align 8
  %tobool63.not.6 = icmp eq ptr %57, null
  br i1 %tobool63.not.6, label %if.end66.5.if.end66.6_crit_edge, label %if.then64.6

if.end66.5.if.end66.6_crit_edge:                  ; preds = %if.end66.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.6

if.then64.6:                                      ; preds = %if.end66.5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.6 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 6
  %call65.6 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.6) #6
  br label %if.end66.6

if.end66.6:                                       ; preds = %if.then64.6, %if.end66.5.if.end66.6_crit_edge
  %name.7 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 7, i32 0, i32 10
  %58 = ptrtoint ptr %name.7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name.7, align 8
  %tobool63.not.7 = icmp eq ptr %59, null
  br i1 %tobool63.not.7, label %if.end66.6.if.end66.7_crit_edge, label %if.then64.7

if.end66.6.if.end66.7_crit_edge:                  ; preds = %if.end66.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.7

if.then64.7:                                      ; preds = %if.end66.6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.7 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 7
  %call65.7 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.7) #6
  br label %if.end66.7

if.end66.7:                                       ; preds = %if.then64.7, %if.end66.6.if.end66.7_crit_edge
  %name.8 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 8, i32 0, i32 10
  %60 = ptrtoint ptr %name.8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name.8, align 8
  %tobool63.not.8 = icmp eq ptr %61, null
  br i1 %tobool63.not.8, label %if.end66.7.if.end66.8_crit_edge, label %if.then64.8

if.end66.7.if.end66.8_crit_edge:                  ; preds = %if.end66.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.8

if.then64.8:                                      ; preds = %if.end66.7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.8 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 8
  %call65.8 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.8) #6
  br label %if.end66.8

if.end66.8:                                       ; preds = %if.then64.8, %if.end66.7.if.end66.8_crit_edge
  %name.9 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 9, i32 0, i32 10
  %62 = ptrtoint ptr %name.9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.9, align 8
  %tobool63.not.9 = icmp eq ptr %63, null
  br i1 %tobool63.not.9, label %if.end66.8.if.end66.9_crit_edge, label %if.then64.9

if.end66.8.if.end66.9_crit_edge:                  ; preds = %if.end66.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.9

if.then64.9:                                      ; preds = %if.end66.8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.9 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 9
  %call65.9 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.9) #6
  br label %if.end66.9

if.end66.9:                                       ; preds = %if.then64.9, %if.end66.8.if.end66.9_crit_edge
  %name.10 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 10, i32 0, i32 10
  %64 = ptrtoint ptr %name.10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.10, align 8
  %tobool63.not.10 = icmp eq ptr %65, null
  br i1 %tobool63.not.10, label %if.end66.9.if.end66.10_crit_edge, label %if.then64.10

if.end66.9.if.end66.10_crit_edge:                 ; preds = %if.end66.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.10

if.then64.10:                                     ; preds = %if.end66.9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.10 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 10
  %call65.10 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.10) #6
  br label %if.end66.10

if.end66.10:                                      ; preds = %if.then64.10, %if.end66.9.if.end66.10_crit_edge
  %name.11 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 11, i32 0, i32 10
  %66 = ptrtoint ptr %name.11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.11, align 8
  %tobool63.not.11 = icmp eq ptr %67, null
  br i1 %tobool63.not.11, label %if.end66.10.if.end66.11_crit_edge, label %if.then64.11

if.end66.10.if.end66.11_crit_edge:                ; preds = %if.end66.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.11

if.then64.11:                                     ; preds = %if.end66.10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.11 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 11
  %call65.11 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.11) #6
  br label %if.end66.11

if.end66.11:                                      ; preds = %if.then64.11, %if.end66.10.if.end66.11_crit_edge
  %name.12 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 12, i32 0, i32 10
  %68 = ptrtoint ptr %name.12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.12, align 8
  %tobool63.not.12 = icmp eq ptr %69, null
  br i1 %tobool63.not.12, label %if.end66.11.cleanup_crit_edge, label %if.then64.12

if.end66.11.cleanup_crit_edge:                    ; preds = %if.end66.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64.12:                                     ; preds = %if.end66.11
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.12 = getelementptr %struct.bcm2835_power, ptr %call.i, i32 0, i32 4, i32 12
  %call65.12 = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx61.12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64.12, %if.end66.11.cleanup_crit_edge, %if.end49, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %ret.0, %if.then64.12 ], [ %ret.0, %if.end66.11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_power_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_power_pd_power_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 8
  %domain2 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end103 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
    i32 6, label %do.body
    i32 7, label %do.body16
    i32 8, label %do.body27
    i32 11, label %do.body38
    i32 12, label %do.body49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @bcm2835_power_power_on(ptr noundef %domain, i32 noundef 268)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %domain, i32 noundef 268, i32 noundef 12, i32 noundef 8, i32 noundef 64)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @bcm2835_power_power_on(ptr noundef %domain, i32 noundef 264)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %domain, i32 noundef 264, i32 noundef 0, i32 noundef 0, i32 noundef 64)
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %domain, i32 noundef 264, i32 noundef 20, i32 noundef 16, i32 noundef 256)
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @bcm2835_asb_power_on(ptr noundef %domain, i32 noundef 264, i32 noundef 28, i32 noundef 24, i32 noundef 128)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777306) #6, !srcloc !120
  br label %cleanup

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %base19 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base19, align 4
  %add.ptr20 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base19, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 83886170) #6, !srcloc !120
  br label %cleanup

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base30 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base30, align 4
  %add.ptr31 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base30, align 4
  %add.ptr36 = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 83886170) #6, !srcloc !120
  br label %cleanup

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %base41 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base41, align 4
  %add.ptr42 = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base41, align 4
  %add.ptr47 = getelementptr i8, ptr %18, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 50331738) #6, !srcloc !120
  br label %cleanup

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %base52 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base52, align 4
  %add.ptr53 = getelementptr i8, ptr %20, i32 88
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %22 = or i32 %21, 2138
  %23 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base52, align 4
  %add.ptr59 = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %22) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base52, align 4
  %add.ptr66 = getelementptr i8, ptr %26, i32 88
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %28 = or i32 %27, 16777306
  %29 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base52, align 4
  %add.ptr73 = getelementptr i8, ptr %30, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %28) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base52, align 4
  %add.ptr80 = getelementptr i8, ptr %32, i32 88
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %34 = and i32 %33, -33554523
  %35 = or i32 %34, 90
  %36 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base52, align 4
  %add.ptr86 = getelementptr i8, ptr %37, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %35) #6, !srcloc !120
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base52, align 4
  %add.ptr93 = getelementptr i8, ptr %39, i32 88
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %41 = and i32 %40, -2139
  %42 = or i32 %41, 90
  %43 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base52, align 4
  %add.ptr100 = getelementptr i8, ptr %44, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %42) #6, !srcloc !120
  br label %cleanup

do.end103:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.10, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %do.body49, %do.body38, %do.body27, %do.body16, %do.body, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end103 ], [ 0, %do.body49 ], [ 0, %do.body38 ], [ 0, %do.body27 ], [ 0, %do.body16 ], [ 0, %do.body ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_power_pd_power_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 8
  %domain2 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %do.end75 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
    i32 6, label %do.body
    i32 7, label %do.body16
    i32 8, label %do.body27
    i32 11, label %do.body38
    i32 12, label %do.body49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 268
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %8 = and i32 %7, -536871003
  %9 = or i32 %8, 90
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %13, i32 268
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %15 = and i32 %14, -67108955
  %16 = or i32 %15, 90
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %18, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %16) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %20, i32 268
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %22 = and i32 %21, -16777307
  %23 = or i32 %22, 90
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %25, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %23) #6, !srcloc !120
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %domain, i32 noundef 268, i32 noundef 12, i32 noundef 8, i32 noundef 64)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %base.i98 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %27, i32 264
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %29 = and i32 %28, -536871003
  %30 = or i32 %29, 90
  %31 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i98, align 4
  %add.ptr4.i100 = getelementptr i8, ptr %32, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i100, i32 %30) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i98, align 4
  %add.ptr11.i101 = getelementptr i8, ptr %34, i32 264
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i101) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %36 = and i32 %35, -67108955
  %37 = or i32 %36, 90
  %38 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i98, align 4
  %add.ptr18.i102 = getelementptr i8, ptr %39, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i102, i32 %37) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i98, align 4
  %add.ptr25.i103 = getelementptr i8, ptr %41, i32 264
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i103) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %43 = and i32 %42, -16777307
  %44 = or i32 %43, 90
  %45 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i98, align 4
  %add.ptr32.i104 = getelementptr i8, ptr %46, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i104, i32 %44) #6, !srcloc !120
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.bcm2835_power_domain, ptr %domain, i32 0, i32 3
  %47 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %base16.i = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %base16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base16.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %50, i32 264
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %52 = and i32 %51, -1073741915
  %53 = or i32 %52, 90
  %54 = ptrtoint ptr %base16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base16.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %55, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %53) #6, !srcloc !120
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %domain, i32 noundef 264, i32 noundef 20, i32 noundef 16, i32 noundef 256)
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @bcm2835_asb_power_off(ptr noundef %domain, i32 noundef 264, i32 noundef 28, i32 noundef 24, i32 noundef 128)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %57, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 90) #6, !srcloc !120
  br label %cleanup

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %base19 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base19, align 4
  %add.ptr20 = getelementptr i8, ptr %59, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base19, align 4
  %add.ptr25 = getelementptr i8, ptr %61, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 90) #6, !srcloc !120
  br label %cleanup

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %base30 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base30, align 4
  %add.ptr31 = getelementptr i8, ptr %63, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base30, align 4
  %add.ptr36 = getelementptr i8, ptr %65, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 90) #6, !srcloc !120
  br label %cleanup

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %base41 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base41, align 4
  %add.ptr42 = getelementptr i8, ptr %67, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 16777306) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base41, align 4
  %add.ptr47 = getelementptr i8, ptr %69, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 90) #6, !srcloc !120
  br label %cleanup

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %base52 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base52, align 4
  %add.ptr53 = getelementptr i8, ptr %71, i32 88
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %73 = or i32 %72, 33554522
  %74 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base52, align 4
  %add.ptr59 = getelementptr i8, ptr %75, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %73) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base52, align 4
  %add.ptr66 = getelementptr i8, ptr %77, i32 88
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %79 = and i32 %78, -16777307
  %80 = or i32 %79, 90
  %81 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base52, align 4
  %add.ptr72 = getelementptr i8, ptr %82, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %80) #6, !srcloc !120
  br label %cleanup

do.end75:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.10, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.body49, %do.body38, %do.body27, %do.body16, %do.body, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end75 ], [ 0, %do.body49 ], [ 0, %do.body38 ], [ 0, %do.body27 ], [ 0, %do.body16 ], [ 0, %do.body ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ %call4, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_power_power_on(ptr nocapture noundef readonly %pd, i32 noundef %pm_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pm_reg
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 %pm_reg
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %11 = and i32 %10, -23068763
  %12 = or i32 %11, 16777306
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #6, !srcloc !120
  %call.i = tail call i64 @ktime_get() #6
  br label %while.cond

while.cond:                                       ; preds = %do.end32.while.cond_crit_edge, %do.body.preheader
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 %pm_reg
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %18 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %do.end32, label %while.cond.for.inc_crit_edge

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end32:                                         ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !159
  %call.i191 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call.i191, %call.i
  %cmp38 = icmp ugt i64 %sub, 2999
  br i1 %cmp38, label %do.end32.for.inc_crit_edge, label %do.end32.while.cond_crit_edge

do.end32.while.cond_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end32.for.inc_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %do.end32.for.inc_crit_edge, %while.cond.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr7.1 = getelementptr i8, ptr %20, i32 %pm_reg
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %22 = and i32 %21, -23068763
  %23 = or i32 %22, 18874458
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr15.1 = getelementptr i8, ptr %25, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.1, i32 %23) #6, !srcloc !120
  %call.i.1 = tail call i64 @ktime_get() #6
  br label %while.cond.1

while.cond.1:                                     ; preds = %do.end32.1.while.cond.1_crit_edge, %for.inc
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr20.1 = getelementptr i8, ptr %27, i32 %pm_reg
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.1) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not.1 = icmp eq i32 %29, 0
  br i1 %tobool25.not.1, label %do.end32.1, label %while.cond.1.for.inc.1_crit_edge

while.cond.1.for.inc.1_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

do.end32.1:                                       ; preds = %while.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !159
  %call.i191.1 = tail call i64 @ktime_get() #6
  %sub.1 = sub i64 %call.i191.1, %call.i.1
  %cmp38.1 = icmp ugt i64 %sub.1, 2999
  br i1 %cmp38.1, label %do.end32.1.for.inc.1_crit_edge, label %do.end32.1.while.cond.1_crit_edge

do.end32.1.while.cond.1_crit_edge:                ; preds = %do.end32.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.1

do.end32.1.for.inc.1_crit_edge:                   ; preds = %do.end32.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end32.1.for.inc.1_crit_edge, %while.cond.1.for.inc.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr7.2 = getelementptr i8, ptr %31, i32 %pm_reg
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %33 = and i32 %32, -23068763
  %34 = or i32 %33, 20971610
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr15.2 = getelementptr i8, ptr %36, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.2, i32 %34) #6, !srcloc !120
  %call.i.2 = tail call i64 @ktime_get() #6
  br label %while.cond.2

while.cond.2:                                     ; preds = %do.end32.2.while.cond.2_crit_edge, %for.inc.1
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr20.2 = getelementptr i8, ptr %38, i32 %pm_reg
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.2) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %40 = and i32 %39, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool25.not.2 = icmp eq i32 %40, 0
  br i1 %tobool25.not.2, label %do.end32.2, label %while.cond.2.for.inc.2_crit_edge

while.cond.2.for.inc.2_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

do.end32.2:                                       ; preds = %while.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !159
  %call.i191.2 = tail call i64 @ktime_get() #6
  %sub.2 = sub i64 %call.i191.2, %call.i.2
  %cmp38.2 = icmp ugt i64 %sub.2, 2999
  br i1 %cmp38.2, label %do.end32.2.for.inc.2_crit_edge, label %do.end32.2.while.cond.2_crit_edge

do.end32.2.while.cond.2_crit_edge:                ; preds = %do.end32.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.2

do.end32.2.for.inc.2_crit_edge:                   ; preds = %do.end32.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end32.2.for.inc.2_crit_edge, %while.cond.2.for.inc.2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr7.3 = getelementptr i8, ptr %42, i32 %pm_reg
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %44 = or i32 %43, 23068762
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr15.3 = getelementptr i8, ptr %46, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.3, i32 %44) #6, !srcloc !120
  %call.i.3 = tail call i64 @ktime_get() #6
  br label %while.cond.3

while.cond.3:                                     ; preds = %do.end32.3.while.cond.3_crit_edge, %for.inc.2
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr20.3 = getelementptr i8, ptr %48, i32 %pm_reg
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.3) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %50 = and i32 %49, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool25.not.3 = icmp eq i32 %50, 0
  br i1 %tobool25.not.3, label %do.end32.3, label %do.body48

do.end32.3:                                       ; preds = %while.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !159
  %call.i191.3 = tail call i64 @ktime_get() #6
  %sub.3 = sub i64 %call.i191.3, %call.i.3
  %cmp38.3 = icmp ugt i64 %sub.3, 2999
  br i1 %cmp38.3, label %do.end45, label %do.end32.3.while.cond.3_crit_edge

do.end32.3.while.cond.3_crit_edge:                ; preds = %do.end32.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.3

do.end45:                                         ; preds = %do.end32.3
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef %52) #9
  br label %do.body137

do.body48:                                        ; preds = %while.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr54 = getelementptr i8, ptr %54, i32 %pm_reg
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %56 = or i32 %55, 67108954
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %58, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %56) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %60, i32 %pm_reg
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %62 = or i32 %61, 134217818
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %64, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %62) #6, !srcloc !120
  %call.i192 = tail call i64 @ktime_get() #6
  br label %while.cond77

while.cond77:                                     ; preds = %do.end93.while.cond77_crit_edge, %do.body48
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr81 = getelementptr i8, ptr %66, i32 %pm_reg
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %68 = and i32 %67, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool86.not = icmp eq i32 %68, 0
  br i1 %tobool86.not, label %do.end93, label %do.body109

do.end93:                                         ; preds = %while.cond77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !166
  %call.i193 = tail call i64 @ktime_get() #6
  %sub99 = sub i64 %call.i193, %call.i192
  %cmp100 = icmp ugt i64 %sub99, 999
  br i1 %cmp100, label %do.end104, label %do.end93.while.cond77_crit_edge

do.end93.while.cond77_crit_edge:                  ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond77

do.end104:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  %name106 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %69 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name106, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr129 = getelementptr i8, ptr %72, i32 %pm_reg
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %74 = and i32 %73, -67108955
  %75 = or i32 %74, 90
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr136 = getelementptr i8, ptr %77, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %75) #6, !srcloc !120
  br label %do.body137

do.body109:                                       ; preds = %while.cond77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr115 = getelementptr i8, ptr %79, i32 %pm_reg
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %81 = or i32 %80, 536871002
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr122 = getelementptr i8, ptr %83, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %81) #6, !srcloc !120
  br label %cleanup

do.body137:                                       ; preds = %do.end104, %do.end45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr143 = getelementptr i8, ptr %85, i32 %pm_reg
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %87 = and i32 %86, -23068763
  %88 = or i32 %87, 90
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr150 = getelementptr i8, ptr %90, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %88) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %do.body137, %do.body109, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.body137 ], [ 0, %do.body109 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_asb_power_on(ptr nocapture noundef readonly %pd, i32 noundef %pm_reg, i32 noundef %asb_m_reg, i32 noundef %asb_s_reg, i32 noundef %reset_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 8
  %clk = getelementptr inbounds %struct.bcm2835_power_domain, ptr %pd, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %base6 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base6, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %pm_reg
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %or = or i32 %14, %reset_flags
  %or9 = or i32 %or, 1509949440
  %15 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %16 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base6, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %15) #6, !srcloc !120
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 8
  %call.i87 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i91, label %if.end.do.end18_crit_edge

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

if.end.i91:                                       ; preds = %if.end
  %call1.i89 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool2.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool2.not.i90, label %if.end22, label %if.then3.i92

if.then3.i92:                                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i92, %if.end.do.end18_crit_edge
  %retval.0.i93.ph = phi i32 [ %call1.i89, %if.then3.i92 ], [ %call.i87, %if.end.do.end18_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %name21 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %22 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef %23) #9
  br label %do.body45

if.end22:                                         ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asb_m_reg)
  %tobool.not.i95 = icmp eq i32 %asb_m_reg, 0
  br i1 %tobool.not.i95, label %if.end22.if.end32_crit_edge, label %if.end.i96

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.i96:                                       ; preds = %if.end22
  %call.i.i = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %asb.i = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 %asb_m_reg
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %27 = and i32 %26, -16777307
  %28 = or i32 %27, 90
  %29 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asb.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %30, i32 %asb_m_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %28) #6, !srcloc !120
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end18.i.while.cond.i_crit_edge, %if.end.i96
  %31 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asb.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %32, i32 %asb_m_reg
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %34 = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not.i = icmp eq i32 %34, 0
  br i1 %tobool13.not.i, label %while.cond.i.if.end32_crit_edge, label %do.end18.i

while.cond.i.if.end32_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end18.i:                                       ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !179
  %call.i31.i = tail call i64 @ktime_get() #6
  %sub.i = sub i64 %call.i31.i, %call.i.i
  %cmp.i = icmp ugt i64 %sub.i, 999
  br i1 %cmp.i, label %do.end28, label %do.end18.i.while.cond.i_crit_edge

do.end18.i.while.cond.i_crit_edge:                ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

do.end28:                                         ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %name31 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %37 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.22, ptr noundef %38) #9
  br label %err_disable_clk

if.end32:                                         ; preds = %while.cond.i.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asb_s_reg)
  %tobool.not.i98 = icmp eq i32 %asb_s_reg, 0
  br i1 %tobool.not.i98, label %if.end32.cleanup_crit_edge, label %if.end.i103

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i103:                                      ; preds = %if.end32
  %call.i.i99 = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %asb.i100 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asb.i100, align 8
  %add.ptr.i101 = getelementptr i8, ptr %40, i32 %asb_s_reg
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %42 = and i32 %41, -16777307
  %43 = or i32 %42, 90
  %44 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asb.i100, align 8
  %add.ptr4.i102 = getelementptr i8, ptr %45, i32 %asb_s_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i102, i32 %43) #6, !srcloc !120
  br label %while.cond.i106

while.cond.i106:                                  ; preds = %do.end18.i110.while.cond.i106_crit_edge, %if.end.i103
  %46 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asb.i100, align 8
  %add.ptr8.i104 = getelementptr i8, ptr %47, i32 %asb_s_reg
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i104) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %49 = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool13.not.i105 = icmp eq i32 %49, 0
  br i1 %tobool13.not.i105, label %while.cond.i106.cleanup_crit_edge, label %do.end18.i110

while.cond.i106.cleanup_crit_edge:                ; preds = %while.cond.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18.i110:                                    ; preds = %while.cond.i106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !179
  %call.i31.i107 = tail call i64 @ktime_get() #6
  %sub.i108 = sub i64 %call.i31.i107, %call.i.i99
  %cmp.i109 = icmp ugt i64 %sub.i108, 999
  br i1 %cmp.i109, label %do.end38, label %do.end18.i110.while.cond.i106_crit_edge

do.end18.i110.while.cond.i106_crit_edge:          ; preds = %do.end18.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i106

do.end38:                                         ; preds = %do.end18.i110
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %name41 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %52 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.25, ptr noundef %53) #9
  br i1 %tobool.not.i95, label %do.end38.err_disable_clk_crit_edge, label %if.end.i117

do.end38.err_disable_clk_crit_edge:               ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

if.end.i117:                                      ; preds = %do.end38
  %call.i.i114 = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %asb.i100, align 8
  %add.ptr.i116 = getelementptr i8, ptr %55, i32 %asb_m_reg
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %57 = or i32 %56, 16777306
  %58 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asb.i100, align 8
  %add.ptr5.i = getelementptr i8, ptr %59, i32 %asb_m_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %57) #6, !srcloc !120
  br label %while.cond.i119

while.cond.i119:                                  ; preds = %do.end18.i123.while.cond.i119_crit_edge, %if.end.i117
  %60 = ptrtoint ptr %asb.i100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asb.i100, align 8
  %add.ptr9.i = getelementptr i8, ptr %61, i32 %asb_m_reg
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %63 = and i32 %62, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.i118 = icmp eq i32 %63, 0
  br i1 %tobool13.not.i118, label %do.end18.i123, label %while.cond.i119.err_disable_clk_crit_edge

while.cond.i119.err_disable_clk_crit_edge:        ; preds = %while.cond.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

do.end18.i123:                                    ; preds = %while.cond.i119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !184
  %call.i31.i120 = tail call i64 @ktime_get() #6
  %sub.i121 = sub i64 %call.i31.i120, %call.i.i114
  %cmp.i122 = icmp ugt i64 %sub.i121, 999
  br i1 %cmp.i122, label %do.end18.i123.err_disable_clk_crit_edge, label %do.end18.i123.while.cond.i119_crit_edge

do.end18.i123.while.cond.i119_crit_edge:          ; preds = %do.end18.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i119

do.end18.i123.err_disable_clk_crit_edge:          ; preds = %do.end18.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %do.end18.i123.err_disable_clk_crit_edge, %while.cond.i119.err_disable_clk_crit_edge, %do.end38.err_disable_clk_crit_edge, %do.end28
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %65) #6
  tail call void @clk_unprepare(ptr noundef %65) #6
  br label %do.body45

do.body45:                                        ; preds = %err_disable_clk, %do.end18
  %ret.1 = phi i32 [ %retval.0.i93.ph, %do.end18 ], [ -110, %err_disable_clk ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base6, align 4
  %add.ptr51 = getelementptr i8, ptr %67, i32 %pm_reg
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #6, !srcloc !117
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %neg = xor i32 %reset_flags, -1
  %and = and i32 %69, %neg
  %or55 = or i32 %and, 1509949440
  %70 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %71 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base6, align 4
  %add.ptr57 = getelementptr i8, ptr %72, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %70) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %while.cond.i106.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %do.body45 ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %while.cond.i106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_asb_power_off(ptr nocapture noundef readonly %pd, i32 noundef %pm_reg, i32 noundef %asb_m_reg, i32 noundef %asb_s_reg, i32 noundef %reset_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.bcm2835_power_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asb_s_reg)
  %tobool.not.i = icmp eq i32 %asb_s_reg, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %asb.i = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %asb_s_reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %5 = or i32 %4, 16777306
  %6 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asb.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %7, i32 %asb_s_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %5) #6, !srcloc !120
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end18.i.while.cond.i_crit_edge, %if.end.i
  %8 = ptrtoint ptr %asb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asb.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %9, i32 %asb_s_reg
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not.i = icmp eq i32 %11, 0
  br i1 %tobool13.not.i, label %do.end18.i, label %while.cond.i.if.end_crit_edge

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end18.i:                                       ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !184
  %call.i31.i = tail call i64 @ktime_get() #6
  %sub.i = sub i64 %call.i31.i, %call.i.i
  %cmp.i = icmp ugt i64 %sub.i, 999
  br i1 %cmp.i, label %do.end, label %do.end18.i.while.cond.i_crit_edge

do.end18.i.while.cond.i_crit_edge:                ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

do.end:                                           ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.28, ptr noundef %15) #9
  br label %cleanup

if.end:                                           ; preds = %while.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asb_m_reg)
  %tobool.not.i36 = icmp eq i32 %asb_m_reg, 0
  br i1 %tobool.not.i36, label %if.end.if.end12_crit_edge, label %if.end.i41

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.i41:                                       ; preds = %if.end
  %call.i.i37 = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %asb.i38 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asb.i38, align 8
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 %asb_m_reg
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %19 = or i32 %18, 16777306
  %20 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asb.i38, align 8
  %add.ptr5.i40 = getelementptr i8, ptr %21, i32 %asb_m_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i40, i32 %19) #6, !srcloc !120
  br label %while.cond.i44

while.cond.i44:                                   ; preds = %do.end18.i48.while.cond.i44_crit_edge, %if.end.i41
  %22 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asb.i38, align 8
  %add.ptr9.i42 = getelementptr i8, ptr %23, i32 %asb_m_reg
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i42) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not.i43 = icmp eq i32 %25, 0
  br i1 %tobool13.not.i43, label %do.end18.i48, label %while.cond.i44.if.end12_crit_edge

while.cond.i44.if.end12_crit_edge:                ; preds = %while.cond.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end18.i48:                                     ; preds = %while.cond.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !184
  %call.i31.i45 = tail call i64 @ktime_get() #6
  %sub.i46 = sub i64 %call.i31.i45, %call.i.i37
  %cmp.i47 = icmp ugt i64 %sub.i46, 999
  br i1 %cmp.i47, label %do.end7, label %do.end18.i48.while.cond.i44_crit_edge

do.end18.i48.while.cond.i44_crit_edge:            ; preds = %do.end18.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i44

do.end7:                                          ; preds = %do.end18.i48
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %name10 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %28 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef %29) #9
  br i1 %tobool.not.i, label %do.end7.cleanup_crit_edge, label %if.end.i55

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i55:                                       ; preds = %do.end7
  %call.i.i52 = tail call i64 @ktime_get() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asb.i38, align 8
  %add.ptr.i54 = getelementptr i8, ptr %31, i32 %asb_s_reg
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %33 = and i32 %32, -16777307
  %34 = or i32 %33, 90
  %35 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asb.i38, align 8
  %add.ptr4.i = getelementptr i8, ptr %36, i32 %asb_s_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %34) #6, !srcloc !120
  br label %while.cond.i57

while.cond.i57:                                   ; preds = %do.end18.i61.while.cond.i57_crit_edge, %if.end.i55
  %37 = ptrtoint ptr %asb.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asb.i38, align 8
  %add.ptr8.i = getelementptr i8, ptr %38, i32 %asb_s_reg
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %40 = and i32 %39, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool13.not.i56 = icmp eq i32 %40, 0
  br i1 %tobool13.not.i56, label %while.cond.i57.cleanup_crit_edge, label %do.end18.i61

while.cond.i57.cleanup_crit_edge:                 ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18.i61:                                     ; preds = %while.cond.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !179
  %call.i31.i58 = tail call i64 @ktime_get() #6
  %sub.i59 = sub i64 %call.i31.i58, %call.i.i52
  %cmp.i60 = icmp ugt i64 %sub.i59, 999
  br i1 %cmp.i60, label %do.end18.i61.cleanup_crit_edge, label %do.end18.i61.while.cond.i57_crit_edge

do.end18.i61.while.cond.i57_crit_edge:            ; preds = %do.end18.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i57

do.end18.i61.cleanup_crit_edge:                   ; preds = %do.end18.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %while.cond.i44.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %clk = getelementptr inbounds %struct.bcm2835_power_domain, ptr %pd, i32 0, i32 3
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %base16 = getelementptr inbounds %struct.bcm2835_power, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base16, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 %pm_reg
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %neg = xor i32 %reset_flags, -1
  %and = and i32 %46, %neg
  %or = or i32 %and, 1509949440
  %47 = tail call i32 @llvm.bswap.i32(i32 %or)
  %48 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base16, align 4
  %add.ptr20 = getelementptr i8, ptr %49, i32 %pm_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %47) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end18.i61.cleanup_crit_edge, %while.cond.i57.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -110, %do.end7.cleanup_crit_edge ], [ -110, %while.cond.i57.cleanup_crit_edge ], [ -110, %do.end18.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_reset_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %id)
  %0 = icmp ult i32 %id, 3
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -17808
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef %id) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.bcm2835_reset_reset, i32 0, i32 %id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx6 = getelementptr i8, ptr %rcdev, i32 %switch.load
  %call = tail call i32 @bcm2835_power_pd_power_off(ptr noundef %arrayidx6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @bcm2835_power_pd_power_on(ptr noundef %arrayidx6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call8, %if.end ], [ %call, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 1, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr i8, ptr %rcdev, i32 -17804
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base7 = getelementptr i8, ptr %rcdev, i32 -17804
  %4 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base7, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  %lnot.ext14 = zext i1 %tobool12.not to i32
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base18 = getelementptr i8, ptr %rcdev, i32 -17804
  %7 = ptrtoint ptr %base18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base18, align 4
  %add.ptr19 = getelementptr i8, ptr %8, i32 256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  %lnot.ext25 = zext i1 %tobool23.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext25, %sw.bb15 ], [ %lnot.ext14, %sw.bb4 ], [ %lnot.ext, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_bcm2835_power__170_692_bcm2835_power_driver_init6, !1, !"__initcall__kmod_bcm2835_power__170_692_bcm2835_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 692, i32 1}
!2 = !{ptr @__exitcall_bcm2835_power_driver_exit, !1, !"__exitcall_bcm2835_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 694, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 695, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 696, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 689, i32 11}
!12 = !{ptr @bcm2835_power_driver, !13, !"bcm2835_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 685, i32 31}
!14 = distinct !{null, !15, !"domain_deps", i1 false, i1 false}
!15 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 609, i32 4}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 632, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm2835_power_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm2835_power_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 667, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bcm2835_power_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcm2835_power_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 420, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bcm2835_power_pd_power_on._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm2835_power_pd_power_on._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 239, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm2835_power_power_on._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm2835_power_power_on._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 254, i32 4}
!41 = !{ptr @bcm2835_power_power_on._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm2835_power_power_on._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 284, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm2835_asb_power_on._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm2835_asb_power_on._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @bcm2835_asb_power_on._entry.19, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 299, i32 3}
!50 = !{ptr @bcm2835_asb_power_on._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 306, i32 3}
!53 = !{ptr @bcm2835_asb_power_on._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bcm2835_asb_power_on._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 312, i32 3}
!57 = !{ptr @bcm2835_asb_power_on._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bcm2835_asb_power_on._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 483, i32 3}
!61 = !{ptr @bcm2835_power_pd_power_off._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bcm2835_power_pd_power_off._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 339, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bcm2835_asb_power_off._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @bcm2835_asb_power_off._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 345, i32 3}
!71 = !{ptr @bcm2835_asb_power_off._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bcm2835_asb_power_off._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 585, i32 33}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 586, i32 37}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 588, i32 33}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 589, i32 38}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 591, i32 37}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 590, i32 38}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 593, i32 31}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 594, i32 32}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 595, i32 32}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 596, i32 32}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 597, i32 32}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 598, i32 34}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 599, i32 32}
!99 = !{ptr @power_domain_names, !100, !"power_domain_names", i1 false, i1 false}
!100 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 584, i32 26}
!101 = !{ptr @bcm2835_reset_ops, !102, !"bcm2835_reset_ops", i1 false, i1 false}
!102 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 579, i32 39}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/bcm/bcm2835-power.c", i32 550, i32 3}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @bcm2835_reset_reset._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @bcm2835_reset_reset._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 3086540}
!118 = !{i64 2152695221}
!119 = !{i64 2152658014}
!120 = !{i64 3086122}
!121 = !{i64 2152658759}
!122 = !{i64 2152659644}
!123 = !{i64 2152660479}
!124 = !{i64 2152661364}
!125 = !{i64 2152662200}
!126 = !{i64 2152663085}
!127 = !{i64 2152664978}
!128 = !{i64 2152666004}
!129 = !{i64 2152667542}
!130 = !{i64 2152668566}
!131 = !{i64 2152670107}
!132 = !{i64 2152671135}
!133 = !{i64 2152672682}
!134 = !{i64 2152673712}
!135 = !{i64 2152609811}
!136 = !{i64 2152610847}
!137 = !{i64 2152612398}
!138 = !{i64 2152613434}
!139 = !{i64 2152614985}
!140 = !{i64 2152616021}
!141 = !{i64 2152654866}
!142 = !{i64 2152655868}
!143 = !{i64 2152677321}
!144 = !{i64 2152677988}
!145 = !{i64 2152678597}
!146 = !{i64 2152679264}
!147 = !{i64 2152679873}
!148 = !{i64 2152680541}
!149 = !{i64 2152681150}
!150 = !{i64 2152682871}
!151 = !{i64 2152683895}
!152 = !{i64 2152685436}
!153 = !{i64 2152686464}
!154 = !{i64 2152616615}
!155 = !{i64 2152618313}
!156 = !{i64 2152619429}
!157 = !{i64 2152620060}
!158 = !{i64 2152620417}
!159 = !{i64 2152620259}
!160 = !{i64 2152623616}
!161 = !{i64 2152624648}
!162 = !{i64 2152626193}
!163 = !{i64 2152627225}
!164 = !{i64 2152627817}
!165 = !{i64 2152628174}
!166 = !{i64 2152628016}
!167 = !{i64 2152633999}
!168 = !{i64 2152635035}
!169 = !{i64 2152631418}
!170 = !{i64 2152632450}
!171 = !{i64 2152636644}
!172 = !{i64 2152637712}
!173 = !{i64 2152641387}
!174 = !{i64 2152642387}
!175 = !{i64 2152602937}
!176 = !{i64 2152603957}
!177 = !{i64 2152604531}
!178 = !{i64 2152604888}
!179 = !{i64 2152604730}
!180 = !{i64 2152606357}
!181 = !{i64 2152607373}
!182 = !{i64 2152607945}
!183 = !{i64 2152608302}
!184 = !{i64 2152608144}
!185 = !{i64 2152648955}
!186 = !{i64 2152649957}
!187 = !{i64 2152692872}
!188 = !{i64 2152693655}
!189 = !{i64 2152694438}
