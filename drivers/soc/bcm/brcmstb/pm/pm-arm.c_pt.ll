; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/brcmstb/pm/pm-arm.c_pt.bc'
source_filename = "../drivers/soc/bcm/brcmstb/pm/pm-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmstb_pm_control = type { ptr, ptr, [3 x %struct.brcmstb_memc], ptr, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.brcmstb_memc = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ddr_phy_ofdata = type { i8, i32, i32, i32, i32, i32 }
%struct.ddr_seq_ofdata = type { i8, i32 }
%struct.brcmstb_s3_params = type <{ [64 x i8], i32, i64, [4 x i32], i32, i64, [70 x i32], [2048 x i8], [2 x %struct.brcmstb_bootloader_dtu_table] }>
%struct.brcmstb_bootloader_dtu_table = type { [8192 x i32], [512 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@ctrl = internal global { %struct.brcmstb_pm_control, [32 x i8] } zeroinitializer, align 32
@brcmstb_pm_s3_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016brcmstb-pm: key loading failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmstb_pm_s3_finish\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/bcm/brcmstb/pm/pm-arm.c\00", [60 x i8] zeroinitializer }, align 32
@brcmstb_pm_s3_finish._entry_ptr = internal global ptr @brcmstb_pm_s3_finish._entry, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__initcall__kmod_pm_arm__291_833_brcmstb_pm_init6 = internal global ptr @brcmstb_pm_init, section ".initcall6.init", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,bcm74371a0\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@do_bsp_initiate_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013brcmstb-pm: error: timeout waiting for BSP (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_bsp_initiate_command\00", [40 x i8] zeroinitializer }, align 32
@do_bsp_initiate_command._entry_ptr = internal global ptr @do_bsp_initiate_command._entry, section ".printk_index", align 4
@brcmstb_pm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aon_ctrl_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brcmstb-pm\00", [21 x i8] zeroinitializer }, align 32
@aon_ctrl_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-aon-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013brcmstb-pm: error mapping AON_CTRL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmstb_pm_probe\00", [47 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr = internal global ptr @brcmstb_pm_probe._entry, section ".printk_index", align 4
@ddr_phy_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v71.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_71_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v72.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_72_0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v225.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_225_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v240.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_240_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-phy-v240.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_phy_240_1 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013brcmstb-pm: error mapping DDR PHY\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.11 = internal global ptr @brcmstb_pm_probe._entry.9, section ".printk_index", align 4
@ddr_shimphy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-ddr-shimphy-v1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014brcmstb-pm: too many MEMCs (max %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.14 = internal global ptr @brcmstb_pm_probe._entry.12, section ".printk_index", align 4
@brcmstb_pm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013brcmstb-pm: error mapping DDR SHIMPHY %d\0A\00", [52 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.17 = internal global ptr @brcmstb_pm_probe._entry.15, section ".printk_index", align 4
@brcmstb_memc_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.2.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr-rev-b.3.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq_b22 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-memc-ddr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ddr_seq }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013brcmstb-pm: error mapping DDR Sequencer %d\0A\00", [50 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.20 = internal global ptr @brcmstb_pm_probe._entry.18, section ".printk_index", align 4
@brcmstb_pm_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.8, ptr @.str.2, ptr @.str.22, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm_arm\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PM: supports warm boot:%d, method:%d, wboffs:%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"brcmstb-pm: PM: supports warm boot:%d, method:%d, wboffs:%x\0A\00", [35 x i8] zeroinitializer }, align 32
@sram_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmio-sram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013brcmstb-pm: SRAM not found\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.26 = internal global ptr @brcmstb_pm_probe._entry.24, section ".printk_index", align 4
@brcmstb_pm_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013brcmstb-pm: error setting up SRAM for PM\0A\00", [52 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.29 = internal global ptr @brcmstb_pm_probe._entry.27, section ".printk_index", align 4
@brcmstb_pm_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013brcmstb-pm: error mapping DMA memory\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.32 = internal global ptr @brcmstb_pm_probe._entry.30, section ".printk_index", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@brcmstb_pm_panic_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @brcmstb_pm_panic_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@brcmstb_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @brcmstb_pm_valid, ptr null, ptr null, ptr null, ptr @brcmstb_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014brcmstb-pm: PM: initialization failed with code %d\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmstb_pm_probe._entry_ptr.35 = internal global ptr @brcmstb_pm_probe._entry.33, section ".printk_index", align 4
@ddr_phy_71_1 = internal global { %struct.ddr_phy_ofdata, [40 x i8] } { %struct.ddr_phy_ofdata { i8 1, i32 12, i32 1, i32 44, i32 408, i32 -1 }, [40 x i8] zeroinitializer }, align 32
@ddr_phy_72_0 = internal global { %struct.ddr_phy_ofdata, [40 x i8] } { %struct.ddr_phy_ofdata { i8 1, i32 16, i32 1, i32 64, i32 676, i32 2212 }, [40 x i8] zeroinitializer }, align 32
@ddr_phy_225_1 = internal global { %struct.ddr_phy_ofdata, [40 x i8] } { %struct.ddr_phy_ofdata { i8 0, i32 4, i32 0, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ddr_phy_240_1 = internal global { %struct.ddr_phy_ofdata, [40 x i8] } { %struct.ddr_phy_ofdata { i8 1, i32 4, i32 0, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ddr_seq = internal constant { %struct.ddr_seq_ofdata, [24 x i8] } { %struct.ddr_seq_ofdata { i8 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@ddr_seq_b22 = internal constant { %struct.ddr_seq_ofdata, [24 x i8] } { %struct.ddr_seq_ofdata { i8 0, i32 44 }, [24 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@brcmstb_pm_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013brcmstb-pm: BSP handshake failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmstb_pm_handshake\00", [43 x i8] zeroinitializer }, align 32
@brcmstb_pm_handshake._entry_ptr = internal global ptr @brcmstb_pm_handshake._entry, section ".printk_index", align 4
@brcmstb_pm_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013brcmstb-pm: %s: standby failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmstb_pm_standby\00", [45 x i8] zeroinitializer }, align 32
@brcmstb_pm_standby._entry_ptr = internal global ptr @brcmstb_pm_standby._entry, section ".printk_index", align 4
@brcmstb_pm_do_s2_sz = external dso_local local_unnamed_addr constant i32, align 4
@brcmstb_pm_do_s2_sram = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@brcmstb_pm_copy_to_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013brcmstb-pm: standby code will not fit in SRAM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmstb_pm_copy_to_sram\00", [40 x i8] zeroinitializer }, align 32
@brcmstb_pm_copy_to_sram._entry_ptr = internal global ptr @brcmstb_pm_copy_to_sram._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 113, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 425, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 162, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 173, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"brcmstb_pm_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 821, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 823, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"aon_ctrl_dt_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 536, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 692, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"ddr_phy_dt_ids\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 580, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 713, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"ddr_shimphy_dt_ids\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 619, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 734, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 743, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"brcmstb_memc_of_match\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 624, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 755, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 775, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"sram_dt_ids\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 141, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 781, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 787, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 800, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"brcmstb_pm_panic_nb\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 676, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"brcmstb_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 531, i32 42 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 816, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"ddr_phy_71_1\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 550, i32 30 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"ddr_phy_72_0\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 559, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"ddr_phy_225_1\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 568, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"ddr_phy_240_1\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 574, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant [8 x i8] c"ddr_seq\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 615, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"ddr_seq_b22\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 610, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 326, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 197, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 498, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"brcmstb_pm_do_s2_sram\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 117, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [39 x i8] c"../drivers/soc/bcm/brcmstb/pm/pm-arm.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 362, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__initcall__kmod_pm_arm__291_833_brcmstb_pm_init6, ptr @brcmstb_pm_copy_to_sram._entry, ptr @brcmstb_pm_copy_to_sram._entry_ptr, ptr @brcmstb_pm_handshake._entry, ptr @brcmstb_pm_handshake._entry_ptr, ptr @brcmstb_pm_probe._entry, ptr @brcmstb_pm_probe._entry.12, ptr @brcmstb_pm_probe._entry.15, ptr @brcmstb_pm_probe._entry.18, ptr @brcmstb_pm_probe._entry.24, ptr @brcmstb_pm_probe._entry.27, ptr @brcmstb_pm_probe._entry.30, ptr @brcmstb_pm_probe._entry.33, ptr @brcmstb_pm_probe._entry.9, ptr @brcmstb_pm_probe._entry_ptr, ptr @brcmstb_pm_probe._entry_ptr.11, ptr @brcmstb_pm_probe._entry_ptr.14, ptr @brcmstb_pm_probe._entry_ptr.17, ptr @brcmstb_pm_probe._entry_ptr.20, ptr @brcmstb_pm_probe._entry_ptr.26, ptr @brcmstb_pm_probe._entry_ptr.29, ptr @brcmstb_pm_probe._entry_ptr.32, ptr @brcmstb_pm_probe._entry_ptr.35, ptr @brcmstb_pm_s3_finish._entry, ptr @brcmstb_pm_s3_finish._entry_ptr, ptr @brcmstb_pm_standby._entry, ptr @brcmstb_pm_standby._entry_ptr, ptr @do_bsp_initiate_command._entry, ptr @do_bsp_initiate_command._entry_ptr, ptr @ctrl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @brcmstb_pm_driver, ptr @.str.6, ptr @aon_ctrl_dt_ids, ptr @.str.7, ptr @.str.8, ptr @ddr_phy_dt_ids, ptr @.str.10, ptr @ddr_shimphy_dt_ids, ptr @.str.13, ptr @.str.16, ptr @brcmstb_memc_of_match, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @sram_dt_ids, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @brcmstb_pm_panic_nb, ptr @brcmstb_pm_ops, ptr @.str.34, ptr @ddr_phy_71_1, ptr @ddr_phy_72_0, ptr @ddr_phy_225_1, ptr @ddr_phy_240_1, ptr @ddr_seq, ptr @ddr_seq_b22, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @brcmstb_pm_do_s2_sram, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_s3_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bsp_initiate_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aon_ctrl_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_phy_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_shimphy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_memc_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_panic_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_phy_71_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_phy_72_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_phy_225_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_phy_240_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_seq_b22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_do_s2_sram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_pm_copy_to_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmstb_pm_s3_finish() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @cpu_resume_arm to i32)) #9
  %2 = call ptr @memset(ptr %0, i32 0, i32 2432)
  %3 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !119
  %call4 = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %5 = lshr i32 %4, 24
  %and = and i32 %5, 24
  %magic = getelementptr inbounds %struct.brcmstb_s3_params, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1526640647, ptr %magic, align 1
  %conv = zext i32 %call.i to i64
  %reentry10 = getelementptr inbounds %struct.brcmstb_s3_params, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %reentry10 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv, ptr %reentry10, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %8() #9
  %or11 = or i32 %and, 1526595589
  %9 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %10 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #9, !srcloc !120
  %11 = tail call i32 @llvm.bswap.i32(i32 %1)
  %12 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #9, !srcloc !120
  %13 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !120
  %14 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end9.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %16 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %sw.bb.s3entry_method0.exit_crit_edge, label %for.cond.preheader.i.i

sw.bb.s3entry_method0.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3entry_method0.exit

for.cond.preheader.i.i:                           ; preds = %sw.bb
  %17 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.i.i = icmp sgt i32 %17, 0
  br i1 %cmp9.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.do.body.i.i_crit_edge

for.cond.preheader.i.i.do.body.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %ddr_shimphy_base.i.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.010.i.i, i32 1
  %18 = ptrtoint ptr %ddr_shimphy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddr_shimphy_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !119
  %21 = or i32 %20, 196608
  %22 = ptrtoint ptr %ddr_shimphy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddr_shimphy_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %23, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %21) #9, !srcloc !120
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %24 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.do.body.i.i_crit_edge

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i.do.body.i.i_crit_edge, %for.cond.preheader.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  br label %s3entry_method0.exit

s3entry_method0.exit:                             ; preds = %do.body.i.i, %sw.bb.s3entry_method0.exit_crit_edge
  %25 = load ptr, ptr @ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 905969664) #9, !srcloc !120
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 922746880) #9, !srcloc !120
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !123
  br label %cleanup

sw.bb17:                                          ; preds = %if.end9
  %28 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i30 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i30, label %sw.bb17.shimphy_set.exit.i_crit_edge, label %for.cond.preheader.i.i32

sw.bb17.shimphy_set.exit.i_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %shimphy_set.exit.i

for.cond.preheader.i.i32:                         ; preds = %sw.bb17
  %29 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i.i31 = icmp sgt i32 %29, 0
  br i1 %cmp9.i.i31, label %for.cond.preheader.i.i32.for.body.i.i39_crit_edge, label %for.cond.preheader.i.i32.do.body.i.i40_crit_edge

for.cond.preheader.i.i32.do.body.i.i40_crit_edge: ; preds = %for.cond.preheader.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i40

for.cond.preheader.i.i32.for.body.i.i39_crit_edge: ; preds = %for.cond.preheader.i.i32
  br label %for.body.i.i39

for.body.i.i39:                                   ; preds = %for.body.i.i39.for.body.i.i39_crit_edge, %for.cond.preheader.i.i32.for.body.i.i39_crit_edge
  %i.010.i.i33 = phi i32 [ %inc.i.i37, %for.body.i.i39.for.body.i.i39_crit_edge ], [ 0, %for.cond.preheader.i.i32.for.body.i.i39_crit_edge ]
  %ddr_shimphy_base.i.i34 = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.010.i.i33, i32 1
  %30 = ptrtoint ptr %ddr_shimphy_base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddr_shimphy_base.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %31, i32 140
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #9, !srcloc !119
  %33 = and i32 %32, -61441
  %34 = or i32 %33, 12288
  %35 = ptrtoint ptr %ddr_shimphy_base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ddr_shimphy_base.i.i34, align 4
  %add.ptr4.i.i36 = getelementptr i8, ptr %36, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i36, i32 %34) #9, !srcloc !120
  %inc.i.i37 = add nuw nsw i32 %i.010.i.i33, 1
  %37 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i.i38 = icmp slt i32 %inc.i.i37, %37
  br i1 %cmp.i.i38, label %for.body.i.i39.for.body.i.i39_crit_edge, label %for.body.i.i39.do.body.i.i40_crit_edge

for.body.i.i39.do.body.i.i40_crit_edge:           ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i40

for.body.i.i39.for.body.i.i39_crit_edge:          ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i39

do.body.i.i40:                                    ; preds = %for.body.i.i39.do.body.i.i40_crit_edge, %for.cond.preheader.i.i32.do.body.i.i40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  br label %shimphy_set.exit.i

shimphy_set.exit.i:                               ; preds = %do.body.i.i40, %sw.bb17.shimphy_set.exit.i_crit_edge
  %38 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp10.i.i = icmp sgt i32 %38, 0
  br i1 %cmp10.i.i, label %shimphy_set.exit.i.for.body.i5.i_crit_edge, label %shimphy_set.exit.i.s3entry_method1.exit_crit_edge

shimphy_set.exit.i.s3entry_method1.exit_crit_edge: ; preds = %shimphy_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3entry_method1.exit

shimphy_set.exit.i.for.body.i5.i_crit_edge:       ; preds = %shimphy_set.exit.i
  br label %for.body.i5.i

for.body.i5.i:                                    ; preds = %for.body.i5.i.for.body.i5.i_crit_edge, %shimphy_set.exit.i.for.body.i5.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i3.i, %for.body.i5.i.for.body.i5.i_crit_edge ], [ 0, %shimphy_set.exit.i.for.body.i5.i_crit_edge ]
  %ddr_ctrl.i.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.011.i.i, i32 2
  %39 = ptrtoint ptr %ddr_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ddr_ctrl.i.i, align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %40, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #9, !srcloc !119
  %43 = or i32 %42, 16777216
  %44 = ptrtoint ptr %ddr_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ddr_ctrl.i.i, align 4
  %46 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr4.i2.i = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i2.i, i32 %43) #9, !srcloc !120
  %inc.i3.i = add nuw nsw i32 %i.011.i.i, 1
  %47 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i4.i = icmp slt i32 %inc.i3.i, %47
  br i1 %cmp.i4.i, label %for.body.i5.i.for.body.i5.i_crit_edge, label %for.body.i5.i.s3entry_method1.exit_crit_edge

for.body.i5.i.s3entry_method1.exit_crit_edge:     ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3entry_method1.exit

for.body.i5.i.for.body.i5.i_crit_edge:            ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i5.i

s3entry_method1.exit:                             ; preds = %for.body.i5.i.s3entry_method1.exit_crit_edge, %shimphy_set.exit.i.s3entry_method1.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr @ctrl, align 4
  %add.ptr.i42 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 -1291841536) #9, !srcloc !120
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %s3entry_method1.exit, %s3entry_method0.exit, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %if.end9.cleanup_crit_edge ], [ -4, %s3entry_method1.exit ], [ -4, %s3entry_method0.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume_arm() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_bsp_initiate_command(i32 noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !120
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !119
  %shl = shl i32 %cmd, 1
  %or = or i32 %shl, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !120
  %call3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and33 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool13.not34 = icmp eq i32 %and33, 0
  br i1 %tobool13.not34, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.if.end19_crit_edge

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end19

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end19
  %sub = add nsw i32 %timeo.03542, -50
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17) #12
  br label %for.end

if.end19:                                         ; preds = %if.end15.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge
  %timeo.03542 = phi i32 [ %sub, %if.end15.if.end19_crit_edge ], [ 1000000, %for.cond.preheader.if.end19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !119
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end19.for.end_crit_edge, label %if.end15

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %do.end, %for.cond.preheader.for.end_crit_edge
  %18 = phi i32 [ %17, %do.end ], [ %4, %for.cond.preheader.for.end_crit_edge ], [ %17, %if.end19.for.end_crit_edge ]
  %and20 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp ne i32 %and20, 0
  %conv = zext i1 %cmp21 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %for.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_pm_driver, ptr noundef nonnull @brcmstb_pm_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %match.i174 = alloca ptr, align 4
  %match.i165 = alloca ptr, align 4
  %match.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #9
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !125
  %call.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @aon_ctrl_dt_ids, ptr noundef nonnull %match.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %brcmstb_ioremap_match.exit.thread, label %brcmstb_ioremap_match.exit

brcmstb_ioremap_match.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #9
  br label %do.end

brcmstb_ioremap_match.exit:                       ; preds = %entry
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %full_name.i, align 4
  %call5.i = call ptr @of_io_request_and_map(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #9
  %cmp.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %brcmstb_ioremap_match.exit.do.end_crit_edge, label %if.end

brcmstb_ioremap_match.exit.do.end_crit_edge:      ; preds = %brcmstb_ioremap_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %brcmstb_ioremap_match.exit.do.end_crit_edge, %brcmstb_ioremap_match.exit.thread
  %retval.0.i164200 = phi ptr [ inttoptr (i32 -22 to ptr), %brcmstb_ioremap_match.exit.thread ], [ %call5.i, %brcmstb_ioremap_match.exit.do.end_crit_edge ]
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %3 = ptrtoint ptr %retval.0.i164200 to i32
  br label %cleanup

if.end:                                           ; preds = %brcmstb_ioremap_match.exit
  store ptr %call5.i, ptr @ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i165) #9
  %4 = ptrtoint ptr %match.i165 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i165, align 4, !annotation !125
  %call.i166 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @aon_ctrl_dt_ids, ptr noundef nonnull %match.i165) #9
  %tobool.not.i167 = icmp eq ptr %call.i166, null
  br i1 %tobool.not.i167, label %brcmstb_ioremap_match.exit172.thread, label %brcmstb_ioremap_match.exit172

brcmstb_ioremap_match.exit172.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i165) #9
  br label %if.then6

brcmstb_ioremap_match.exit172:                    ; preds = %if.end
  %full_name.i169 = getelementptr inbounds %struct.device_node, ptr %call.i166, i32 0, i32 2
  %5 = ptrtoint ptr %full_name.i169 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %full_name.i169, align 4
  %call5.i170 = call ptr @of_io_request_and_map(ptr noundef nonnull %call.i166, i32 noundef 1, ptr noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i165) #9
  %cmp.i173 = icmp ugt ptr %call5.i170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %brcmstb_ioremap_match.exit172.if.then6_crit_edge, label %brcmstb_ioremap_match.exit172.if.end7_crit_edge

brcmstb_ioremap_match.exit172.if.end7_crit_edge:  ; preds = %brcmstb_ioremap_match.exit172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

brcmstb_ioremap_match.exit172.if.then6_crit_edge: ; preds = %brcmstb_ioremap_match.exit172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %brcmstb_ioremap_match.exit172.if.then6_crit_edge, %brcmstb_ioremap_match.exit172.thread
  %7 = load ptr, ptr @ctrl, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 512
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %brcmstb_ioremap_match.exit172.if.end7_crit_edge
  %storemerge = phi ptr [ %add.ptr, %if.then6 ], [ %call5.i170, %brcmstb_ioremap_match.exit172.if.end7_crit_edge ]
  store ptr %storemerge, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %add.ptr8 = getelementptr i8, ptr %storemerge, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #9, !srcloc !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i174) #9
  %8 = ptrtoint ptr %match.i174 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i174, align 4, !annotation !125
  %call.i175 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ddr_phy_dt_ids, ptr noundef nonnull %match.i174) #9
  %tobool.not.i176 = icmp eq ptr %call.i175, null
  br i1 %tobool.not.i176, label %brcmstb_ioremap_match.exit181.thread, label %brcmstb_ioremap_match.exit181

brcmstb_ioremap_match.exit181.thread:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i174) #9
  br label %do.end14

brcmstb_ioremap_match.exit181:                    ; preds = %if.end7
  %9 = ptrtoint ptr %match.i174 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match.i174, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %full_name.i178 = getelementptr inbounds %struct.device_node, ptr %call.i175, i32 0, i32 2
  %13 = ptrtoint ptr %full_name.i178 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %full_name.i178, align 4
  %call5.i179 = call ptr @of_io_request_and_map(ptr noundef nonnull %call.i175, i32 noundef 0, ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i174) #9
  %cmp.i182 = icmp ugt ptr %call5.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %brcmstb_ioremap_match.exit181.do.end14_crit_edge, label %if.end18

brcmstb_ioremap_match.exit181.do.end14_crit_edge: ; preds = %brcmstb_ioremap_match.exit181
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end14:                                         ; preds = %brcmstb_ioremap_match.exit181.do.end14_crit_edge, %brcmstb_ioremap_match.exit181.thread
  %retval.0.i180206 = phi ptr [ inttoptr (i32 -22 to ptr), %brcmstb_ioremap_match.exit181.thread ], [ %call5.i179, %brcmstb_ioremap_match.exit181.do.end14_crit_edge ]
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  %15 = ptrtoint ptr %retval.0.i180206 to i32
  br label %cleanup

if.end18:                                         ; preds = %brcmstb_ioremap_match.exit181
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %12, align 4, !range !121
  store i8 %17, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4
  %pll_status_offset = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %pll_status_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pll_status_offset, align 4
  store i32 %19, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 6), align 4
  store ptr %call5.i179, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2), align 4
  %s3entry_method = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %s3entry_method to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s3entry_method, align 4
  store i32 %21, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %phy_a_standby_ctrl_offs = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %12, i32 0, i32 4
  %22 = ptrtoint ptr %phy_a_standby_ctrl_offs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_a_standby_ctrl_offs, align 4
  store i32 %23, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 12), align 4
  %phy_b_standby_ctrl_offs = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %12, i32 0, i32 5
  %24 = ptrtoint ptr %phy_b_standby_ctrl_offs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_b_standby_ctrl_offs, align 4
  store i32 %25, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 13), align 4
  %warm_boot_offset = getelementptr inbounds %struct.ddr_phy_ofdata, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %warm_boot_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %warm_boot_offset, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %call.i183 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ddr_shimphy_dt_ids, ptr noundef null) #9
  %tobool20.not219 = icmp eq ptr %call.i183, null
  br i1 %tobool20.not219, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end18.for.body_crit_edge
  %dn.0220 = phi ptr [ %call.i185, %if.end40.for.body_crit_edge ], [ %call.i183, %if.end18.for.body_crit_edge ]
  %28 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp = icmp sgt i32 %28, 2
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 3) #12
  br label %for.end

if.end27:                                         ; preds = %for.body
  %full_name = getelementptr inbounds %struct.device_node, ptr %dn.0220, i32 0, i32 2
  %29 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %full_name, align 4
  %call28 = call ptr @of_io_request_and_map(ptr noundef nonnull %dn.0220, i32 noundef 0, ptr noundef %30) #9
  %cmp.i184 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then30, label %if.end40

if.then30:                                        ; preds = %if.end27
  %31 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %if.then30.for.end_crit_edge, label %do.end36

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %28) #12
  %32 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  %ddr_shimphy_base = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %28, i32 1
  %33 = ptrtoint ptr %ddr_shimphy_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call28, ptr %ddr_shimphy_base, align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %call.i185 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %dn.0220, ptr noundef nonnull @ddr_shimphy_dt_ids, ptr noundef null) #9
  %tobool20.not = icmp eq ptr %call.i185, null
  br i1 %tobool20.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.then30.for.end_crit_edge, %do.end24, %if.end18.for.end_crit_edge
  %call.i186 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef null) #9
  %tobool44.not221 = icmp eq ptr %call.i186, null
  br i1 %tobool44.not221, label %for.end.do.body71_crit_edge, label %for.end.for.body45_crit_edge

for.end.for.body45_crit_edge:                     ; preds = %for.end
  br label %for.body45

for.end.do.body71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

for.body45:                                       ; preds = %if.end65.for.body45_crit_edge, %for.end.for.body45_crit_edge
  %dn.1223 = phi ptr [ %call.i187, %if.end65.for.body45_crit_edge ], [ %call.i186, %for.end.for.body45_crit_edge ]
  %i.0222 = phi i32 [ %inc67, %if.end65.for.body45_crit_edge ], [ 0, %for.end.for.body45_crit_edge ]
  %call46 = call ptr @of_iomap(ptr noundef nonnull %dn.1223, i32 noundef 0) #9
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.end54

do.end51:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %i.0222) #12
  br label %cleanup

if.end54:                                         ; preds = %for.body45
  %call55 = call ptr @of_match_node(ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef nonnull %dn.1223) #9
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %call46) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %data = getelementptr inbounds %struct.of_device_id, ptr %call55, i32 0, i32 3
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4, !range !121
  store i8 %38, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4
  %warm_boot_offset61 = getelementptr inbounds %struct.ddr_seq_ofdata, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %warm_boot_offset61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %warm_boot_offset61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool62.not = icmp eq i32 %40, 0
  br i1 %tobool62.not, label %if.end58.if.end65_crit_edge, label %if.then63

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %40, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end58.if.end65_crit_edge
  %ddr_ctrl = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.0222, i32 2
  %41 = ptrtoint ptr %ddr_ctrl to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call46, ptr %ddr_ctrl, align 4
  %inc67 = add i32 %i.0222, 1
  %call.i187 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %dn.1223, ptr noundef nonnull @brcmstb_memc_of_match, ptr noundef null) #9
  %tobool44.not = icmp eq ptr %call.i187, null
  br i1 %tobool44.not, label %if.end65.do.body71_crit_edge, label %if.end65.for.body45_crit_edge

if.end65.for.body45_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

if.end65.do.body71_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

do.body71:                                        ; preds = %if.end65.do.body71_crit_edge, %for.end.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_pm_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_pm_probe, %if.then78)) #9
          to label %do.end82 [label %if.then78], !srcloc !126

if.then78:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %42 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4, !range !121
  %43 = zext i8 %42 to i32
  %44 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmstb_pm_probe.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.23, i32 noundef %43, i32 noundef %44, i32 noundef %45) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body71
  %call.i188 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sram_dt_ids, ptr noundef null) #9
  %tobool84.not = icmp eq ptr %call.i188, null
  br i1 %tobool84.not, label %do.end88, label %if.end91

do.end88:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end91:                                         ; preds = %do.end82
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #9
  %46 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %47 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i189 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i188, i32 noundef 0, ptr noundef nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %if.end.i191, label %if.end91.do.end97_crit_edge

if.end91.do.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

if.end.i191:                                      ; preds = %if.end91
  %48 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %res.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %46, align 4
  %sub.i.i = sub i32 1, %49
  %add.i.i = add i32 %sub.i.i, %51
  %call2.i = call ptr @__arm_ioremap_exec(i32 noundef %49, i32 noundef %add.i.i, i1 noundef zeroext false) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i191.do.end97_crit_edge, label %if.end100

if.end.i191.do.end97_crit_edge:                   ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.end97:                                         ; preds = %if.end.i191.do.end97_crit_edge, %if.end91.do.end97_crit_edge
  %retval.0.i192.ph = phi i32 [ -12, %if.end.i191.do.end97_crit_edge ], [ %call.i189, %if.end91.do.end97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end100:                                        ; preds = %if.end.i191
  store ptr %call2.i, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %46, align 4
  %54 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %res.i, align 4
  %sub.i12.i = add i32 %53, 1
  %add.i13.i = sub i32 %sub.i12.i, %55
  store i32 %add.i13.i, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  store ptr %pdev, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 15), align 4
  %call1.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 72064, i32 noundef 3264, i32 noundef 5) #13
  store ptr %call1.i.i, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  %tobool102.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool102.not, label %if.end100.cleanup_crit_edge, label %if.end104

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end104:                                        ; preds = %if.end100
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i193 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i) #9
  br i1 %call.i193, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end104
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !127

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %59, %if.end.i.i ], [ %57, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  store i32 -1, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #9
  br label %do.end112

dma_map_single_attrs.exit:                        ; preds = %if.end104
  call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call1.i.i, i32 noundef 72064) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %61 = ptrtoint ptr %call1.i.i to i32
  %sub.i = add i32 %61, 1073741824
  %shr.i = lshr exact i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %60, i32 %shr.i
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 72064, i32 noundef 1, i32 noundef 0) #9
  store i32 %call41.i, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 9), align 4
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i195 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i195, label %dma_map_single_attrs.exit.do.end112_crit_edge, label %if.end115

dma_map_single_attrs.exit.do.end112_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

do.end112:                                        ; preds = %dma_map_single_attrs.exit.do.end112_crit_edge, %dma_map_single_attrs.exit.thread
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  %62 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 8), align 4
  call void @kfree(ptr noundef %62) #9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef -12) #12
  br label %cleanup

if.end115:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @brcmstb_pm_panic_nb) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @brcmstb_pm_poweroff, ptr @pm_power_off, align 4
  call void @suspend_set_ops(ptr noundef nonnull @brcmstb_pm_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end112, %if.end100.cleanup_crit_edge, %do.end97, %do.end88, %if.then57, %do.end51, %do.end36, %do.end14, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ %15, %do.end14 ], [ -22, %if.then57 ], [ -12, %do.end51 ], [ %retval.0.i192.ph, %do.end97 ], [ -12, %do.end112 ], [ 0, %if.end115 ], [ -22, %do.end88 ], [ %32, %do.end36 ], [ -12, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_pm_poweroff() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 140
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  %2 = and i32 %1, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  %call7.i = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %entry.brcmstb_pm_handshake.exit_crit_edge, label %do.end.i

entry.brcmstb_pm_handshake.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmstb_pm_handshake.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %brcmstb_pm_handshake.exit

brcmstb_pm_handshake.exit:                        ; preds = %do.end.i, %entry.brcmstb_pm_handshake.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !120
  %8 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !119
  %10 = load ptr, ptr @ctrl, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 268435456) #9, !srcloc !120
  %11 = load ptr, ptr @ctrl, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !119
  %13 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %brcmstb_pm_handshake.exit
  %14 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i8 = icmp eq i8 %14, 0
  br i1 %tobool.not.i8, label %if.then.shimphy_set.exit_crit_edge, label %for.cond.preheader.i

if.then.shimphy_set.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %shimphy_set.exit

for.cond.preheader.i:                             ; preds = %if.then
  %15 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i = icmp sgt i32 %15, 0
  br i1 %cmp9.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.body.i_crit_edge

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ddr_shimphy_base.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.010.i, i32 1
  %16 = ptrtoint ptr %ddr_shimphy_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddr_shimphy_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %17, i32 140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #9, !srcloc !119
  %19 = and i32 %18, -61441
  %20 = or i32 %19, 12288
  %21 = ptrtoint ptr %ddr_shimphy_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddr_shimphy_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %20) #9, !srcloc !120
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %23 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i = icmp slt i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body.i_crit_edge

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body.i:                                        ; preds = %for.body.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  br label %shimphy_set.exit

shimphy_set.exit:                                 ; preds = %do.body.i, %if.then.shimphy_set.exit_crit_edge
  %24 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10.i = icmp sgt i32 %24, 0
  br i1 %cmp10.i, label %shimphy_set.exit.for.body.i14_crit_edge, label %shimphy_set.exit.ddr_ctrl_set.exit_crit_edge

shimphy_set.exit.ddr_ctrl_set.exit_crit_edge:     ; preds = %shimphy_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_ctrl_set.exit

shimphy_set.exit.for.body.i14_crit_edge:          ; preds = %shimphy_set.exit
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %shimphy_set.exit.for.body.i14_crit_edge
  %i.011.i = phi i32 [ %inc.i12, %for.body.i14.for.body.i14_crit_edge ], [ 0, %shimphy_set.exit.for.body.i14_crit_edge ]
  %ddr_ctrl.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.011.i, i32 2
  %25 = ptrtoint ptr %ddr_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddr_ctrl.i, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr.i10 = getelementptr i8, ptr %26, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !119
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %ddr_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddr_ctrl.i, align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr4.i11 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i11, i32 %29) #9, !srcloc !120
  %inc.i12 = add nuw nsw i32 %i.011.i, 1
  %33 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i13 = icmp slt i32 %inc.i12, %33
  br i1 %cmp.i13, label %for.body.i14.for.body.i14_crit_edge, label %for.body.i14.ddr_ctrl_set.exit_crit_edge

for.body.i14.ddr_ctrl_set.exit_crit_edge:         ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_ctrl_set.exit

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

ddr_ctrl_set.exit:                                ; preds = %for.body.i14.ddr_ctrl_set.exit_crit_edge, %shimphy_set.exit.ddr_ctrl_set.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %34 = load ptr, ptr @ctrl, align 4
  %add.ptr.i17 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 -1828712448) #9, !srcloc !120
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !123
  br label %return

if.end:                                           ; preds = %brcmstb_pm_handshake.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = load ptr, ptr @ctrl, align 4
  %add.ptr.i19 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 301989888) #9, !srcloc !120
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 318767104) #9, !srcloc !120
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !119
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !123
  br label %return

return:                                           ; preds = %if.end, %ddr_ctrl_set.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_panic_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1578184273) #9, !srcloc !120
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_pm_valid(i32 noundef %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %state, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 5), align 4, !range !121
  %2 = zext i8 %1 to i32
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ %2, %sw.bb1 ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_enter(i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i1 [ true, %sw.bb1 ], [ false, %entry.sw.epilog.sink.split_crit_edge ]
  %call2 = tail call fastcc i32 @brcmstb_pm_standby(i1 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call2, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_pm_standby(i1 noundef zeroext %deep_standby) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 140
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  %2 = and i32 %1, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !119
  %call7.i = tail call fastcc i32 @do_bsp_initiate_command(i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.critedge, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  br label %cleanup

if.end.critedge:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  br i1 %deep_standby, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i11 to i32
  %call.i = tail call i32 @cpu_suspend(i32 noundef %12, ptr noundef nonnull @brcmstb_pm_do_s3) #9
  br label %if.end5

if.else:                                          ; preds = %if.end.critedge
  %13 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  %14 = load i8, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 14), align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.then.i.shimphy_set.exit.i_crit_edge, label %for.cond.preheader.i.i

if.then.i.shimphy_set.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %shimphy_set.exit.i

for.cond.preheader.i.i:                           ; preds = %if.then.i
  %15 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i.i = icmp sgt i32 %15, 0
  br i1 %cmp9.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.do.body.i.i_crit_edge

for.cond.preheader.i.i.do.body.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %ddr_shimphy_base.i.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.010.i.i, i32 1
  %16 = ptrtoint ptr %ddr_shimphy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddr_shimphy_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !119
  %19 = and i32 %18, -61441
  %20 = ptrtoint ptr %ddr_shimphy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddr_shimphy_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %21, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %19) #9, !srcloc !120
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %22 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %22
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.do.body.i.i_crit_edge

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i.do.body.i.i_crit_edge, %for.cond.preheader.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  br label %shimphy_set.exit.i

shimphy_set.exit.i:                               ; preds = %do.body.i.i, %if.then.i.shimphy_set.exit.i_crit_edge
  %23 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10.i.i = icmp sgt i32 %23, 0
  br i1 %cmp10.i.i, label %shimphy_set.exit.i.for.body.i8.i_crit_edge, label %shimphy_set.exit.i.ddr_ctrl_set.exit.i_crit_edge

shimphy_set.exit.i.ddr_ctrl_set.exit.i_crit_edge: ; preds = %shimphy_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_ctrl_set.exit.i

shimphy_set.exit.i.for.body.i8.i_crit_edge:       ; preds = %shimphy_set.exit.i
  br label %for.body.i8.i

for.body.i8.i:                                    ; preds = %for.body.i8.i.for.body.i8.i_crit_edge, %shimphy_set.exit.i.for.body.i8.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i6.i, %for.body.i8.i.for.body.i8.i_crit_edge ], [ 0, %shimphy_set.exit.i.for.body.i8.i_crit_edge ]
  %ddr_ctrl.i.i = getelementptr %struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2, i32 %i.011.i.i, i32 2
  %24 = ptrtoint ptr %ddr_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddr_ctrl.i.i, align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %25, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #9, !srcloc !119
  %28 = and i32 %27, -16777217
  %29 = ptrtoint ptr %ddr_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddr_ctrl.i.i, align 4
  %31 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 11), align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %30, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %28) #9, !srcloc !120
  %inc.i6.i = add nuw nsw i32 %i.011.i.i, 1
  %32 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 7), align 4
  %cmp.i7.i = icmp slt i32 %inc.i6.i, %32
  br i1 %cmp.i7.i, label %for.body.i8.i.for.body.i8.i_crit_edge, label %for.body.i8.i.ddr_ctrl_set.exit.i_crit_edge

for.body.i8.i.ddr_ctrl_set.exit.i_crit_edge:      ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_ctrl_set.exit.i

for.body.i8.i.for.body.i8.i_crit_edge:            ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i8.i

ddr_ctrl_set.exit.i:                              ; preds = %for.body.i8.i.ddr_ctrl_set.exit.i_crit_edge, %shimphy_set.exit.i.ddr_ctrl_set.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  br label %if.end.i

if.end.i:                                         ; preds = %ddr_ctrl_set.exit.i, %if.else.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmstb_pm_do_s2_sz to i32))
  %33 = load i32, ptr @brcmstb_pm_do_s2_sz, align 4
  %add.i.i = add i32 %33, 7
  %and.i10.i = and i32 %add.i.i, -8
  %34 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %and.i10.i)
  %cmp.i11.i = icmp ult i32 %34, %and.i10.i
  br i1 %cmp.i11.i, label %brcmstb_pm_copy_to_sram.exit.thread.i, label %if.end.i.i

brcmstb_pm_copy_to_sram.exit.thread.i:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %do.end

if.end.i.i:                                       ; preds = %if.end.i
  %35 = tail call i32 asm "", "=r,0"(ptr nonnull @brcmstb_pm_do_s2) #14, !srcloc !128
  %36 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %37 = ptrtoint ptr %36 to i32
  %and2.i.i = and i32 %37, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i12.i = icmp ne i32 %and2.i.i, 0
  %and4.i.i = and i32 %35, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.i.i = icmp ne i32 %and4.i.i, 0
  %38 = select i1 %tobool.not.i12.i, i1 true, i1 %tobool5.i.i
  br i1 %38, label %do.body9.i.i, label %brcmstb_pm_copy_to_sram.exit.i, !prof !129

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/bcm/brcmstb/pm/pm-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

brcmstb_pm_copy_to_sram.exit.i:                   ; preds = %if.end.i.i
  %and18.i.i = and i32 %35, -2
  %39 = inttoptr i32 %and18.i.i to ptr
  %40 = call ptr @memcpy(ptr %36, ptr %39, i32 %and.i10.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add19.i.i = add i32 %and.i10.i, %37
  tail call void %41(i32 noundef %37, i32 noundef %add19.i.i) #9
  %42 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 3), align 4
  %43 = ptrtoint ptr %42 to i32
  %and20.i.i = and i32 %35, 1
  %or.i.i = or i32 %and20.i.i, %43
  %44 = tail call ptr asm "", "=r,0"(i32 %or.i.i) #14, !srcloc !131
  store ptr %44, ptr @brcmstb_pm_do_s2_sram, align 4
  %tobool.not.i12 = icmp eq ptr %44, null
  br i1 %tobool.not.i12, label %brcmstb_pm_copy_to_sram.exit.i.do.end_crit_edge, label %if.end2.i

brcmstb_pm_copy_to_sram.exit.i.do.end_crit_edge:  ; preds = %brcmstb_pm_copy_to_sram.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end2.i:                                        ; preds = %brcmstb_pm_copy_to_sram.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = load ptr, ptr @ctrl, align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 2), align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.brcmstb_pm_control, ptr @ctrl, i32 0, i32 6), align 4
  %add.ptr.i13 = getelementptr i8, ptr %46, i32 %47
  %call3.i = tail call i32 %44(ptr noundef %45, ptr noundef %add.ptr.i13) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end2.i, %if.then2
  %ret.0 = phi i32 [ %call.i, %if.then2 ], [ %call3.i, %if.end2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end5.do.end_crit_edge, %brcmstb_pm_copy_to_sram.exit.i.do.end_crit_edge, %brcmstb_pm_copy_to_sram.exit.thread.i
  %ret.016 = phi i32 [ %ret.0, %if.end5.do.end_crit_edge ], [ -22, %brcmstb_pm_copy_to_sram.exit.i.do.end_crit_edge ], [ -22, %brcmstb_pm_copy_to_sram.exit.thread.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %ret.016, %do.end ], [ 0, %if.end5.cleanup_crit_edge ], [ -5, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_pm_do_s3(i32 noundef %sp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32 } asm sideeffect "mov\09$0, sp\0Amov\09sp, $2\0Abl\09brcmstb_pm_s3_finish\0Amov\09$1, r0\0Amov\09$2, sp\0Amov\09sp, $0\0A", "=&r,=&r,r"(i32 %sp) #9, !srcloc !132
  %asmresult1 = extractvalue { i32, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_pm_do_s2(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 425, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @brcmstb_pm_s3_finish._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @brcmstb_pm_s3_finish._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_pm_arm__291_833_brcmstb_pm_init6, !7, !"__initcall__kmod_pm_arm__291_833_brcmstb_pm_init6", i1 false, i1 false}
!7 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 833, i32 1}
!8 = !{ptr @ctrl, !9, !"ctrl", i1 false, i1 false}
!9 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 113, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 162, i32 31}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 173, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @do_bsp_initiate_command._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @do_bsp_initiate_command._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 823, i32 11}
!19 = !{ptr @brcmstb_pm_driver, !20, !"brcmstb_pm_driver", i1 false, i1 false}
!20 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 821, i32 31}
!21 = !{ptr @aon_ctrl_dt_ids, !22, !"aon_ctrl_dt_ids", i1 false, i1 false}
!22 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 536, i32 34}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 692, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @brcmstb_pm_probe._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @brcmstb_pm_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 713, i32 3}
!30 = !{ptr @brcmstb_pm_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcmstb_pm_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 734, i32 4}
!34 = !{ptr @brcmstb_pm_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcmstb_pm_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 743, i32 4}
!38 = !{ptr @brcmstb_pm_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @brcmstb_pm_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 755, i32 4}
!42 = !{ptr @brcmstb_pm_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @brcmstb_pm_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 775, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @brcmstb_pm_probe.__UNIQUE_ID_ddebug290, !45, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!48 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 781, i32 3}
!51 = !{ptr @brcmstb_pm_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @brcmstb_pm_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 787, i32 3}
!55 = !{ptr @brcmstb_pm_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @brcmstb_pm_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 800, i32 3}
!59 = !{ptr @brcmstb_pm_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @brcmstb_pm_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 816, i32 2}
!63 = !{ptr @brcmstb_pm_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @brcmstb_pm_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ddr_phy_dt_ids, !66, !"ddr_phy_dt_ids", i1 false, i1 false}
!66 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 580, i32 34}
!67 = !{ptr @ddr_phy_71_1, !68, !"ddr_phy_71_1", i1 false, i1 false}
!68 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 550, i32 30}
!69 = !{ptr @ddr_phy_72_0, !70, !"ddr_phy_72_0", i1 false, i1 false}
!70 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 559, i32 30}
!71 = !{ptr @ddr_phy_225_1, !72, !"ddr_phy_225_1", i1 false, i1 false}
!72 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 568, i32 30}
!73 = !{ptr @ddr_phy_240_1, !74, !"ddr_phy_240_1", i1 false, i1 false}
!74 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 574, i32 30}
!75 = !{ptr @ddr_shimphy_dt_ids, !76, !"ddr_shimphy_dt_ids", i1 false, i1 false}
!76 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 619, i32 34}
!77 = !{ptr @brcmstb_memc_of_match, !78, !"brcmstb_memc_of_match", i1 false, i1 false}
!78 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 624, i32 34}
!79 = !{ptr @ddr_seq, !80, !"ddr_seq", i1 false, i1 false}
!80 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 615, i32 36}
!81 = !{ptr @ddr_seq_b22, !82, !"ddr_seq_b22", i1 false, i1 false}
!82 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 610, i32 36}
!83 = !{ptr @sram_dt_ids, !84, !"sram_dt_ids", i1 false, i1 false}
!84 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 141, i32 34}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @brcmstb_pm_panic_nb, !90, !"brcmstb_pm_panic_nb", i1 false, i1 false}
!90 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 676, i32 30}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 197, i32 3}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @brcmstb_pm_handshake._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @brcmstb_pm_handshake._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @brcmstb_pm_ops, !97, !"brcmstb_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 531, i32 42}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 498, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @brcmstb_pm_standby._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @brcmstb_pm_standby._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 362, i32 3}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @brcmstb_pm_copy_to_sram._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @brcmstb_pm_copy_to_sram._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @brcmstb_pm_do_s2_sram, !109, !"brcmstb_pm_do_s2_sram", i1 false, i1 false}
!109 = !{!"../drivers/soc/bcm/brcmstb/pm/pm-arm.c", i32 117, i32 14}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 6242795}
!120 = !{i64 6242377}
!121 = !{i8 0, i8 2}
!122 = !{i64 2155095332}
!123 = !{i64 2155100009}
!124 = !{i64 2155096277}
!125 = !{!"auto-init"}
!126 = !{i64 2148774476, i64 2148774481, i64 2148774494, i64 2148774538, i64 2148774572, i64 2148774593}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2155103344}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2155104521, i64 2155105021, i64 2155104558, i64 2155104614, i64 2155104648, i64 2155104672, i64 2155104713, i64 2155104734, i64 2155104762, i64 2155104796}
!131 = !{i64 2155103839}
!132 = !{i64 11533, i64 11556, i64 11577, i64 11607, i64 11628, i64 11649}
