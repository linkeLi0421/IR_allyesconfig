; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-exynos.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.exynos_ufs_drv_data = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_ufs_uic_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exynos_ufs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_phy_time_cfg, i64, ptr, ptr, i32, i32 }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_phy_time_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.ufs_clk_info = type { %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ufs_exynos__332_1624_exynos_ufs_pltform_init6 = internal global ptr @exynos_ufs_pltform_init, section ".initcall6.init", align 4
@exynos_ufs_pltform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_ufs_probe, ptr @exynos_ufs_remove, ptr @ufshcd_pltfrm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ufs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_ufs_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_ufs_pltform_exit = internal global ptr @exynos_ufs_pltform_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author333 = internal constant [56 x i8] c"ufs_exynos.author=Alim Akhtar <alim.akhtar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author334 = internal constant [52 x i8] c"ufs_exynos.author=Seungwon Jeon  <essuuj@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [45 x i8] c"ufs_exynos.description=Exynos UFS HCI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [44 x i8] c"ufs_exynos.file=drivers/scsi/ufs/ufs-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [26 x i8] c"ufs_exynos.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exynos-ufshc\00", [19 x i8] zeroinitializer }, align 32
@exynos_ufs_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-ufs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_ufs_drvs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-ufs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosauto_ufs_drvs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-ufs-vh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosauto_ufs_vh_drvs }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@exynos_ufs_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufshcd_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ufs_hba_exynos_ops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.6, ptr @exynos_ufs_init, ptr null, ptr null, ptr null, ptr @exynos_ufs_setup_clocks, ptr @exynos_ufs_hce_enable_notify, ptr @exynos_ufs_link_startup_notify, ptr @exynos_ufs_pwr_change_notify, ptr @exynos_ufs_specify_nexus_t_xfer_req, ptr @exynos_ufs_specify_nexus_t_tm_req, ptr @exynos_ufs_hibern8_notify, ptr null, ptr null, ptr @exynos_ufs_suspend, ptr @exynos_ufs_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@exynos_ufs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufshcd_pltfrm_init() failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_ufs_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/ufs/ufs-exynos.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_ufs_probe._entry_ptr = internal global ptr @exynos_ufs_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_ufs\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vs_hci\00", [25 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot ioremap for hci vendor register\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos_ufs_init\00", [16 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr = internal global ptr @exynos_ufs_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unipro\00", [25 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 1152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot ioremap for unipro register\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr.13 = internal global ptr @exynos_ufs_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ufsp\00", [27 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 1159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot ioremap for ufs protector register\0A\00", [53 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr.17 = internal global ptr @exynos_ufs_init._entry.15, section ".printk_index", align 4
@exynos_ufs_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.3, i32 1165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get dt info.\0A\00", [40 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr.20 = internal global ptr @exynos_ufs_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ufs-phy\00", [24 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.3, i32 1172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get ufs-phy\0A\00", [41 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr.24 = internal global ptr @exynos_ufs_init._entry.22, section ".printk_index", align 4
@exynos_ufs_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.3, i32 1185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init drv-data\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_ufs_init._entry_ptr.27 = internal global ptr @exynos_ufs_init._entry.25, section ".printk_index", align 4
@exynos_ufs_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1089, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get uic attributes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_ufs_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@exynos_ufs_parse_dt._entry_ptr = internal global ptr @exynos_ufs_parse_dt._entry, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,sysreg\00", [17 x i8] zeroinitializer }, align 32
@exynos_ufs_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 1100, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"can't get an offset from sysreg. Set to default value\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_ufs_parse_dt._entry_ptr.34 = internal global ptr @exynos_ufs_parse_dt._entry.31, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sclk_unipro_main\00", [47 x i8] zeroinitializer }, align 32
@exynos_ufs_get_clk_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get clk info\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_ufs_get_clk_info\00", [40 x i8] zeroinitializer }, align 32
@exynos_ufs_get_clk_info._entry_ptr = internal global ptr @exynos_ufs_get_clk_info._entry, section ".printk_index", align 4
@exynos_ufs_get_clk_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not available pclk range %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_ufs_get_clk_info._entry_ptr.41 = internal global ptr @exynos_ufs_get_clk_info._entry.39, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@exynos_ufs_host_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timeout host sw-reset\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_ufs_host_reset\00", [42 x i8] zeroinitializer }, align 32
@exynos_ufs_host_reset._entry_ptr = internal global ptr @exynos_ufs_host_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos_ufs_calc_pwm_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to decide pwm clock divider, will not change\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exynos_ufs_calc_pwm_clk_div\00", [36 x i8] zeroinitializer }, align 32
@exynos_ufs_calc_pwm_clk_div._entry_ptr = internal global ptr @exynos_ufs_calc_pwm_clk_div._entry, section ".printk_index", align 4
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"available data lane is not equal(rx:%d, tx:%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@exynos_ufs_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: phy init failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_ufs_phy_init\00", [44 x i8] zeroinitializer }, align 32
@exynos_ufs_phy_init._entry_ptr = internal global ptr @exynos_ufs_phy_init._entry, section ".printk_index", align 4
@exynos_ufs_post_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1065, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: pa_granularity %d is invalid, assuming backwards compatibility\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_ufs_post_link\00", [43 x i8] zeroinitializer }, align 32
@exynos_ufs_post_link._entry_ptr = internal global ptr @exynos_ufs_post_link._entry, section ".printk_index", align 4
@exynos_ufs_pre_pwr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: incoming dev_req_params is NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_ufs_pre_pwr_mode\00", [40 x i8] zeroinitializer }, align 32
@exynos_ufs_pre_pwr_mode._entry_ptr = internal global ptr @exynos_ufs_pre_pwr_mode._entry, section ".printk_index", align 4
@exynos_ufs_pre_pwr_mode._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to determine capabilities\0A\00", [56 x i8] zeroinitializer }, align 32
@exynos_ufs_pre_pwr_mode._entry_ptr.55 = internal global ptr @exynos_ufs_pre_pwr_mode._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s series_%s G_%d L_%d\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAST\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s G_%d L_%d\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SLOW\00", [27 x i8] zeroinitializer }, align 32
@exynos_ufs_post_pwr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 850, ptr @.str.64, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Power mode changed to : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos_ufs_post_pwr_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos_ufs_post_pwr_mode._entry_ptr = internal global ptr @exynos_ufs_post_pwr_mode._entry, section ".printk_index", align 4
@exynos_ufs_pre_hibern8.granularity_tbl = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 100], [40 x i8] zeroinitializer }, align 32
@exynos_ufs_post_hibern8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1285, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: power mode change\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_ufs_post_hibern8\00", [40 x i8] zeroinitializer }, align 32
@exynos_ufs_post_hibern8._entry_ptr = internal global ptr @exynos_ufs_post_hibern8._entry, section ".printk_index", align 4
@exynos_ufs_drvs = internal global { %struct.exynos_ufs_drv_data, [52 x i8] } { %struct.exynos_ufs_drv_data { ptr null, ptr @exynos7_uic_attr, i32 30656, i32 31, ptr @exynos7_ufs_drv_init, ptr @exynos7_ufs_pre_link, ptr @exynos7_ufs_post_link, ptr @exynos7_ufs_pre_pwr_change, ptr @exynos7_ufs_post_pwr_change, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@exynosauto_ufs_drvs = internal global { %struct.exynos_ufs_drv_data, [52 x i8] } { %struct.exynos_ufs_drv_data { ptr null, ptr @exynos7_uic_attr, i32 9856, i32 44, ptr @exynosauto_ufs_drv_init, ptr @exynosauto_ufs_pre_link, ptr null, ptr @exynosauto_ufs_pre_pwr_change, ptr @exynosauto_ufs_post_pwr_change, ptr null, ptr @exynosauto_ufs_post_hce_enable }, [52 x i8] zeroinitializer }, align 32
@exynosauto_ufs_vh_drvs = internal global { %struct.exynos_ufs_drv_data, [52 x i8] } { %struct.exynos_ufs_drv_data { ptr @ufs_hba_exynosauto_vh_ops, ptr null, i32 108416, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@exynos7_uic_attr = internal global { %struct.exynos_ufs_uic_attr, [32 x i8] } { %struct.exynos_ufs_uic_attr { i32 16, i32 3000000, i32 1000000, i32 20000, i32 100000, i32 4000, i32 1000, i32 10, i32 2, i32 1000000, i32 4000000, i32 100000, i32 4000, i32 1280, i32 320, i32 79, i32 79, i32 79, i32 15, i32 15, i32 15, i32 0, i32 196867, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ufs_hba_exynosauto_vh_ops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.67, ptr @exynosauto_ufs_vh_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynosauto_ufs_vh_link_startup_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynosauto_ufs_vh\00", [46 x i8] zeroinitializer }, align 32
@exynosauto_ufs_vh_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.68, ptr @.str.3, i32 1458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynosauto_ufs_vh_init\00", [41 x i8] zeroinitializer }, align 32
@exynosauto_ufs_vh_init._entry_ptr = internal global ptr @exynosauto_ufs_vh_init._entry, section ".printk_index", align 4
@switch.table.exynos_ufs_pwr_change_notify = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 800000, i32 400000, i32 200000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 8, i64 128, i64 129]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"exynos_ufs_pltform\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1614, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1619, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"exynos_ufs_of_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1597, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"exynos_ufs_pm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1607, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"ufs_hba_exynos_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1475, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1508, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1476, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1143, i32 61 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1145, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1150, i32 64 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1152, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1157, i32 62 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1159, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1165, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1169, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1172, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1185, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1089, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1094, i32 52 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1100, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 433, i32 28 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 435, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 441, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 462, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1220, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 518, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 902, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 910, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1062, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 776, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 786, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 842, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 843, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 843, i32 47 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 843, i32 53 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 846, i32 39 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 847, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 850, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [16 x i8] c"granularity_tbl\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1248, i32 30 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1285, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [16 x i8] c"exynos_ufs_drvs\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1575, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c"exynosauto_ufs_drvs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1547, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant [23 x i8] c"exynosauto_ufs_vh_drvs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1563, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"exynos7_uic_attr\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1522, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant [26 x i8] c"ufs_hba_exynosauto_vh_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1489, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1490, i32 13 }
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private constant [33 x i8] c"../drivers/scsi/ufs/ufs-exynos.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1458, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [42 x i8] c"switch.table.exynos_ufs_pwr_change_notify\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__exitcall_exynos_ufs_pltform_exit, ptr @__initcall__kmod_ufs_exynos__332_1624_exynos_ufs_pltform_init6, ptr @exynos_ufs_calc_pwm_clk_div._entry, ptr @exynos_ufs_calc_pwm_clk_div._entry_ptr, ptr @exynos_ufs_get_clk_info._entry, ptr @exynos_ufs_get_clk_info._entry.39, ptr @exynos_ufs_get_clk_info._entry_ptr, ptr @exynos_ufs_get_clk_info._entry_ptr.41, ptr @exynos_ufs_host_reset._entry, ptr @exynos_ufs_host_reset._entry_ptr, ptr @exynos_ufs_init._entry, ptr @exynos_ufs_init._entry.11, ptr @exynos_ufs_init._entry.15, ptr @exynos_ufs_init._entry.18, ptr @exynos_ufs_init._entry.22, ptr @exynos_ufs_init._entry.25, ptr @exynos_ufs_init._entry_ptr, ptr @exynos_ufs_init._entry_ptr.13, ptr @exynos_ufs_init._entry_ptr.17, ptr @exynos_ufs_init._entry_ptr.20, ptr @exynos_ufs_init._entry_ptr.24, ptr @exynos_ufs_init._entry_ptr.27, ptr @exynos_ufs_parse_dt._entry, ptr @exynos_ufs_parse_dt._entry.31, ptr @exynos_ufs_parse_dt._entry_ptr, ptr @exynos_ufs_parse_dt._entry_ptr.34, ptr @exynos_ufs_phy_init._entry, ptr @exynos_ufs_phy_init._entry_ptr, ptr @exynos_ufs_pltform_exit, ptr @exynos_ufs_post_hibern8._entry, ptr @exynos_ufs_post_hibern8._entry_ptr, ptr @exynos_ufs_post_link._entry, ptr @exynos_ufs_post_link._entry_ptr, ptr @exynos_ufs_post_pwr_mode._entry, ptr @exynos_ufs_post_pwr_mode._entry_ptr, ptr @exynos_ufs_pre_pwr_mode._entry, ptr @exynos_ufs_pre_pwr_mode._entry.53, ptr @exynos_ufs_pre_pwr_mode._entry_ptr, ptr @exynos_ufs_pre_pwr_mode._entry_ptr.55, ptr @exynos_ufs_probe._entry, ptr @exynos_ufs_probe._entry_ptr, ptr @exynosauto_ufs_vh_init._entry, ptr @exynosauto_ufs_vh_init._entry_ptr, ptr @exynos_ufs_pltform, ptr @.str, ptr @exynos_ufs_of_match, ptr @exynos_ufs_pm_ops, ptr @ufs_hba_exynos_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @exynos_ufs_pre_hibern8.granularity_tbl, ptr @.str.65, ptr @.str.66, ptr @exynos_ufs_drvs, ptr @exynosauto_ufs_drvs, ptr @exynosauto_ufs_vh_drvs, ptr @exynos7_uic_attr, ptr @ufs_hba_exynosauto_vh_ops, ptr @.str.67, ptr @.str.68, ptr @switch.table.exynos_ufs_pwr_change_notify], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_pltform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_exynos_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_get_clk_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_get_clk_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_host_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_calc_pwm_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_post_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_pre_pwr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_pre_pwr_mode._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_post_pwr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_pre_hibern8.granularity_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_post_hibern8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ufs_drvs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosauto_ufs_drvs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosauto_ufs_vh_drvs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_uic_attr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_exynosauto_vh_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosauto_ufs_vh_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos_ufs_pwr_change_notify to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @exynos_ufs_calc_time_cntr(ptr nocapture noundef readonly %ufs, i32 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk_rate1 = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 8
  %0 = ptrtoint ptr %pclk_rate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pclk_rate1, align 8
  %div = udiv i32 1000000000, %1
  %rem = srem i32 1000000000, %1
  %mul = mul i32 %rem, 10
  %div3 = sdiv i32 %mul, %1
  %mul4 = mul i32 %period, 10
  %mul5 = mul i32 %div, 10
  %add = add i32 %div3, %mul5
  %div6 = sdiv i32 %mul4, %add
  ret i32 %div6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_pltform_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ufs_pltform, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ufs_pltform_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ufs_pltform) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool3.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool3.not, ptr @ufs_hba_exynos_ops, ptr %1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %vops.0 = phi ptr [ @ufs_hba_exynos_ops, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call5 = tail call i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef nonnull %vops.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call5) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  tail call void @ufshcd_remove(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_pltfrm_shutdown(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_pltfrm_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_init(ptr noundef %hba) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 168, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.7) #11
  %reg_hci = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reg_hci to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %reg_hci, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  %3 = ptrtoint ptr %reg_hci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_hci, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.10) #11
  %reg_unipro = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %reg_unipro to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %reg_unipro, align 4
  %cmp.i112 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #14
  %7 = ptrtoint ptr %reg_unipro to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_unipro, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call19 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.14) #11
  %reg_ufsp = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reg_ufsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %reg_ufsp, align 8
  %cmp.i113 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #14
  %11 = ptrtoint ptr %reg_ufsp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_ufsp, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i114 = tail call ptr @device_get_match_data(ptr noundef %1) #11
  %drv_data.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i114, ptr %drv_data.i, align 8
  %tobool.not.i = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i, label %if.end28.do.end34_crit_edge, label %land.lhs.true.i

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.lhs.true.i:                                  ; preds = %if.end28
  %uic_attr.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %call.i114, i32 0, i32 1
  %17 = ptrtoint ptr %uic_attr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uic_attr.i, align 4
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end34_crit_edge, label %if.then.i

land.lhs.true.i.do.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.then.i:                                        ; preds = %land.lhs.true.i
  %call6.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.30) #11
  %sysreg.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6.i, ptr %sysreg.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sysreg.i, align 4
  br label %if.end35

if.else11.i:                                      ; preds = %if.then.i
  %shareability_reg_offset.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 21
  %call12.i = tail call i32 @of_property_read_u32_index(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef %shareability_reg_offset.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else11.i.if.end35_crit_edge, label %do.end17.i

if.else11.i.if.end35_crit_edge:                   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end17.i:                                       ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.32) #14
  %21 = ptrtoint ptr %shareability_reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1808, ptr %shareability_reg_offset.i, align 8
  br label %if.end35

do.end34:                                         ; preds = %land.lhs.true.i.do.end34_crit_edge, %if.end28.do.end34_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #14
  br label %out

if.end35:                                         ; preds = %do.end17.i, %if.else11.i.if.end35_crit_edge, %if.then9.i
  %pclk_avail_min.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %pclk_avail_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 70000000, ptr %pclk_avail_min.i, align 8
  %pclk_avail_max.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %pclk_avail_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 167000000, ptr %pclk_avail_max.i, align 4
  %rx_adv_fine_gran_sup_en.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 23
  %24 = ptrtoint ptr %rx_adv_fine_gran_sup_en.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %rx_adv_fine_gran_sup_en.i, align 4
  %rx_adv_fine_gran_step.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 24
  %25 = ptrtoint ptr %rx_adv_fine_gran_step.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %rx_adv_fine_gran_step.i, align 4
  %rx_adv_min_actv_time_cap.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 27
  %26 = ptrtoint ptr %rx_adv_min_actv_time_cap.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9, ptr %rx_adv_min_actv_time_cap.i, align 4
  %pa_granularity.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 29
  %27 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %pa_granularity.i, align 4
  %pa_tactivate.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 30
  %28 = ptrtoint ptr %pa_tactivate.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %pa_tactivate.i, align 4
  %pa_hibern8time.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %18, i32 0, i32 31
  %29 = ptrtoint ptr %pa_hibern8time.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %pa_hibern8time.i, align 4
  %call36 = tail call ptr @devm_phy_get(ptr noundef %1, ptr noundef nonnull @.str.21) #11
  %phy = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call36, ptr %phy, align 4
  %cmp.i115 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #14
  br label %out

if.end45:                                         ; preds = %if.end35
  %call47 = tail call i32 @phy_power_on(ptr noundef %call36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %phy_off

if.end50:                                         ; preds = %if.end45
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hba, ptr %call.i, align 8
  %33 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv_data.i, align 8
  %opts.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opts.i, align 4
  %opts2.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 22
  %37 = ptrtoint ptr %opts2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %opts2.i, align 4
  %and.i = lshr i32 %36, 1
  %38 = and i32 %and.i, 4
  %39 = xor i32 %38, 4
  %rx_sel_idx.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %rx_sel_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rx_sel_idx.i, align 4
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %priv.i, align 8
  %quirks.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %34, i32 0, i32 2
  %42 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quirks.i, align 4
  %quirks6.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %44 = ptrtoint ptr %quirks6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %quirks6.i, align 8
  %drv_init = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %34, i32 0, i32 4
  %45 = ptrtoint ptr %drv_init to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv_init, align 4
  %tobool51.not = icmp eq ptr %46, null
  br i1 %tobool51.not, label %if.end50.if.end62_crit_edge, label %if.then52

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then52:                                        ; preds = %if.end50
  %call55 = tail call i32 %46(ptr noundef %1, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then52.if.end62_crit_edge, label %do.end60

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #14
  br label %out

if.end62:                                         ; preds = %if.then52.if.end62_crit_edge, %if.end50.if.end62_crit_edge
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  %clk_list_head.i = getelementptr inbounds %struct.ufs_hba, ptr %48, i32 0, i32 69
  %49 = ptrtoint ptr %clk_list_head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %clk_list_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %clk_list_head.i
  br i1 %cmp.i.not.i, label %if.end62.if.end66_crit_edge, label %for.body.lr.ph.i

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

for.body.lr.ph.i:                                 ; preds = %if.end62
  %clk_unipro_main.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 6
  %clk_hci_core.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %clki.094.i = phi ptr [ %50, %for.body.lr.ph.i ], [ %clki.0.i, %for.inc.i.for.body.i_crit_edge ]
  %clk.i = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.094.i, i32 0, i32 1
  %51 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk.i, align 4
  %cmp.i91.i = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.094.i, i32 0, i32 2
  %53 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name.i, align 4
  %call4.i = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(9) @.str.35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %clk_hci_core.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %clk_hci_core.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then3.i
  %call9.i = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(17) @.str.36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %clk_unipro_main.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %clk_unipro_main.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.else.i.for.inc.i_crit_edge, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %57 = ptrtoint ptr %clki.094.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %clki.0.i = load ptr, ptr %clki.094.i, align 4
  %cmp.not.i = icmp eq ptr %clki.0.i, %clk_list_head.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %58 = ptrtoint ptr %clk_hci_core.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_hci_core.i, align 4
  %tobool22.not.i = icmp eq ptr %59, null
  br i1 %tobool22.not.i, label %for.end.i.do.end.i117_crit_edge, label %lor.lhs.false.i

for.end.i.do.end.i117_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i117

lor.lhs.false.i:                                  ; preds = %for.end.i
  %60 = ptrtoint ptr %clk_unipro_main.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_unipro_main.i, align 8
  %tobool24.not.i = icmp eq ptr %61, null
  br i1 %tobool24.not.i, label %lor.lhs.false.i.do.end.i117_crit_edge, label %if.end26.i

lor.lhs.false.i.do.end.i117_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i117

do.end.i117:                                      ; preds = %lor.lhs.false.i.do.end.i117_crit_edge, %for.end.i.do.end.i117_crit_edge
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %48, i32 0, i32 8
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.37) #14
  br label %out

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %call28.i = tail call i32 @clk_get_rate(ptr noundef nonnull %61) #11
  %mclk_rate.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 12
  %64 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call28.i, ptr %mclk_rate.i, align 8
  %65 = ptrtoint ptr %clk_hci_core.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_hci_core.i, align 4
  %call30.i = tail call i32 @clk_get_rate(ptr noundef %66) #11
  %67 = ptrtoint ptr %pclk_avail_min.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pclk_avail_min.i, align 8
  %69 = ptrtoint ptr %pclk_avail_max.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pclk_avail_max.i, align 4
  %71 = ptrtoint ptr %opts2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %opts2.i, align 4
  %and.i121 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool31.not.i = icmp eq i32 %and.i121, 0
  br i1 %tobool31.not.i, label %if.end26.i.if.end43.i_crit_edge, label %if.end26.i.do.body33.i_crit_edge

if.end26.i.do.body33.i_crit_edge:                 ; preds = %if.end26.i
  br label %do.body33.i

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

do.body33.i:                                      ; preds = %if.end38.i.do.body33.i_crit_edge, %if.end26.i.do.body33.i_crit_edge
  %div.0.i = phi i8 [ %inc.i, %if.end38.i.do.body33.i_crit_edge ], [ 0, %if.end26.i.do.body33.i_crit_edge ]
  %pclk_rate.0.i = phi i32 [ %div34.i, %if.end38.i.do.body33.i_crit_edge ], [ %call30.i, %if.end26.i.do.body33.i_crit_edge ]
  %conv.i = zext i8 %div.0.i to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %div34.i = udiv i32 %pclk_rate.0.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i, i32 %70)
  %cmp35.not.i = icmp ugt i32 %div34.i, %70
  br i1 %cmp35.not.i, label %if.end38.i, label %do.body33.i.if.end43.i_crit_edge

do.body33.i.if.end43.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end38.i:                                       ; preds = %do.body33.i
  %inc.i = add i8 %div.0.i, 1
  %cmp40.not.i = icmp ult i32 %div34.i, %68
  br i1 %cmp40.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.end38.i.do.body33.i_crit_edge

if.end38.i.do.body33.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end38.i.if.end43.i_crit_edge, %do.body33.i.if.end43.i_crit_edge, %if.end26.i.if.end43.i_crit_edge
  %div.1.i = phi i8 [ 0, %if.end26.i.if.end43.i_crit_edge ], [ %div.0.i, %do.body33.i.if.end43.i_crit_edge ], [ %inc.i, %if.end38.i.if.end43.i_crit_edge ]
  %pclk_rate.1.i = phi i32 [ %call30.i, %if.end26.i.if.end43.i_crit_edge ], [ %div34.i, %do.body33.i.if.end43.i_crit_edge ], [ %div34.i, %if.end38.i.if.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pclk_rate.1.i, i32 %68)
  %cmp44.i = icmp ult i32 %pclk_rate.1.i, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %pclk_rate.1.i, i32 %70)
  %cmp46.i = icmp ugt i32 %pclk_rate.1.i, %70
  %spec.select.i = select i1 %cmp44.i, i1 true, i1 %cmp46.i, !prof !171
  br i1 %spec.select.i, label %do.end54.i, label %if.end56.i, !prof !171

do.end54.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev55.i = getelementptr inbounds %struct.ufs_hba, ptr %48, i32 0, i32 8
  %73 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev55.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.40, i32 noundef %pclk_rate.1.i) #14
  br label %out

if.end56.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %pclk_rate57.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 8
  %75 = ptrtoint ptr %pclk_rate57.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %pclk_rate.1.i, ptr %pclk_rate57.i, align 8
  %conv58.i = zext i8 %div.1.i to i32
  %pclk_div.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 9
  %76 = ptrtoint ptr %pclk_div.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv58.i, ptr %pclk_div.i, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end56.i, %if.end62.if.end66_crit_edge
  %77 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %drv_data.i, align 8
  %uic_attr.i124 = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %uic_attr.i124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %uic_attr.i124, align 4
  %t_cfg1.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17
  %tx_dif_p_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %tx_dif_p_nsec.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_dif_p_nsec.i, align 4
  %pclk_rate1.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 8
  %83 = ptrtoint ptr %pclk_rate1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pclk_rate1.i.i, align 8
  %div.i.i = udiv i32 1000000000, %84
  %rem.i.i = srem i32 1000000000, %84
  %mul.i.i = mul i32 %rem.i.i, 10
  %div3.i.i = sdiv i32 %mul.i.i, %84
  %mul4.i.i = mul i32 %82, 10
  %mul5.i.i = mul i32 %div.i.i, 10
  %add.i.i = add i32 %div3.i.i, %mul5.i.i
  %div6.i.i = sdiv i32 %mul4.i.i, %add.i.i
  %85 = ptrtoint ptr %t_cfg1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div6.i.i, ptr %t_cfg1.i, align 4
  %tx_dif_n_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 2
  %86 = ptrtoint ptr %tx_dif_n_nsec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_dif_n_nsec.i, align 4
  %mul4.i56.i = mul i32 %87, 10
  %div6.i59.i = sdiv i32 %mul4.i56.i, %add.i.i
  %tx_linereset_n.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 1
  %88 = ptrtoint ptr %tx_linereset_n.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div6.i59.i, ptr %tx_linereset_n.i, align 4
  %tx_high_z_cnt_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 3
  %89 = ptrtoint ptr %tx_high_z_cnt_nsec.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_high_z_cnt_nsec.i, align 4
  %mul4.i65.i = mul i32 %90, 10
  %div6.i68.i = sdiv i32 %mul4.i65.i, %add.i.i
  %tx_high_z_cnt.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 2
  %91 = ptrtoint ptr %tx_high_z_cnt.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %div6.i68.i, ptr %tx_high_z_cnt.i, align 4
  %tx_base_unit_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 4
  %92 = ptrtoint ptr %tx_base_unit_nsec.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_base_unit_nsec.i, align 4
  %mul4.i74.i = mul i32 %93, 10
  %div6.i77.i = sdiv i32 %mul4.i74.i, %add.i.i
  %tx_base_n_val.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 3
  %94 = ptrtoint ptr %tx_base_n_val.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div6.i77.i, ptr %tx_base_n_val.i, align 4
  %tx_gran_unit_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 5
  %95 = ptrtoint ptr %tx_gran_unit_nsec.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_gran_unit_nsec.i, align 4
  %mul4.i83.i = mul i32 %96, 10
  %div6.i86.i = sdiv i32 %mul4.i83.i, %add.i.i
  %tx_gran_n_val.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 4
  %97 = ptrtoint ptr %tx_gran_n_val.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div6.i86.i, ptr %tx_gran_n_val.i, align 4
  %tx_sleep_cnt.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 6
  %98 = ptrtoint ptr %tx_sleep_cnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_sleep_cnt.i, align 4
  %mul4.i92.i = mul i32 %99, 10
  %div6.i95.i = sdiv i32 %mul4.i92.i, %add.i.i
  %tx_sleep_cnt7.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 5
  %100 = ptrtoint ptr %tx_sleep_cnt7.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %div6.i95.i, ptr %tx_sleep_cnt7.i, align 4
  %rx_dif_p_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 9
  %101 = ptrtoint ptr %rx_dif_p_nsec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_dif_p_nsec.i, align 4
  %mul4.i101.i = mul i32 %102, 10
  %div6.i104.i = sdiv i32 %mul4.i101.i, %add.i.i
  %rx_linereset.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 6
  %103 = ptrtoint ptr %rx_linereset.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div6.i104.i, ptr %rx_linereset.i, align 4
  %rx_hibern8_wait_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 10
  %104 = ptrtoint ptr %rx_hibern8_wait_nsec.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_hibern8_wait_nsec.i, align 4
  %mul4.i110.i = mul i32 %105, 10
  %div6.i113.i = sdiv i32 %mul4.i110.i, %add.i.i
  %rx_hibern8_wait.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 7
  %106 = ptrtoint ptr %rx_hibern8_wait.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div6.i113.i, ptr %rx_hibern8_wait.i, align 4
  %rx_base_unit_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 11
  %107 = ptrtoint ptr %rx_base_unit_nsec.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_base_unit_nsec.i, align 4
  %mul4.i119.i = mul i32 %108, 10
  %div6.i122.i = sdiv i32 %mul4.i119.i, %add.i.i
  %rx_base_n_val.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 8
  %109 = ptrtoint ptr %rx_base_n_val.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div6.i122.i, ptr %rx_base_n_val.i, align 4
  %rx_gran_unit_nsec.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 12
  %110 = ptrtoint ptr %rx_gran_unit_nsec.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_gran_unit_nsec.i, align 4
  %mul4.i128.i = mul i32 %111, 10
  %div6.i131.i = sdiv i32 %mul4.i128.i, %add.i.i
  %rx_gran_n_val.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 9
  %112 = ptrtoint ptr %rx_gran_n_val.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div6.i131.i, ptr %rx_gran_n_val.i, align 4
  %rx_sleep_cnt.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 13
  %113 = ptrtoint ptr %rx_sleep_cnt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_sleep_cnt.i, align 4
  %mul4.i137.i = mul i32 %114, 10
  %div6.i140.i = sdiv i32 %mul4.i137.i, %add.i.i
  %rx_sleep_cnt13.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 10
  %115 = ptrtoint ptr %rx_sleep_cnt13.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div6.i140.i, ptr %rx_sleep_cnt13.i, align 4
  %rx_stall_cnt.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %80, i32 0, i32 14
  %116 = ptrtoint ptr %rx_stall_cnt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_stall_cnt.i, align 4
  %mul4.i146.i = mul i32 %117, 10
  %div6.i149.i = sdiv i32 %mul4.i146.i, %add.i.i
  %rx_stall_cnt15.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 17, i32 11
  %118 = ptrtoint ptr %rx_stall_cnt15.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %div6.i149.i, ptr %rx_stall_cnt15.i, align 4
  tail call fastcc void @exynos_ufs_config_smu(ptr noundef nonnull %call.i)
  br label %cleanup

phy_off:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %phy, align 4
  %call68 = tail call i32 @phy_power_off(ptr noundef %120) #11
  br label %out

out:                                              ; preds = %phy_off, %do.end54.i, %do.end.i117, %do.end60, %if.then39, %do.end34
  %ret.0 = phi i32 [ -22, %do.end34 ], [ %31, %if.then39 ], [ %call47, %phy_off ], [ %call55, %do.end60 ], [ -22, %do.end54.i ], [ -22, %do.end.i117 ]
  %priv = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end66, %do.end25, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %9, %do.end15 ], [ %13, %do.end25 ], [ %ret.0, %out ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_setup_clocks(ptr noundef readonly %hba, i1 noundef zeroext %on, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %or.cond = and i1 %cmp, %on
  br i1 %or.cond, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %opts = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opts, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then2.if.end5_crit_edge, label %if.then4

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %reg_hci.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 180
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %7 = and i32 %6, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %9, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %7) #11, !srcloc !176
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2.if.end5_crit_edge
  %reg_hci.i.i.i26 = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %reg_hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_hci.i.i.i26, align 8
  %add.ptr.i.i.i27 = getelementptr i8, ptr %11, i32 176
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i27) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %13 = ptrtoint ptr %reg_hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_hci.i.i.i26, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %14, i32 180
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %16 = and i32 %12, -385875969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %reg_hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_hci.i.i.i26, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %18, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %16) #11, !srcloc !176
  %19 = and i32 %15, 536870911
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %reg_hci.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_hci.i.i.i26, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %21, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %19) #11, !srcloc !176
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp8 = icmp ne i32 %status, 1
  %22 = or i1 %cmp8, %on
  br i1 %22, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.else
  %reg_hci.i.i.i28 = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i.i.i29 = getelementptr i8, ptr %24, i32 176
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i29) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %26 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i12.i.i30 = getelementptr i8, ptr %27, i32 180
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i30) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %29 = or i32 %28, -536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i14.i.i = getelementptr i8, ptr %31, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %29) #11, !srcloc !176
  %32 = or i32 %25, 385875968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %34, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %32) #11, !srcloc !176
  %opts10 = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %opts10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opts10, align 4
  %and11 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then9.cleanup_crit_edge, label %if.then13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i.i.i32 = getelementptr i8, ptr %38, i32 180
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i32) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %40 = or i32 %39, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %reg_hci.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_hci.i.i.i28, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %42, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %40) #11, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end5, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_hce_enable_notify(ptr noundef readonly %hba, i32 noundef %status) #4 align 64 {
entry:
  %clk_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %ufshcd_get_variant.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
  ]

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %ufshcd_get_variant.exit
  %drv_data = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_data, align 8
  %pre_hce_enable = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %pre_hce_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pre_hce_enable, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.ufshcd_get_variant.exit.i_crit_edge, label %if.then

sw.bb.ufshcd_get_variant.exit.i_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_get_variant.exit.i

if.then:                                          ; preds = %sw.bb
  %call3 = tail call i32 %6(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.ufshcd_get_variant.exit.i_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.ufshcd_get_variant.exit.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_get_variant.exit.i

ufshcd_get_variant.exit.i:                        ; preds = %if.then.ufshcd_get_variant.exit.i_crit_edge, %sw.bb.ufshcd_get_variant.exit.i_crit_edge
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = xor i32 %9, -1
  %reg_hci.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 180
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %13 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 180
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %16 = and i32 %15, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %18, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %16) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #11, !srcloc !176
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %ufshcd_get_variant.exit.i
  %21 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %22, i32 80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %24 = and i32 %23, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i38 = icmp eq i32 %24, 0
  br i1 %tobool.not.i38, label %do.body.i.exynos_ufs_host_reset.exit_crit_edge, label %do.cond.i

do.body.i.exynos_ufs_host_reset.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_host_reset.exit

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %25, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.end5.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end5.i:                                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.42) #14
  br label %exynos_ufs_host_reset.exit

exynos_ufs_host_reset.exit:                       ; preds = %do.end5.i, %do.body.i.exynos_ufs_host_reset.exit_crit_edge
  %ret.0.i = phi i32 [ -110, %do.end5.i ], [ 0, %do.body.i.exynos_ufs_host_reset.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %29, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 %12) #11, !srcloc !176
  br i1 %tobool.not.i38, label %exynos_ufs_dev_hw_reset.exit, label %exynos_ufs_host_reset.exit.cleanup_crit_edge

exynos_ufs_host_reset.exit.cleanup_crit_edge:     ; preds = %exynos_ufs_host_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

exynos_ufs_dev_hw_reset.exit:                     ; preds = %exynos_ufs_host_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %reg_hci.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %33, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 0) #11, !srcloc !176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 1073740) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %36, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777216) #11, !srcloc !176
  br label %cleanup

sw.bb11:                                          ; preds = %ufshcd_get_variant.exit
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %drv_data.i = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drv_data.i, align 8
  %uic_attr.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %uic_attr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uic_attr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_idx.i) #11
  %pclk_rate.i = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %pclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pclk_rate.i, align 8
  %div2.i = udiv i32 1000000000, %44
  %mul3.i = mul i32 %div2.i, 960
  %div4.i = udiv i32 -1474836480, %mul3.i
  %45 = add i32 %mul3.i, -314
  call void @__sanitizer_cov_trace_const_cmp4(i32 627, i32 %45)
  %46 = icmp ult i32 %45, 627
  %not..i = xor i1 %46, true
  %spec.select.i = sext i1 %not..i to i32
  %spec.select29.i = select i1 %46, i32 %div4.i, i32 0
  %mul3.1.i = mul i32 %div2.i, 480
  %div4.1.i = udiv i32 -1474836480, %mul3.1.i
  %47 = add i32 %mul3.1.i, -314
  call void @__sanitizer_cov_trace_const_cmp4(i32 627, i32 %47)
  %48 = icmp ult i32 %47, 627
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.1.i, i32 %spec.select29.i)
  %cmp7.1.i = icmp ugt i32 %div4.1.i, %spec.select29.i
  %or.cond22.1.i = select i1 %48, i1 %cmp7.1.i, i1 false
  %spec.select.1.i = select i1 %or.cond22.1.i, i32 1, i32 %spec.select.i
  %spec.select29.1.i = select i1 %or.cond22.1.i, i32 %div4.1.i, i32 %spec.select29.i
  %mul3.2.i = mul i32 %div2.i, 240
  %div4.2.i = udiv i32 -1474836480, %mul3.2.i
  %49 = add i32 %mul3.2.i, -314
  call void @__sanitizer_cov_trace_const_cmp4(i32 627, i32 %49)
  %50 = icmp ult i32 %49, 627
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.2.i, i32 %spec.select29.1.i)
  %cmp7.2.i = icmp ugt i32 %div4.2.i, %spec.select29.1.i
  %or.cond22.2.i = select i1 %50, i1 %cmp7.2.i, i1 false
  %spec.select.2.i = select i1 %or.cond22.2.i, i32 2, i32 %spec.select.1.i
  %spec.select29.2.i = select i1 %or.cond22.2.i, i32 %div4.2.i, i32 %spec.select29.1.i
  %mul3.3.i = mul i32 %div2.i, 120
  %div4.3.i = udiv i32 -1474836480, %mul3.3.i
  %51 = add i32 %mul3.3.i, -314
  call void @__sanitizer_cov_trace_const_cmp4(i32 627, i32 %51)
  %52 = icmp ult i32 %51, 627
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.3.i, i32 %spec.select29.2.i)
  %cmp7.3.i = icmp ugt i32 %div4.3.i, %spec.select29.2.i
  %or.cond22.3.i = select i1 %52, i1 %cmp7.3.i, i1 false
  %spec.select.3.i = select i1 %or.cond22.3.i, i32 3, i32 %spec.select.2.i
  %53 = ptrtoint ptr %clk_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select.3.i, ptr %clk_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.3.i)
  %cmp10.i = icmp eq i32 %spec.select.3.i, -1
  br i1 %cmp10.i, label %if.then11.i, label %sw.bb11.exynos_ufs_calc_pwm_clk_div.exit_crit_edge

sw.bb11.exynos_ufs_calc_pwm_clk_div.exit_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_calc_pwm_clk_div.exit

if.then11.i:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %38, i32 noundef 67239936, ptr noundef nonnull %clk_idx.i, i8 noundef zeroext 0) #11
  %dev.i44 = getelementptr inbounds %struct.ufs_hba, ptr %38, i32 0, i32 8
  %54 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.44) #14
  br label %exynos_ufs_calc_pwm_clk_div.exit

exynos_ufs_calc_pwm_clk_div.exit:                 ; preds = %if.then11.i, %sw.bb11.exynos_ufs_calc_pwm_clk_div.exit_crit_edge
  %56 = ptrtoint ptr %clk_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %clk_idx.i, align 4
  %and.i = and i32 %57, 3
  %cmn_pwm_clk_ctrl.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %42, i32 0, i32 21
  %58 = ptrtoint ptr %cmn_pwm_clk_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i, ptr %cmn_pwm_clk_ctrl.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_idx.i) #11
  %opts = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 22
  %59 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %opts, align 4
  %and = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %exynos_ufs_calc_pwm_clk_div.exit.if.end14_crit_edge

exynos_ufs_calc_pwm_clk_div.exit.if.end14_crit_edge: ; preds = %exynos_ufs_calc_pwm_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %exynos_ufs_calc_pwm_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #13
  %reg_hci.i.i.i45 = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %reg_hci.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_hci.i.i.i45, align 8
  %add.ptr.i.i.i46 = getelementptr i8, ptr %62, i32 180
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i46) #11, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %64 = or i32 %63, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %reg_hci.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_hci.i.i.i45, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %66, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %64) #11, !srcloc !176
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %exynos_ufs_calc_pwm_clk_div.exit.if.end14_crit_edge
  %67 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drv_data.i, align 8
  %post_hce_enable = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %post_hce_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %post_hce_enable, align 4
  %tobool16.not = icmp eq ptr %70, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 %70(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %exynos_ufs_dev_hw_reset.exit, %exynos_ufs_host_reset.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %ret.0.i, %exynos_ufs_host_reset.exit.cleanup_crit_edge ], [ 0, %ufshcd_get_variant.exit.cleanup_crit_edge ], [ %call20, %if.then17 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %exynos_ufs_dev_hw_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_link_startup_notify(ptr noundef %hba, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !171

do.body4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %reg_hci.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 538968192) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 117440640) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %8, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 385876096) #11, !srcloc !176
  %opts.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 22
  %9 = ptrtoint ptr %opts.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opts.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %ufshcd_get_variant.exit.i.exynos_ufs_set_unipro_pclk_div.exit.i_crit_edge, label %if.then.i.i

ufshcd_get_variant.exit.i.exynos_ufs_set_unipro_pclk_div.exit.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_set_unipro_pclk_div.exit.i

if.then.i.i:                                      ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i.i3.i = getelementptr i8, ptr %12, i32 104
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %14 = and i32 %13, -251658241
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %pclk_div.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 9
  %16 = ptrtoint ptr %pclk_div.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pclk_div.i.i, align 4
  %and2.i.i = and i32 %17, 15
  %or.i.i = or i32 %and2.i.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %19 = ptrtoint ptr %reg_hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_hci.i.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %20, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %18) #11, !srcloc !176
  br label %exynos_ufs_set_unipro_pclk_div.exit.i

exynos_ufs_set_unipro_pclk_div.exit.i:            ; preds = %if.then.i.i, %ufshcd_get_variant.exit.i.exynos_ufs_set_unipro_pclk_div.exit.i_crit_edge
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 8
  %mclk_rate.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 12
  %23 = ptrtoint ptr %mclk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mclk_rate.i.i, align 8
  %sub.i.i = add i32 %24, 999999999
  %div.i.i = udiv i32 %sub.i.i, %24
  %call.i.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %22, i32 noundef -1793851392, i8 noundef zeroext 0, i32 noundef %div.i.i, i8 noundef zeroext 0) #11
  %drv_data.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 19
  %25 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr.i.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %uic_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uic_attr.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %call.i13.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %22, i32 noundef 358875136, i8 noundef zeroext 0, i32 noundef %30, i8 noundef zeroext 0) #11
  %31 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr5.i.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %uic_attr5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uic_attr5.i.i, align 4
  %pa_dbg_option_suite.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %pa_dbg_option_suite.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pa_dbg_option_suite.i.i, align 4
  %call.i14.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %22, i32 noundef -1788608512, i8 noundef zeroext 0, i32 noundef %36, i8 noundef zeroext 0) #11
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 8
  %phy.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy.i.i, align 4
  %avail_ln_rx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 13
  %41 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %avail_ln_rx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i, label %exynos_ufs_set_unipro_pclk_div.exit.i.if.then.i5.i_crit_edge, label %lor.lhs.false.i.i

exynos_ufs_set_unipro_pclk_div.exit.i.if.then.i5.i_crit_edge: ; preds = %exynos_ufs_set_unipro_pclk_div.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i5.i

lor.lhs.false.i.i:                                ; preds = %exynos_ufs_set_unipro_pclk_div.exit.i
  %avail_ln_tx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 14
  %43 = ptrtoint ptr %avail_ln_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %avail_ln_tx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp2.i.i = icmp eq i32 %44, 0
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then.i5.i_crit_edge, label %lor.lhs.false.i.i.if.end30.i.i_crit_edge

lor.lhs.false.i.i.if.end30.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

lor.lhs.false.i.i.if.then.i5.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i5.i

if.then.i5.i:                                     ; preds = %lor.lhs.false.i.i.if.then.i5.i_crit_edge, %exynos_ufs_set_unipro_pclk_div.exit.i.if.then.i5.i_crit_edge
  %call.i.i4.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef %38, i32 noundef 356515840, ptr noundef %avail_ln_rx.i.i, i8 noundef zeroext 0) #11
  %avail_ln_tx4.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 14
  %call.i1.i.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef %38, i32 noundef 354418688, ptr noundef %avail_ln_tx4.i.i, i8 noundef zeroext 0) #11
  %45 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %avail_ln_rx.i.i, align 4
  %47 = ptrtoint ptr %avail_ln_tx4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %avail_ln_tx4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp8.not.i.i = icmp eq i32 %46, %48
  br i1 %cmp8.not.i.i, label %if.then.i5.i.if.end30.i.i_crit_edge, label %do.end.i.i, !prof !177

if.then.i5.i.if.end30.i.i_crit_edge:              ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

do.end.i.i:                                       ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 904, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %46, i32 noundef %48) #11
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %do.end.i.i, %if.then.i5.i.if.end30.i.i_crit_edge, %lor.lhs.false.i.i.if.end30.i.i_crit_edge
  %49 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %avail_ln_rx.i.i, align 4
  %attrs.i.i.i = getelementptr inbounds %struct.phy, ptr %40, i32 0, i32 6
  %51 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %attrs.i.i.i, align 4
  %call32.i.i = tail call i32 @phy_init(ptr noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end30.i.i.exynos_ufs_phy_init.exit.i_crit_edge, label %do.end37.i.i

if.end30.i.i.exynos_ufs_phy_init.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_phy_init.exit.i

do.end37.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %38, i32 0, i32 8
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call32.i.i) #14
  %call39.i.i = tail call i32 @phy_exit(ptr noundef %40) #11
  br label %exynos_ufs_phy_init.exit.i

exynos_ufs_phy_init.exit.i:                       ; preds = %do.end37.i.i, %if.end30.i.i.exynos_ufs_phy_init.exit.i_crit_edge
  %54 = ptrtoint ptr %opts.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opts.i.i, align 4
  %and.i = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %exynos_ufs_phy_init.exit.i.if.end.i_crit_edge

exynos_ufs_phy_init.exit.i.if.end.i_crit_edge:    ; preds = %exynos_ufs_phy_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %exynos_ufs_phy_init.exit.i
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %2, align 8
  %t_cfg2.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17
  %58 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr.i.i.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %uic_attr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %uic_attr.i.i.i, align 4
  %cmn_pwm_clk_ctrl.i.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %61, i32 0, i32 21
  %62 = ptrtoint ptr %cmn_pwm_clk_ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmn_pwm_clk_ctrl.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef 67239936, i8 noundef zeroext 0, i32 noundef %63, i8 noundef zeroext 0) #11
  %call.i.i150.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %rx_sel_idx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 15
  %64 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_sel_idx.i.i, align 4
  %66 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add168.i.i = add i32 %67, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add168.i.i)
  %cmp169.i.i = icmp slt i32 %65, %add168.i.i
  br i1 %cmp169.i.i, label %for.body.lr.ph.i.i, label %if.then.i.for.cond38.preheader.i.i_crit_edge

if.then.i.for.cond38.preheader.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond38.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %rx_linereset.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 6
  %rx_base_n_val.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 8
  %rx_gran_n_val.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 9
  %rx_sleep_cnt.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 10
  %rx_stall_cnt.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 11
  br label %for.body.i.i

for.cond38.preheader.i.i:                         ; preds = %for.body.i.i.for.cond38.preheader.i.i_crit_edge, %if.then.i.for.cond38.preheader.i.i_crit_edge
  %avail_ln_tx.i7.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 14
  %68 = ptrtoint ptr %avail_ln_tx.i7.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %avail_ln_tx.i7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp39171.i.i = icmp sgt i32 %69, 0
  br i1 %cmp39171.i.i, label %for.body40.lr.ph.i.i, label %for.cond38.preheader.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge

for.cond38.preheader.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge: ; preds = %for.cond38.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_time_attr.exit.i

for.body40.lr.ph.i.i:                             ; preds = %for.cond38.preheader.i.i
  %tx_high_z_cnt.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 2
  %tx_base_n_val.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 3
  %tx_gran_n_val.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 4
  %tx_sleep_cnt.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 17, i32 5
  br label %for.body40.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0170.i.i = phi i32 [ %65, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %and.i8.i = and i32 %i.0170.i.i, 65535
  %or.i9.i = or i32 %and.i8.i, 51773440
  %70 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr.i10.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %uic_attr.i10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %uic_attr.i10.i, align 4
  %rx_filler_enable.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %rx_filler_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_filler_enable.i.i, align 4
  %call.i.i11.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or.i9.i, i8 noundef zeroext 0, i32 noundef %75, i8 noundef zeroext 0) #11
  %or5.i.i = or i32 %and.i8.i, 51838976
  %76 = ptrtoint ptr %rx_linereset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_linereset.i.i, align 4
  %shr.i.i = lshr i32 %77, 12
  %and6.i.i = and i32 %shr.i.i, 255
  %call.i151.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or5.i.i, i8 noundef zeroext 0, i32 noundef %and6.i.i, i8 noundef zeroext 0) #11
  %or9.i.i = or i32 %and.i8.i, 55902208
  %78 = ptrtoint ptr %rx_base_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_base_n_val.i.i, align 4
  %and10.i.i = and i32 %79, 255
  %call.i152.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or9.i.i, i8 noundef zeroext 0, i32 noundef %and10.i.i, i8 noundef zeroext 0) #11
  %or13.i.i = or i32 %and.i8.i, 55836672
  %80 = ptrtoint ptr %rx_base_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_base_n_val.i.i, align 4
  %shr15.i.i = lshr i32 %81, 8
  %and16.i.i = and i32 %shr15.i.i, 255
  %call.i153.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or13.i.i, i8 noundef zeroext 0, i32 noundef %and16.i.i, i8 noundef zeroext 0) #11
  %or19.i.i = or i32 %and.i8.i, 55771136
  %82 = ptrtoint ptr %rx_gran_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_gran_n_val.i.i, align 4
  %and20.i.i = and i32 %83, 255
  %call.i154.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or19.i.i, i8 noundef zeroext 0, i32 noundef %and20.i.i, i8 noundef zeroext 0) #11
  %or23.i.i = or i32 %and.i8.i, 55705600
  %84 = ptrtoint ptr %rx_gran_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_gran_n_val.i.i, align 4
  %shr25.i.i = lshr i32 %85, 8
  %and26.i.i = and i32 %shr25.i.i, 3
  %call.i155.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or23.i.i, i8 noundef zeroext 0, i32 noundef %and26.i.i, i8 noundef zeroext 0) #11
  %or29.i.i = or i32 %and.i8.i, 54525952
  %86 = ptrtoint ptr %rx_sleep_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_sleep_cnt.i.i, align 4
  %shr30.i.i = lshr i32 %87, 6
  %and31.i.i = and i32 %shr30.i.i, 31
  %call.i156.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or29.i.i, i8 noundef zeroext 0, i32 noundef %and31.i.i, i8 noundef zeroext 0) #11
  %or34.i.i = or i32 %and.i8.i, 54591488
  %88 = ptrtoint ptr %rx_stall_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_stall_cnt.i.i, align 4
  %shr35.i.i = lshr i32 %89, 4
  %and36.i.i = and i32 %shr35.i.i, 255
  %call.i157.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or34.i.i, i8 noundef zeroext 0, i32 noundef %and36.i.i, i8 noundef zeroext 0) #11
  %inc.i.i = add nsw i32 %i.0170.i.i, 1
  %90 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_sel_idx.i.i, align 4
  %92 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add.i.i = add i32 %93, %91
  %cmp.i12.i = icmp slt i32 %inc.i.i, %add.i.i
  br i1 %cmp.i12.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond38.preheader.i.i_crit_edge

for.body.i.i.for.cond38.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond38.preheader.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body40.i.i:                                   ; preds = %for.body40.i.i.for.body40.i.i_crit_edge, %for.body40.lr.ph.i.i
  %i.1172.i.i = phi i32 [ 0, %for.body40.lr.ph.i.i ], [ %inc88.i.i, %for.body40.i.i.for.body40.i.i_crit_edge ]
  %and41.i.i = and i32 %i.1172.i.i, 65535
  %or42.i.i = or i32 %and41.i.i, 41746432
  %94 = ptrtoint ptr %t_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %t_cfg2.i.i, align 4
  %shr43.i.i = lshr i32 %95, 12
  %and44.i.i = and i32 %shr43.i.i, 255
  %call.i158.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or42.i.i, i8 noundef zeroext 0, i32 noundef %and44.i.i, i8 noundef zeroext 0) #11
  %or47.i.i = or i32 %and41.i.i, 42795008
  %96 = ptrtoint ptr %tx_high_z_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_high_z_cnt.i.i, align 4
  %and48.i.i = and i32 %97, 255
  %call.i159.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or47.i.i, i8 noundef zeroext 0, i32 noundef %and48.i.i, i8 noundef zeroext 0) #11
  %or51.i.i = or i32 %and41.i.i, 42729472
  %98 = ptrtoint ptr %tx_high_z_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_high_z_cnt.i.i, align 4
  %shr53.i.i = lshr i32 %99, 8
  %and54.i.i = and i32 %shr53.i.i, 15
  %call.i160.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or51.i.i, i8 noundef zeroext 0, i32 noundef %and54.i.i, i8 noundef zeroext 0) #11
  %or57.i.i = or i32 %and41.i.i, 43188224
  %100 = ptrtoint ptr %tx_base_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_base_n_val.i.i, align 4
  %and58.i.i = and i32 %101, 255
  %call.i161.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or57.i.i, i8 noundef zeroext 0, i32 noundef %and58.i.i, i8 noundef zeroext 0) #11
  %or61.i.i = or i32 %and41.i.i, 43253760
  %102 = ptrtoint ptr %tx_base_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_base_n_val.i.i, align 4
  %shr63.i.i = lshr i32 %103, 8
  %and64.i.i = and i32 %shr63.i.i, 255
  %call.i162.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or61.i.i, i8 noundef zeroext 0, i32 noundef %and64.i.i, i8 noundef zeroext 0) #11
  %or67.i.i = or i32 %and41.i.i, 43319296
  %104 = ptrtoint ptr %tx_gran_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_gran_n_val.i.i, align 4
  %and68.i.i = and i32 %105, 255
  %call.i163.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or67.i.i, i8 noundef zeroext 0, i32 noundef %and68.i.i, i8 noundef zeroext 0) #11
  %or71.i.i = or i32 %and41.i.i, 43384832
  %106 = ptrtoint ptr %tx_gran_n_val.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_gran_n_val.i.i, align 4
  %shr73.i.i = lshr i32 %107, 8
  %and74.i.i = and i32 %shr73.i.i, 3
  %call.i164.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or71.i.i, i8 noundef zeroext 0, i32 noundef %and74.i.i, i8 noundef zeroext 0) #11
  %or77.i.i = or i32 %and41.i.i, 42860544
  %108 = ptrtoint ptr %tx_sleep_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_sleep_cnt.i.i, align 4
  %shr78.i.i = lshr i32 %109, 5
  %and79.i.i = and i32 %shr78.i.i, 127
  %or80.i.i = or i32 %and79.i.i, 128
  %call.i165.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or77.i.i, i8 noundef zeroext 0, i32 noundef %or80.i.i, i8 noundef zeroext 0) #11
  %or83.i.i = or i32 %and41.i.i, 3342336
  %110 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr85.i.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %uic_attr85.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %uic_attr85.i.i, align 4
  %tx_min_activatetime.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %tx_min_activatetime.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_min_activatetime.i.i, align 4
  %call.i166.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef %or83.i.i, i8 noundef zeroext 0, i32 noundef %115, i8 noundef zeroext 0) #11
  %inc88.i.i = add nuw nsw i32 %i.1172.i.i, 1
  %116 = ptrtoint ptr %avail_ln_tx.i7.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %avail_ln_tx.i7.i, align 8
  %cmp39.i.i = icmp slt i32 %inc88.i.i, %117
  br i1 %cmp39.i.i, label %for.body40.i.i.for.body40.i.i_crit_edge, label %for.body40.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge

for.body40.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge: ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_time_attr.exit.i

for.body40.i.i.for.body40.i.i_crit_edge:          ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40.i.i

exynos_ufs_config_phy_time_attr.exit.i:           ; preds = %for.body40.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge, %for.cond38.preheader.i.i.exynos_ufs_config_phy_time_attr.exit.i_crit_edge
  %call.i.i167.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %57, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %2, align 8
  %120 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %drv_data.i.i, align 8
  %uic_attr.i14.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %uic_attr.i14.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %uic_attr.i14.i, align 4
  %call.i.i.i15.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %124 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_sel_idx.i.i, align 4
  %126 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add157.i.i = add i32 %127, %125
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %add157.i.i)
  %cmp158.i.i = icmp slt i32 %125, %add157.i.i
  br i1 %cmp158.i.i, label %for.body.lr.ph.i18.i, label %exynos_ufs_config_phy_time_attr.exit.i.for.end.i.i_crit_edge

exynos_ufs_config_phy_time_attr.exit.i.for.end.i.i_crit_edge: ; preds = %exynos_ufs_config_phy_time_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i18.i:                             ; preds = %exynos_ufs_config_phy_time_attr.exit.i
  %rx_hs_g1_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 15
  %rx_hs_g2_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 16
  %rx_hs_g3_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 17
  %rx_hs_g1_prep_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 18
  %rx_hs_g2_prep_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 19
  %rx_hs_g3_prep_sync_len_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 20
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %for.body.lr.ph.i18.i
  %i.0159.i.i = phi i32 [ %125, %for.body.lr.ph.i18.i ], [ %inc.i23.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %and.i19.i = and i32 %i.0159.i.i, 65535
  %or.i20.i = or i32 %and.i19.i, 9109504
  %128 = ptrtoint ptr %rx_hs_g1_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_hs_g1_sync_len_cap.i.i, align 4
  %call.i.i21.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or.i20.i, i8 noundef zeroext 0, i32 noundef %129, i8 noundef zeroext 0) #11
  %or4.i.i = or i32 %and.i19.i, 9699328
  %130 = ptrtoint ptr %rx_hs_g2_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_hs_g2_sync_len_cap.i.i, align 4
  %call.i144.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or4.i.i, i8 noundef zeroext 0, i32 noundef %131, i8 noundef zeroext 0) #11
  %or7.i.i = or i32 %and.i19.i, 9764864
  %132 = ptrtoint ptr %rx_hs_g3_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_hs_g3_sync_len_cap.i.i, align 4
  %call.i145.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or7.i.i, i8 noundef zeroext 0, i32 noundef %133, i8 noundef zeroext 0) #11
  %or10.i.i = or i32 %and.i19.i, 9175040
  %134 = ptrtoint ptr %rx_hs_g1_prep_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rx_hs_g1_prep_sync_len_cap.i.i, align 4
  %call.i146.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or10.i.i, i8 noundef zeroext 0, i32 noundef %135, i8 noundef zeroext 0) #11
  %or13.i22.i = or i32 %and.i19.i, 9830400
  %136 = ptrtoint ptr %rx_hs_g2_prep_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_hs_g2_prep_sync_len_cap.i.i, align 4
  %call.i147.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or13.i22.i, i8 noundef zeroext 0, i32 noundef %137, i8 noundef zeroext 0) #11
  %or16.i.i = or i32 %and.i19.i, 9895936
  %138 = ptrtoint ptr %rx_hs_g3_prep_sync_len_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rx_hs_g3_prep_sync_len_cap.i.i, align 4
  %call.i148.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or16.i.i, i8 noundef zeroext 0, i32 noundef %139, i8 noundef zeroext 0) #11
  %inc.i23.i = add nsw i32 %i.0159.i.i, 1
  %140 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_sel_idx.i.i, align 4
  %142 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add.i24.i = add i32 %143, %141
  %cmp.i25.i = icmp slt i32 %inc.i23.i, %add.i24.i
  br i1 %cmp.i25.i, label %for.body.i26.i.for.body.i26.i_crit_edge, label %for.body.i26.i.for.end.i.i_crit_edge

for.body.i26.i.for.end.i.i_crit_edge:             ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i26.i

for.end.i.i:                                      ; preds = %for.body.i26.i.for.end.i.i_crit_edge, %exynos_ufs_config_phy_time_attr.exit.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %125, %exynos_ufs_config_phy_time_attr.exit.i.for.end.i.i_crit_edge ], [ %141, %for.body.i26.i.for.end.i.i_crit_edge ]
  %rx_adv_fine_gran_sup_en.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 23
  %144 = ptrtoint ptr %rx_adv_fine_gran_sup_en.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_adv_fine_gran_sup_en.i.i, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %145, label %for.end.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge [
    i32 0, label %for.cond20.preheader.i.i
    i32 1, label %for.cond48.preheader.i.i
  ]

for.end.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_cap_attr.exit.i

for.cond48.preheader.i.i:                         ; preds = %for.end.i.i
  %147 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_sel_idx.i.i, align 4
  %149 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add51160.i.i = add i32 %150, %148
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i.i, i32 %add51160.i.i)
  %cmp52161.i.i = icmp slt i32 %.lcssa.i.i, %add51160.i.i
  br i1 %cmp52161.i.i, label %for.body53.lr.ph.i.i, label %for.cond48.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge

for.cond48.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge: ; preds = %for.cond48.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_cap_attr.exit.i

for.body53.lr.ph.i.i:                             ; preds = %for.cond48.preheader.i.i
  %rx_adv_fine_gran_step.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 24
  %rx_adv_min_actv_time_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 27
  %rx_adv_hibern8_time_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 28
  br label %for.body53.i.i

for.cond20.preheader.i.i:                         ; preds = %for.end.i.i
  %151 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rx_sel_idx.i.i, align 4
  %153 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add23166.i.i = add i32 %154, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i.i, i32 %add23166.i.i)
  %cmp24167.i.i = icmp slt i32 %.lcssa.i.i, %add23166.i.i
  br i1 %cmp24167.i.i, label %for.body25.lr.ph.i.i, label %for.cond20.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge

for.cond20.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge: ; preds = %for.cond20.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_cap_attr.exit.i

for.body25.lr.ph.i.i:                             ; preds = %for.cond20.preheader.i.i
  %rx_min_actv_time_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 25
  %rx_hibern8_time_cap.i.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %123, i32 0, i32 26
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.inc41.i.i.for.body25.i.i_crit_edge, %for.body25.lr.ph.i.i
  %i.1168.i.i = phi i32 [ %.lcssa.i.i, %for.body25.lr.ph.i.i ], [ %inc42.i.i, %for.inc41.i.i.for.body25.i.i_crit_edge ]
  %and26.i27.i = and i32 %i.1168.i.i, 65535
  %or27.i.i = or i32 %and26.i27.i, 9961472
  %call.i149.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or27.i.i, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %155 = ptrtoint ptr %rx_min_actv_time_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_min_actv_time_cap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i28.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i28.i, label %for.body25.i.i.if.end.i.i_crit_edge, label %if.then29.i.i

for.body25.i.i.if.end.i.i_crit_edge:              ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then29.i.i:                                    ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or31.i.i = or i32 %and26.i27.i, 9371648
  %call.i150.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or31.i.i, i8 noundef zeroext 0, i32 noundef %156, i8 noundef zeroext 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then29.i.i, %for.body25.i.i.if.end.i.i_crit_edge
  %157 = ptrtoint ptr %rx_hibern8_time_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_hibern8_time_cap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool34.not.i.i = icmp eq i32 %158, 0
  br i1 %tobool34.not.i.i, label %if.end.i.i.for.inc41.i.i_crit_edge, label %if.then35.i.i

if.end.i.i.for.inc41.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.i.i

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or37.i.i = or i32 %and26.i27.i, 9568256
  %call.i151.i29.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or37.i.i, i8 noundef zeroext 0, i32 noundef %158, i8 noundef zeroext 0) #11
  br label %for.inc41.i.i

for.inc41.i.i:                                    ; preds = %if.then35.i.i, %if.end.i.i.for.inc41.i.i_crit_edge
  %inc42.i.i = add nsw i32 %i.1168.i.i, 1
  %159 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_sel_idx.i.i, align 4
  %161 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add23.i.i = add i32 %162, %160
  %cmp24.i.i = icmp slt i32 %inc42.i.i, %add23.i.i
  br i1 %cmp24.i.i, label %for.inc41.i.i.for.body25.i.i_crit_edge, label %for.inc41.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge

for.inc41.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge: ; preds = %for.inc41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_cap_attr.exit.i

for.inc41.i.i.for.body25.i.i_crit_edge:           ; preds = %for.inc41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25.i.i

for.body53.i.i:                                   ; preds = %for.inc77.i.i.for.body53.i.i_crit_edge, %for.body53.lr.ph.i.i
  %i.2162.i.i = phi i32 [ %.lcssa.i.i, %for.body53.lr.ph.i.i ], [ %inc78.i.i, %for.inc77.i.i.for.body53.i.i_crit_edge ]
  %163 = ptrtoint ptr %rx_adv_fine_gran_step.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_adv_fine_gran_step.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool54.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool54.not.i.i, label %for.body53.i.i.if.end62.i.i_crit_edge, label %if.then55.i.i

for.body53.i.i.if.end62.i.i_crit_edge:            ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i.i

if.then55.i.i:                                    ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and56.i.i = and i32 %i.2162.i.i, 65535
  %or57.i30.i = or i32 %and56.i.i, 9961472
  %and59.i.i = shl i32 %164, 1
  %shl.i.i = and i32 %and59.i.i, 6
  %or60.i.i = or i32 %shl.i.i, 1
  %call.i152.i31.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or57.i30.i, i8 noundef zeroext 0, i32 noundef %or60.i.i, i8 noundef zeroext 0) #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then55.i.i, %for.body53.i.i.if.end62.i.i_crit_edge
  %165 = ptrtoint ptr %rx_adv_min_actv_time_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_adv_min_actv_time_cap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool63.not.i.i = icmp eq i32 %166, 0
  br i1 %tobool63.not.i.i, label %if.end62.i.i.if.end69.i.i_crit_edge, label %if.then64.i.i

if.end62.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i.i

if.then64.i.i:                                    ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and65.i.i = and i32 %i.2162.i.i, 65535
  %or66.i.i = or i32 %and65.i.i, 10092544
  %call.i153.i32.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or66.i.i, i8 noundef zeroext 0, i32 noundef %166, i8 noundef zeroext 0) #11
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then64.i.i, %if.end62.i.i.if.end69.i.i_crit_edge
  %167 = ptrtoint ptr %rx_adv_hibern8_time_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rx_adv_hibern8_time_cap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool70.not.i.i = icmp eq i32 %168, 0
  br i1 %tobool70.not.i.i, label %if.end69.i.i.for.inc77.i.i_crit_edge, label %if.then71.i.i

if.end69.i.i.for.inc77.i.i_crit_edge:             ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77.i.i

if.then71.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and72.i.i = and i32 %i.2162.i.i, 65535
  %or73.i.i = or i32 %and72.i.i, 10027008
  %call.i154.i33.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef %or73.i.i, i8 noundef zeroext 0, i32 noundef %168, i8 noundef zeroext 0) #11
  br label %for.inc77.i.i

for.inc77.i.i:                                    ; preds = %if.then71.i.i, %if.end69.i.i.for.inc77.i.i_crit_edge
  %inc78.i.i = add nsw i32 %i.2162.i.i, 1
  %169 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_sel_idx.i.i, align 4
  %171 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add51.i.i = add i32 %172, %170
  %cmp52.i.i = icmp slt i32 %inc78.i.i, %add51.i.i
  br i1 %cmp52.i.i, label %for.inc77.i.i.for.body53.i.i_crit_edge, label %for.inc77.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge

for.inc77.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge: ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_phy_cap_attr.exit.i

for.inc77.i.i.for.body53.i.i_crit_edge:           ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i.i

exynos_ufs_config_phy_cap_attr.exit.i:            ; preds = %for.inc77.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge, %for.inc41.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge, %for.cond20.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge, %for.cond48.preheader.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge, %for.end.i.i.exynos_ufs_config_phy_cap_attr.exit.i_crit_edge
  %call.i.i155.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %119, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %exynos_ufs_config_phy_cap_attr.exit.i, %exynos_ufs_phy_init.exit.i.if.end.i_crit_edge
  %call2.i = tail call i32 @exynos_ufs_setup_clocks(ptr noundef nonnull %hba, i1 noundef zeroext true, i32 noundef 0) #11
  %173 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %drv_data.i.i, align 8
  %pre_link.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %pre_link.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pre_link.i, align 4
  %tobool3.not.i = icmp eq ptr %176, null
  br i1 %tobool3.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then4.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 %176(ptr noundef %2) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tobool.not.i.i4 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i4, label %do.body4.i.i5, label %ufshcd_get_variant.exit.i12, !prof !171

do.body4.i.i5:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i12:                      ; preds = %sw.bb1
  %priv.i.i6 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %177 = ptrtoint ptr %priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %priv.i.i6, align 8
  %phy.i = getelementptr inbounds %struct.exynos_ufs, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %phy.i, align 4
  %drv_data.i = getelementptr inbounds %struct.exynos_ufs, ptr %178, i32 0, i32 19
  %181 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %drv_data.i, align 8
  %uic_attr.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %uic_attr.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %uic_attr.i, align 4
  tail call fastcc void @exynos_ufs_establish_connt(ptr noundef %178) #11
  %pclk_rate1.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %178, i32 0, i32 8
  %185 = ptrtoint ptr %pclk_rate1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pclk_rate1.i.i.i, align 8
  %div.i.i.i = udiv i32 1000000000, %186
  %rem.i.i.i = srem i32 1000000000, %186
  %mul.i.i.i = mul i32 %rem.i.i.i, 10
  %div3.i.i.i = sdiv i32 %mul.i.i.i, %186
  %mul5.i.i.i = mul i32 %div.i.i.i, 10
  %add.i.i.i = add i32 %div3.i.i.i, %mul5.i.i.i
  %div6.i.i.i = sdiv i32 5000, %add.i.i.i
  %and.i.i7 = and i32 %div6.i.i.i, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %187 = tail call i32 @llvm.bswap.i32(i32 %and.i.i7) #11
  %reg_hci.i.i.i8 = getelementptr inbounds %struct.exynos_ufs, ptr %178, i32 0, i32 2
  %188 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i.i.i9 = getelementptr i8, ptr %189, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i9, i32 %187) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %190 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i.i = getelementptr i8, ptr %191, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 167772160) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %192 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_hci.i.i.i8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 201326592) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %194 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %195, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 201326592) #11, !srcloc !176
  %nutrs.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 24
  %196 = ptrtoint ptr %nutrs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nutrs.i, align 8
  %notmask.i = shl nsw i32 -1, %197
  %sub.i = xor i32 %notmask.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %198 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #11
  %199 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %200, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %198) #11, !srcloc !176
  %nutmrs.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 25
  %201 = ptrtoint ptr %nutmrs.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nutmrs.i, align 4
  %notmask1.i = shl nsw i32 -1, %202
  %sub2.i = xor i32 %notmask1.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %203 = tail call i32 @llvm.bswap.i32(i32 %sub2.i) #11
  %204 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %205, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %203) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %206 = ptrtoint ptr %reg_hci.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg_hci.i.i.i8, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %207, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 251658240) #11, !srcloc !176
  %opts.i = getelementptr inbounds %struct.exynos_ufs, ptr %178, i32 0, i32 22
  %208 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %opts.i, align 4
  %and.i10 = and i32 %209, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %ufshcd_get_variant.exit.i12.if.end.i14_crit_edge, label %if.then.i13

ufshcd_get_variant.exit.i12.if.end.i14_crit_edge: ; preds = %ufshcd_get_variant.exit.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i14

if.then.i13:                                      ; preds = %ufshcd_get_variant.exit.i12
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -1073676288, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.then.i13, %ufshcd_get_variant.exit.i12.if.end.i14_crit_edge
  %pa_granularity.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %184, i32 0, i32 29
  %210 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %pa_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool4.not.i = icmp eq i32 %211, 0
  br i1 %tobool4.not.i, label %if.end.i14.if.end21.i_crit_edge, label %if.then5.i

if.end.i14.if.end21.i_crit_edge:                  ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then5.i:                                       ; preds = %if.end.i14
  %call.i.i.i15 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %212 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pa_granularity.i, align 4
  %call.i11.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363462656, i8 noundef zeroext 0, i32 noundef %213, i8 noundef zeroext 0) #11
  %call.i.i12.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %pa_tactivate.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %184, i32 0, i32 30
  %214 = ptrtoint ptr %pa_tactivate.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %pa_tactivate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool8.not.i = icmp eq i32 %215, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then9.i

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i13.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363331584, i8 noundef zeroext 0, i32 noundef %215, i8 noundef zeroext 0) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then5.i.if.end12.i_crit_edge
  %pa_hibern8time.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %184, i32 0, i32 31
  %216 = ptrtoint ptr %pa_hibern8time.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %pa_hibern8time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool13.not.i = icmp eq i32 %217, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.end21.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %218 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %opts.i, align 4
  %and15.i = and i32 %219, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i14.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363266048, i8 noundef zeroext 0, i32 noundef %217, i8 noundef zeroext 0) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.end12.i.if.end21.i_crit_edge, %if.end.i14.if.end21.i_crit_edge
  %220 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %opts.i, align 4
  %and23.i = and i32 %221, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end46.i_crit_edge, label %if.then25.i

if.end21.i.if.end46.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then25.i:                                      ; preds = %if.end21.i
  %222 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pa_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool27.not.i = icmp eq i32 %223, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.then25.i.if.end31.i_crit_edge

if.then25.i.if.end31.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i15.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 363462656, ptr noundef %pa_granularity.i, i8 noundef zeroext 0) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.then25.i.if.end31.i_crit_edge
  %pa_hibern8time32.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %184, i32 0, i32 31
  %224 = ptrtoint ptr %pa_hibern8time32.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pa_hibern8time32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool33.not.i = icmp eq i32 %225, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end31.i.if.end37.i_crit_edge

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i16.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 363266048, ptr noundef %pa_hibern8time32.i, i8 noundef zeroext 0) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end37.i_crit_edge
  %call.i17.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363266048, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %226 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pa_granularity.i, align 4
  %228 = add i32 %227, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %228)
  %229 = icmp ult i32 %228, -6
  br i1 %229, label %do.end.i, label %if.end37.i.if.end46.i_crit_edge

if.end37.i.if.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

do.end.i:                                         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %230 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %231, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %227) #14
  %232 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 6, ptr %pa_granularity.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %if.end37.i.if.end46.i_crit_edge, %if.end21.i.if.end46.i_crit_edge
  %call47.i = tail call i32 @phy_calibrate(ptr noundef %180) #11
  %233 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %drv_data.i, align 8
  %post_link.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %post_link.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %post_link.i, align 4
  %tobool49.not.i = icmp eq ptr %236, null
  br i1 %tobool49.not.i, label %if.end46.i.sw.epilog_crit_edge, label %if.then50.i

if.end46.i.sw.epilog_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call53.i = tail call i32 %236(ptr noundef %178) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50.i, %if.end46.i.sw.epilog_crit_edge, %if.then4.i, %if.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_pwr_change_notify(ptr noundef %hba, i32 noundef %status, ptr noundef %dev_max_params, ptr noundef %dev_req_params) #4 align 64 {
entry:
  %pwr_str.i = alloca [64 x i8], align 1
  %ufs_exynos_cap.i = alloca %struct.ufs_dev_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !171

do.body4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %phy.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ufs_exynos_cap.i) #11
  %5 = call ptr @memset(ptr %ufs_exynos_cap.i, i32 255, i32 48)
  %tobool.not.i = icmp eq ptr %dev_req_params, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #14
  br label %exynos_ufs_pre_pwr_mode.exit

if.end.i:                                         ; preds = %ufshcd_get_variant.exit.i
  call void @ufshcd_init_pwr_dev_param(ptr noundef nonnull %ufs_exynos_cap.i) #11
  %call2.i = call i32 @ufshcd_get_pwr_dev_param(ptr noundef nonnull %ufs_exynos_cap.i, ptr noundef %dev_max_params, ptr noundef nonnull %dev_req_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #14
  br label %exynos_ufs_pre_pwr_mode.exit

if.end10.i:                                       ; preds = %if.end.i
  %drv_data.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 19
  %6 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data.i, align 8
  %pre_pwr_change.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pre_pwr_change.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pre_pwr_change.i, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = call i32 %9(ptr noundef %2, ptr noundef nonnull %dev_req_params) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end16.i_crit_edge
  %pwr_rx.i.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 4
  %10 = ptrtoint ptr %pwr_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_rx.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %11, label %if.end16.i.if.end20.i_crit_edge [
    i32 1, label %if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge
    i32 4, label %if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge20
  ]

if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge20:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i

if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

ufshcd_is_hs_mode.exit.i:                         ; preds = %if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge, %if.end16.i.ufshcd_is_hs_mode.exit.i_crit_edge20
  %pwr_tx.i.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 5
  %13 = ptrtoint ptr %pwr_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pwr_tx.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %14, label %ufshcd_is_hs_mode.exit.i.if.end20.i_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge21
  ]

ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge21: ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge:   ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

ufshcd_is_hs_mode.exit.i.if.end20.i_crit_edge:    ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then18.i:                                      ; preds = %ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge, %ufshcd_is_hs_mode.exit.i.if.then18.i_crit_edge21
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 8
  %18 = ptrtoint ptr %dev_req_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_req_params, align 4
  %gear_tx.i.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 1
  %20 = ptrtoint ptr %gear_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gear_tx.i.i, align 4
  %22 = call i32 @llvm.umax.i32(i32 %19, i32 %21) #11
  %trunc.i.i = trunc i32 %22 to i8
  %switch.tableidx = add i8 %trunc.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %23 = icmp ult i8 %switch.tableidx, 3
  br i1 %23, label %switch.lookup, label %if.then18.i.exynos_ufs_config_sync_pattern_mask.exit.i_crit_edge

if.then18.i.exynos_ufs_config_sync_pattern_mask.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exynos_ufs_config_sync_pattern_mask.exit.i

switch.lookup:                                    ; preds = %if.then18.i
  %24 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.exynos_ufs_pwr_change_notify, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pclk_rate1.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 8
  %26 = ptrtoint ptr %pclk_rate1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pclk_rate1.i.i.i, align 8
  %div.i.i.i = udiv i32 1000000000, %27
  %rem.i.i.i = srem i32 1000000000, %27
  %mul.i.i.i = mul i32 %rem.i.i.i, 10
  %div3.i.i.i = sdiv i32 %mul.i.i.i, %27
  %mul5.i.i.i = mul i32 %div.i.i.i, 10
  %add.i.i.i = add i32 %div3.i.i.i, %mul5.i.i.i
  %div6.i.i.i = sdiv i32 %switch.load, %add.i.i.i
  %shr.i.i = lshr i32 %div6.i.i.i, 8
  %and.i.i = and i32 %shr.i.i, 255
  %call.i.i.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %17, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %rx_sel_idx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 15
  %28 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_sel_idx.i.i, align 4
  %avail_ln_rx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 13
  %30 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add42.i.i = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add42.i.i)
  %cmp1843.i.i = icmp slt i32 %29, %add42.i.i
  br i1 %cmp1843.i.i, label %switch.lookup.for.body.i.i_crit_edge, label %switch.lookup.for.end.i.i_crit_edge

switch.lookup.for.end.i.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

switch.lookup.for.body.i.i_crit_edge:             ; preds = %switch.lookup
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %switch.lookup.for.body.i.i_crit_edge
  %i.044.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %29, %switch.lookup.for.body.i.i_crit_edge ]
  %and20.i.i = and i32 %i.044.i.i, 65535
  %or.i.i = or i32 %and20.i.i, 52494336
  %call.i.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext 0, i32 noundef %and.i.i, i8 noundef zeroext 0) #11
  %inc.i.i = add nsw i32 %i.044.i.i, 1
  %32 = ptrtoint ptr %rx_sel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_sel_idx.i.i, align 4
  %34 = ptrtoint ptr %avail_ln_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %avail_ln_rx.i.i, align 4
  %add.i.i = add i32 %35, %33
  %cmp18.i.i = icmp slt i32 %inc.i.i, %add.i.i
  br i1 %cmp18.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %switch.lookup.for.end.i.i_crit_edge
  %call.i.i41.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %17, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  br label %exynos_ufs_config_sync_pattern_mask.exit.i

exynos_ufs_config_sync_pattern_mask.exit.i:       ; preds = %for.end.i.i, %if.then18.i.exynos_ufs_config_sync_pattern_mask.exit.i_crit_edge
  %hs_rate.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 6
  %36 = ptrtoint ptr %hs_rate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hs_rate.i, align 4
  %.off.i = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %exynos_ufs_config_sync_pattern_mask.exit.i.if.end20.i_crit_edge

exynos_ufs_config_sync_pattern_mask.exit.i.if.end20.i_crit_edge: ; preds = %exynos_ufs_config_sync_pattern_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

sw.bb.i:                                          ; preds = %exynos_ufs_config_sync_pattern_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = call i32 @phy_calibrate(ptr noundef %4) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %sw.bb.i, %exynos_ufs_config_sync_pattern_mask.exit.i.if.end20.i_crit_edge, %ufshcd_is_hs_mode.exit.i.if.end20.i_crit_edge, %if.end16.i.if.end20.i_crit_edge
  %call.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541130752, i8 noundef zeroext 0, i32 noundef 8064, i8 noundef zeroext 0) #11
  %call.i40.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541196288, i8 noundef zeroext 0, i32 noundef 28224, i8 noundef zeroext 0) #11
  %call.i41.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541261824, i8 noundef zeroext 0, i32 noundef 20160, i8 noundef zeroext 0) #11
  br label %exynos_ufs_pre_pwr_mode.exit

exynos_ufs_pre_pwr_mode.exit:                     ; preds = %if.end20.i, %do.end7.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end20.i ], [ %call2.i, %do.end7.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ufs_exynos_cap.i) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tobool.not.i.i5 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i5, label %do.body4.i.i6, label %ufshcd_get_variant.exit.i11, !prof !171

do.body4.i.i6:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i11:                      ; preds = %sw.bb1
  %priv.i.i7 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %38 = ptrtoint ptr %priv.i.i7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i7, align 8
  %phy.i8 = getelementptr inbounds %struct.exynos_ufs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %phy.i8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy.i8, align 4
  %42 = ptrtoint ptr %dev_req_params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev_req_params, align 4
  %gear_tx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 1
  %44 = ptrtoint ptr %gear_tx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gear_tx.i, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %43, i32 %45) #11
  %lane_rx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 2
  %47 = ptrtoint ptr %lane_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lane_rx.i, align 4
  %lane_tx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 3
  %49 = ptrtoint ptr %lane_tx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lane_tx.i, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %48, i32 %50) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pwr_str.i) #11
  %52 = call ptr @memset(ptr %pwr_str.i, i32 0, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i9 = icmp eq i32 %46, 0
  %spec.store.select.i = select i1 %tobool.not.i9, i32 1, i32 %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool7.not.i = icmp eq i32 %51, 0
  %spec.store.select27.i = select i1 %tobool7.not.i, i32 1, i32 %51
  %drv_data.i10 = getelementptr inbounds %struct.exynos_ufs, ptr %39, i32 0, i32 19
  %53 = ptrtoint ptr %drv_data.i10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %drv_data.i10, align 8
  %post_pwr_change.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %post_pwr_change.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %post_pwr_change.i, align 4
  %tobool10.not.i = icmp eq ptr %56, null
  br i1 %tobool10.not.i, label %ufshcd_get_variant.exit.i11.if.end15.i_crit_edge, label %if.then11.i

ufshcd_get_variant.exit.i11.if.end15.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then11.i:                                      ; preds = %ufshcd_get_variant.exit.i11
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 %56(ptr noundef %39, ptr noundef %dev_req_params) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %ufshcd_get_variant.exit.i11.if.end15.i_crit_edge
  %pwr_rx.i.i12 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 4
  %57 = ptrtoint ptr %pwr_rx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pwr_rx.i.i12, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %58, label %if.end15.i.if.else.i_crit_edge [
    i32 1, label %if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge
    i32 4, label %if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge22
  ]

if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge22: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i14

if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i14

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

ufshcd_is_hs_mode.exit.i14:                       ; preds = %if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge, %if.end15.i.ufshcd_is_hs_mode.exit.i14_crit_edge22
  %pwr_tx.i.i13 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 5
  %60 = ptrtoint ptr %pwr_tx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pwr_tx.i.i13, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %61, label %ufshcd_is_hs_mode.exit.i14.if.else.i_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge23
  ]

ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge23: ; preds = %ufshcd_is_hs_mode.exit.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge: ; preds = %ufshcd_is_hs_mode.exit.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

ufshcd_is_hs_mode.exit.i14.if.else.i_crit_edge:   ; preds = %ufshcd_is_hs_mode.exit.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then17.i:                                      ; preds = %ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge, %ufshcd_is_hs_mode.exit.i14.if.then17.i_crit_edge23
  %hs_rate.i15 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 6
  %63 = ptrtoint ptr %hs_rate.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hs_rate.i15, align 4
  %.off.i16 = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i16)
  %switch.i17 = icmp ult i32 %.off.i16, 2
  br i1 %switch.i17, label %sw.bb.i18, label %if.then17.i.sw.epilog.i_crit_edge

if.then17.i.sw.epilog.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i18:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call i32 @phy_calibrate(ptr noundef %41) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i18, %if.then17.i.sw.epilog.i_crit_edge
  %65 = ptrtoint ptr %hs_rate.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hs_rate.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp20.i = icmp eq i32 %66, 1
  %cond21.i = select i1 %cmp20.i, ptr @.str.58, ptr @.str.59
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pwr_str.i, i32 noundef 64, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond21.i, i32 noundef %spec.store.select.i, i32 noundef %spec.store.select27.i) #11
  br label %exynos_ufs_post_pwr_mode.exit

if.else.i:                                        ; preds = %ufshcd_is_hs_mode.exit.i14.if.else.i_crit_edge, %if.end15.i.if.else.i_crit_edge
  %call24.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pwr_str.i, i32 noundef 64, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %spec.store.select.i, i32 noundef %spec.store.select27.i) #11
  br label %exynos_ufs_post_pwr_mode.exit

exynos_ufs_post_pwr_mode.exit:                    ; preds = %if.else.i, %sw.epilog.i
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.62, ptr noundef nonnull %pwr_str.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pwr_str.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %exynos_ufs_post_pwr_mode.exit, %exynos_ufs_pre_pwr_mode.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %exynos_ufs_post_pwr_mode.exit ], [ %retval.0.i, %exynos_ufs_pre_pwr_mode.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ufs_specify_nexus_t_xfer_req(ptr noundef readonly %hba, i32 noundef %tag, i1 noundef zeroext %is_scsi_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_hci.i = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !173
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %shl = shl nuw i32 1, %tag
  br i1 %is_scsi_cmd, label %if.then, label %if.else

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %7 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %6) #11, !srcloc !176
  br label %if.end

if.else:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %10 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %9) #11, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ufs_specify_nexus_t_tm_req(ptr noundef readonly %hba, i32 noundef %tag, i8 noundef zeroext %func) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_hci.i = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !173
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %6 = zext i8 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %func, label %ufshcd_get_variant.exit.sw.epilog_crit_edge [
    i8 1, label %ufshcd_get_variant.exit.sw.bb_crit_edge
    i8 -128, label %ufshcd_get_variant.exit.sw.bb_crit_edge12
    i8 2, label %ufshcd_get_variant.exit.sw.bb2_crit_edge
    i8 4, label %ufshcd_get_variant.exit.sw.bb2_crit_edge13
    i8 8, label %ufshcd_get_variant.exit.sw.bb2_crit_edge14
    i8 -127, label %ufshcd_get_variant.exit.sw.bb2_crit_edge15
  ]

ufshcd_get_variant.exit.sw.bb2_crit_edge15:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

ufshcd_get_variant.exit.sw.bb2_crit_edge14:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

ufshcd_get_variant.exit.sw.bb2_crit_edge13:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

ufshcd_get_variant.exit.sw.bb2_crit_edge:         ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

ufshcd_get_variant.exit.sw.bb_crit_edge12:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

ufshcd_get_variant.exit.sw.bb_crit_edge:          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

ufshcd_get_variant.exit.sw.epilog_crit_edge:      ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %ufshcd_get_variant.exit.sw.bb_crit_edge, %ufshcd_get_variant.exit.sw.bb_crit_edge12
  %shl = shl nuw i32 1, %tag
  %or = or i32 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %8 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %7) #11, !srcloc !176
  br label %sw.epilog

sw.bb2:                                           ; preds = %ufshcd_get_variant.exit.sw.bb2_crit_edge, %ufshcd_get_variant.exit.sw.bb2_crit_edge13, %ufshcd_get_variant.exit.sw.bb2_crit_edge14, %ufshcd_get_variant.exit.sw.bb2_crit_edge15
  %shl3 = shl nuw i32 1, %tag
  %neg = xor i32 %shl3, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %11 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %10) #11, !srcloc !176
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %ufshcd_get_variant.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ufs_hibern8_notify(ptr noundef %hba, i32 noundef %enter, i32 noundef %notify) #4 align 64 {
entry:
  %cur_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %notify to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !171

do.body4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %sw.bb
  %conv2 = trunc i32 %enter to i8
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %drv_data.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_data.i, align 8
  %uic_attr.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %uic_attr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uic_attr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool.not.i = icmp eq i8 %conv2, 0
  br i1 %tobool.not.i, label %if.then.i, label %ufshcd_get_variant.exit.i.sw.epilog_crit_edge

ufshcd_get_variant.exit.i.sw.epilog_crit_edge:    ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i:                                        ; preds = %ufshcd_get_variant.exit.i
  %opts.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 22
  %7 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opts.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %reg_hci.i.i.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %reg_hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_hci.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 180
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %12 = and i32 %11, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %reg_hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_hci.i.i.i.i, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %14, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %12) #11, !srcloc !176
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %reg_hci.i.i.i33.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %reg_hci.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_hci.i.i.i33.i, align 8
  %add.ptr.i.i.i34.i = getelementptr i8, ptr %16, i32 176
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i34.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %18 = ptrtoint ptr %reg_hci.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_hci.i.i.i33.i, align 8
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %19, i32 180
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %21 = and i32 %17, -385875969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %reg_hci.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_hci.i.i.i33.i, align 8
  %add.ptr.i18.i.i.i = getelementptr i8, ptr %23, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i.i, i32 %21) #11, !srcloc !176
  %24 = and i32 %20, 536870911
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %reg_hci.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_hci.i.i.i33.i, align 8
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %26, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i.i, i32 %24) #11, !srcloc !176
  %27 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %opts.i, align 4
  %and4.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.end.i
  %pa_hibern8time.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %6, i32 0, i32 31
  %29 = ptrtoint ptr %pa_hibern8time.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pa_hibern8time.i, align 4
  %pa_granularity.i = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %6, i32 0, i32 29
  %31 = ptrtoint ptr %pa_granularity.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pa_granularity.i, align 4
  %sub.i = add i32 %32, -1
  %arrayidx.i = getelementptr [6 x i32], ptr @exynos_ufs_pre_hibern8.granularity_tbl, i32 0, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %34, %30
  %conv.i = sext i32 %mul.i to i64
  %entry_hibern8_t.i = getelementptr inbounds %struct.exynos_ufs, ptr %2, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %if.then6.i
  %call7.i = tail call i64 @ktime_get() #11
  %35 = ptrtoint ptr %entry_hibern8_t.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %entry_hibern8_t.i, align 8
  %sub.i.i = sub i64 %call7.i, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %37 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #11
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %37, i32 0) #16, !srcloc !178
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %38, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %38, 1
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %37, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #16, !srcloc !179
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %39, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %40 = select i1 %cmp8.i.i.i.i, i64 %div1811.i.i.i.i, i64 %sub210.i.i.i.i
  %sub9.i = add nsw i64 %40, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub9.i)
  %cmp.i = icmp slt i64 %sub9.i, 1
  br i1 %cmp.i, label %do.body.i.sw.epilog_crit_edge, label %if.end12.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end12.i:                                       ; preds = %do.body.i
  %41 = tail call i64 @llvm.umin.i64(i64 %sub9.i, i64 1000) #11
  %42 = trunc i64 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %42)
  %cmp16.i = icmp ugt i32 %42, 9
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.do.body.i.backedge_crit_edge

if.end12.i.do.body.i.backedge_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.backedge

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nuw nsw i32 %42, 10
  tail call void @usleep_range_state(i32 noundef %42, i32 noundef %add.i, i32 noundef 2) #11
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %if.then18.i, %if.end12.i.do.body.i.backedge_crit_edge
  br label %do.body.i

sw.bb3:                                           ; preds = %entry
  %tobool.not.i.i7 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i7, label %do.body4.i.i8, label %ufshcd_get_variant.exit.i11, !prof !171

do.body4.i.i8:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit.i11:                      ; preds = %sw.bb3
  %conv4 = trunc i32 %enter to i8
  %priv.i.i9 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %43 = ptrtoint ptr %priv.i.i9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not.i10 = icmp eq i8 %conv4, 0
  br i1 %tobool.not.i10, label %if.then.i12, label %if.else13.i

if.then.i12:                                      ; preds = %ufshcd_get_variant.exit.i11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_mode.i) #11
  %45 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cur_mode.i, align 4
  %pwr_rx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 16, i32 4
  %46 = ptrtoint ptr %pwr_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pwr_rx.i.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %47, label %if.then.i12.ufshcd_is_hs_mode.exit.thread.i_crit_edge [
    i32 1, label %if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge
    i32 4, label %if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge22
  ]

if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge22: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i

if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge:   ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.i

if.then.i12.ufshcd_is_hs_mode.exit.thread.i_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ufshcd_is_hs_mode.exit.thread.i

ufshcd_is_hs_mode.exit.i:                         ; preds = %if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge, %if.then.i12.ufshcd_is_hs_mode.exit.i_crit_edge22
  %pwr_tx.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 16, i32 5
  %49 = ptrtoint ptr %pwr_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pwr_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %switch.selectcmp.case1.i = icmp eq i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %switch.selectcmp.case2.i = icmp eq i32 %50, 1
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %phi.bo.i = select i1 %switch.selectcmp.i, i32 17, i32 34
  br label %ufshcd_is_hs_mode.exit.thread.i

ufshcd_is_hs_mode.exit.thread.i:                  ; preds = %ufshcd_is_hs_mode.exit.i, %if.then.i12.ufshcd_is_hs_mode.exit.thread.i_crit_edge
  %51 = phi i32 [ 34, %if.then.i12.ufshcd_is_hs_mode.exit.thread.i_crit_edge ], [ %phi.bo.i, %ufshcd_is_hs_mode.exit.i ]
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 359727104, ptr noundef nonnull %cur_mode.i, i8 noundef zeroext 0) #11
  %52 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.not.i = icmp eq i32 %53, %51
  br i1 %cmp.not.i, label %ufshcd_is_hs_mode.exit.thread.i.if.end8.i_crit_edge, label %do.end.i

ufshcd_is_hs_mode.exit.thread.i.if.end8.i_crit_edge: ; preds = %ufshcd_is_hs_mode.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

do.end.i:                                         ; preds = %ufshcd_is_hs_mode.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #14
  %56 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur_mode.i, align 4
  %shr.i = lshr i32 %57, 4
  %and.i13 = and i32 %shr.i, 15
  %pwr_rx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 4
  %58 = ptrtoint ptr %pwr_rx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i13, ptr %pwr_rx.i, align 4
  %and5.i = and i32 %57, 15
  %pwr_tx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 5
  %59 = ptrtoint ptr %pwr_tx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and5.i, ptr %pwr_tx.i, align 4
  %info.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 73, i32 1
  %call7.i14 = call i32 @ufshcd_config_pwr_mode(ptr noundef nonnull %hba, ptr noundef %info.i) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %ufshcd_is_hs_mode.exit.thread.i.if.end8.i_crit_edge
  %opts.i15 = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 22
  %60 = ptrtoint ptr %opts.i15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opts.i15, align 4
  %and9.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end12.i16_crit_edge

if.end8.i.if.end12.i16_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i16

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @exynos_ufs_establish_connt(ptr noundef %44) #11
  br label %if.end12.i16

if.end12.i16:                                     ; preds = %if.then11.i, %if.end8.i.if.end12.i16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_mode.i) #11
  br label %sw.epilog

if.else13.i:                                      ; preds = %ufshcd_get_variant.exit.i11
  %call14.i = tail call i64 @ktime_get() #11
  %entry_hibern8_t.i17 = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 18
  %62 = ptrtoint ptr %entry_hibern8_t.i17 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %call14.i, ptr %entry_hibern8_t.i17, align 8
  %reg_hci.i.i.i.i18 = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 2
  %63 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i.i.i.i19 = getelementptr i8, ptr %64, i32 176
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i19) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %66 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i12.i.i.i20 = getelementptr i8, ptr %67, i32 180
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i20) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %69 = or i32 %68, -536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i14.i.i.i = getelementptr i8, ptr %71, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i.i, i32 %69) #11, !srcloc !176
  %72 = or i32 %65, 385875968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i16.i.i.i = getelementptr i8, ptr %74, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i.i, i32 %72) #11, !srcloc !176
  %opts15.i = getelementptr inbounds %struct.exynos_ufs, ptr %44, i32 0, i32 22
  %75 = ptrtoint ptr %opts15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %opts15.i, align 4
  %and16.i = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else13.i.sw.epilog_crit_edge, label %if.then18.i21

if.else13.i.sw.epilog_crit_edge:                  ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then18.i21:                                    ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i.i.i35.i = getelementptr i8, ptr %78, i32 180
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i35.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %80 = or i32 %79, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %reg_hci.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_hci.i.i.i.i18, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %82, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %80) #11, !srcloc !176
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18.i21, %if.else13.i.sw.epilog_crit_edge, %if.end12.i16, %do.body.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %ufshcd_get_variant.exit.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_suspend(ptr noundef readonly %hba, i32 noundef %pm_op, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ufshcd_get_variant.exit
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %2 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %phy = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_power_off(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ufs_resume(ptr noundef readonly %hba, i32 noundef %pm_op) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !171

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %2 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %ufshcd_get_variant.exit.if.end_crit_edge, label %if.then

ufshcd_get_variant.exit.if.end_crit_edge:         ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phy = getelementptr inbounds %struct.exynos_ufs, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_on(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %ufshcd_get_variant.exit.if.end_crit_edge
  tail call fastcc void @exynos_ufs_config_smu(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_ufs_config_smu(ptr nocapture noundef readonly %ufs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_hci.i.i = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 2
  %0 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %3 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 180
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  %6 = and i32 %5, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %8, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %6) #11, !srcloc !176
  %reg_ufsp.i = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 4
  %9 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  %12 = or i32 %11, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %12) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %18, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -1) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 -16777216) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %reg_ufsp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_ufsp.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 -251658240) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %reg_hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_hci.i.i, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %24, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %2) #11, !srcloc !176
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_ufs_establish_connt(ptr nocapture noundef readonly %ufs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1075838976, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i16 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 805306368, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i17 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 805371904, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i18 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1075904512, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i19 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1075970048, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i20 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1076166656, i8 noundef zeroext 0, i32 noundef 6, i8 noundef zeroext 0) #11
  %call.i21 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1076035584, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i22 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 1075838976, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_init_pwr_dev_param(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_get_pwr_dev_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_config_pwr_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos7_ufs_drv_init(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %ufs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7_ufs_pre_link(ptr nocapture noundef readonly %ufs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %drv_data = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 19
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 8
  %uic_attr = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %uic_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uic_attr, align 4
  %pa_dbg_option_suite = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %pa_dbg_option_suite to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pa_dbg_option_suite, align 4
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %avail_ln_tx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 14
  %8 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_ln_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp69 = icmp sgt i32 %9, 0
  br i1 %cmp69, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %i.070, 65535
  %or = or i32 %and, 43450368
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 0, i32 noundef 23, i8 noundef zeroext 0) #11
  %inc = add nuw nsw i32 %i.070, 1
  %10 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avail_ln_tx, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_sel_idx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 15
  %12 = ptrtoint ptr %rx_sel_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_sel_idx, align 4
  %avail_ln_rx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 13
  %14 = ptrtoint ptr %avail_ln_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_ln_rx, align 4
  %add71 = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add71)
  %cmp472 = icmp slt i32 %13, %add71
  br i1 %cmp472, label %for.end.for.body5_crit_edge, label %for.end.for.end14_crit_edge

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %i.173 = phi i32 [ %inc13, %for.body5.for.body5_crit_edge ], [ %13, %for.end.for.body5_crit_edge ]
  %and6 = and i32 %i.173, 65535
  %or7 = or i32 %and6, 56754176
  %call.i59 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or7, i8 noundef zeroext 0, i32 noundef 255, i8 noundef zeroext 0) #11
  %or10 = or i32 %and6, 56819712
  %call.i60 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or10, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %inc13 = add nsw i32 %i.173, 1
  %16 = ptrtoint ptr %rx_sel_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_sel_idx, align 4
  %18 = ptrtoint ptr %avail_ln_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avail_ln_rx, align 4
  %add = add i32 %19, %17
  %cmp4 = icmp slt i32 %inc13, %add
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end14_crit_edge

for.body5.for.end14_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end14:                                        ; preds = %for.body5.for.end14_crit_edge, %for.end.for.end14_crit_edge
  %call.i.i61 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %20 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avail_ln_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1774 = icmp sgt i32 %21, 0
  br i1 %cmp1774, label %for.end14.for.body18_crit_edge, label %for.end14.for.end24_crit_edge

for.end14.for.end24_crit_edge:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end24

for.end14.for.body18_crit_edge:                   ; preds = %for.end14
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end14.for.body18_crit_edge
  %i.275 = phi i32 [ %inc23, %for.body18.for.body18_crit_edge ], [ 0, %for.end14.for.body18_crit_edge ]
  %and19 = and i32 %i.275, 65535
  %or20 = or i32 %and19, 2818048
  %call.i62 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or20, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %inc23 = add nuw nsw i32 %i.275, 1
  %22 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avail_ln_tx, align 8
  %cmp17 = icmp slt i32 %inc23, %23
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end24_crit_edge

for.body18.for.end24_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end24

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

for.end24:                                        ; preds = %for.body18.for.end24_crit_edge, %for.end14.for.end24_crit_edge
  %call.i63 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1793589248, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #11
  %or26 = or i32 %7, 4096
  %call.i64 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1788608512, i8 noundef zeroext 0, i32 noundef %or26, i8 noundef zeroext 0) #11
  %call.i65 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1791426560, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i66 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790902272, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i67 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790771200, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 343596800) #11
  %call.i68 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1788608512, i8 noundef zeroext 0, i32 noundef %7, i8 noundef zeroext 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7_ufs_post_link(ptr nocapture noundef readonly %ufs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %avail_ln_tx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 14
  %2 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avail_ln_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30 = icmp sgt i32 %3, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pclk_rate1.i = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %and = and i32 %i.031, 65535
  %or = or i32 %and, 42663936
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 0, i32 noundef 131, i8 noundef zeroext 0) #11
  %or3 = or i32 %and, 43646976
  %call.i24 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0) #11
  %or6 = or i32 %and, 41353216
  %4 = ptrtoint ptr %pclk_rate1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pclk_rate1.i, align 8
  %div.i = udiv i32 1000000000, %5
  %rem.i = srem i32 1000000000, %5
  %mul.i = mul i32 %rem.i, 10
  %div3.i = sdiv i32 %mul.i, %5
  %mul5.i = mul i32 %div.i, 10
  %add.i = add i32 %div3.i, %mul5.i
  %div6.i = sdiv i32 2000000, %add.i
  %6 = lshr i32 %div6.i, 10
  %and8 = and i32 %6, 255
  %call.i25 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or6, i8 noundef zeroext 0, i32 noundef %and8, i8 noundef zeroext 0) #11
  %inc = add nuw nsw i32 %i.031, 1
  %7 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avail_ln_tx, align 8
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i.i26 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1790967808, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i.i27 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i28 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 363069440, i8 noundef zeroext 0, i32 noundef 3000, i8 noundef zeroext 0) #11
  %call.i.i29 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7_ufs_pre_pwr_change(ptr nocapture noundef readonly %ufs, ptr nocapture noundef readnone %pwr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %reg_unipro.i = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 3
  %0 = ptrtoint ptr %reg_unipro.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_unipro.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 570425344) #11, !srcloc !176
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7_ufs_post_pwr_change(ptr nocapture noundef readonly %ufs, ptr nocapture noundef readonly %pwr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %lane_rx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %pwr, i32 0, i32 2
  %2 = ptrtoint ptr %lane_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lane_rx, align 4
  %lane_tx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %pwr, i32 0, i32 3
  %4 = ptrtoint ptr %lane_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lane_tx, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1793523712, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i11 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 358678528, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %call.i.i12 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1792475136, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_drv_init(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ufs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysreg = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 20
  %0 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysreg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shareability_reg_offset = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 21
  %2 = ptrtoint ptr %shareability_reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shareability_reg_offset, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drv_data = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 19
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 8
  %uic_attr = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uic_attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uic_attr, align 4
  %tx_dif_p_nsec = getelementptr inbounds %struct.exynos_ufs_uic_attr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tx_dif_p_nsec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3200000, ptr %tx_dif_p_nsec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_pre_link(ptr nocapture noundef readonly %ufs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %mclk_rate = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 12
  %2 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_rate, align 8
  %mul3 = mul i32 %3, 3200
  %div4 = udiv i32 %mul3, 1000000
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 33554432, i8 noundef zeroext 0, i32 noundef 64, i8 noundef zeroext 0) #11
  %rx_sel_idx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 15
  %4 = ptrtoint ptr %rx_sel_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_sel_idx, align 4
  %avail_ln_rx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 13
  %6 = ptrtoint ptr %avail_ln_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_ln_rx, align 4
  %add138 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add138)
  %cmp139 = icmp slt i32 %5, %add138
  br i1 %cmp139, label %for.body.lr.ph, label %entry.for.cond36.preheader_crit_edge

entry.for.cond36.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul i32 %3, 1000
  %div = udiv i32 %mul, 1000000
  %shr20 = lshr i32 %div, 8
  %and25 = and i32 %div, 255
  br label %for.body

for.cond36.preheader:                             ; preds = %for.body.for.cond36.preheader_crit_edge, %entry.for.cond36.preheader_crit_edge
  %avail_ln_tx = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 14
  %8 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_ln_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp37141 = icmp sgt i32 %9, 0
  br i1 %cmp37141, label %for.body38.lr.ph, label %for.cond36.preheader.for.end69_crit_edge

for.cond36.preheader.for.end69_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end69

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %shr57 = lshr i32 %div4, 8
  %and62 = and i32 %div4, 255
  br label %for.body38

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ %5, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %and = and i32 %i.0140, 65535
  %or = or i32 %and, 1179648
  %10 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk_rate, align 8
  %sub = add i32 %11, 999999999
  %div9 = udiv i32 %sub, %11
  %call.i121 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 0, i32 noundef %div9, i8 noundef zeroext 0) #11
  %or12 = or i32 %and, 1114112
  %call.i122 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or12, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %or15 = or i32 %and, 1769472
  %call.i123 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or15, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %or19 = or i32 %and, 1835008
  %call.i124 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or19, i8 noundef zeroext 0, i32 noundef %shr20, i8 noundef zeroext 0) #11
  %or24 = or i32 %and, 1900544
  %call.i125 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or24, i8 noundef zeroext 0, i32 noundef %and25, i8 noundef zeroext 0) #11
  %or28 = or i32 %and, 3080192
  %call.i126 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or28, i8 noundef zeroext 0, i32 noundef 121, i8 noundef zeroext 0) #11
  %or31 = or i32 %and, 8650752
  %call.i127 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or31, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %or34 = or i32 %and, 2424832
  %call.i128 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or34, i8 noundef zeroext 0, i32 noundef 246, i8 noundef zeroext 0) #11
  %inc = add nsw i32 %i.0140, 1
  %12 = ptrtoint ptr %rx_sel_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_sel_idx, align 4
  %14 = ptrtoint ptr %avail_ln_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_ln_rx, align 4
  %add = add i32 %15, %13
  %cmp = icmp slt i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond36.preheader_crit_edge

for.body.for.cond36.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body38.lr.ph
  %i.1142 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc68, %for.body38.for.body38_crit_edge ]
  %and39 = and i32 %i.1142, 65535
  %or40 = or i32 %and39, 11141120
  %16 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_rate, align 8
  %sub43 = add i32 %17, 999999999
  %div45 = udiv i32 %sub43, %17
  %call.i129 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or40, i8 noundef zeroext 0, i32 noundef %div45, i8 noundef zeroext 0) #11
  %or48 = or i32 %and39, 11075584
  %call.i130 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or48, i8 noundef zeroext 0, i32 noundef 2, i8 noundef zeroext 0) #11
  %or51 = or i32 %and39, 11206656
  %call.i131 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or51, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %or56 = or i32 %and39, 11272192
  %call.i132 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or56, i8 noundef zeroext 0, i32 noundef %shr57, i8 noundef zeroext 0) #11
  %or61 = or i32 %and39, 11337728
  %call.i133 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or61, i8 noundef zeroext 0, i32 noundef %and62, i8 noundef zeroext 0) #11
  %or65 = or i32 %and39, 262144
  %call.i134 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef %or65, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #11
  %inc68 = add nuw nsw i32 %i.1142, 1
  %18 = ptrtoint ptr %avail_ln_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avail_ln_tx, align 8
  %cmp37 = icmp slt i32 %inc68, %19
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.for.end69_crit_edge

for.body38.for.end69_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end69

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

for.end69:                                        ; preds = %for.body38.for.end69_crit_edge, %for.cond36.preheader.for.end69_crit_edge
  %call.i135 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 33554432, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i136 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #11
  %call.i137 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef -1609498624, i8 noundef zeroext 0, i32 noundef 32768, i8 noundef zeroext 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_pre_pwr_change(ptr nocapture noundef readonly %ufs, ptr nocapture noundef readnone %pwr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 363855872, i8 noundef zeroext 0, i32 noundef 12000, i8 noundef zeroext 0) #11
  %call.i6 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 363921408, i8 noundef zeroext 0, i32 noundef 32000, i8 noundef zeroext 0) #11
  %call.i7 = tail call i32 @ufshcd_dme_set_attr(ptr noundef %1, i32 noundef 363986944, i8 noundef zeroext 0, i32 noundef 16000, i8 noundef zeroext 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_post_pwr_change(ptr nocapture noundef readonly %ufs, ptr nocapture noundef readnone %pwr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 196
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %5 = lshr i32 %4, 16
  %shl = and i32 %5, 3584
  %or = or i32 %shl, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #11, !srcloc !176
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_post_hce_enable(ptr nocapture noundef readonly %ufs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 196
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  %5 = and i32 %4, -234881025
  %6 = or i32 %5, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %6) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %reg_hci.i = getelementptr inbounds %struct.exynos_ufs, ptr %ufs, i32 0, i32 2
  %9 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %10, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -18743549) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %reg_hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_hci.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %12, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 16777216) #11, !srcloc !176
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynosauto_ufs_vh_init(ptr noundef %hba) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 168, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.7) #11
  %reg_hci = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reg_hci to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %reg_hci, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  %3 = ptrtoint ptr %reg_hci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_hci, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i33 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call.i33, 5000000000
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end8
  %6 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  %.mask.i = and i32 %8, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %.mask.i)
  %cmp.i34 = icmp eq i32 %.mask.i, 16777216
  br i1 %cmp.i34, label %if.end12, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 50, i32 noundef 2) #11
  %call4.i = tail call i64 @ktime_get() #11
  %cmp.i.i.i = icmp slt i64 %call4.i, %add.i
  br i1 %cmp.i.i.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end12:                                         ; preds = %do.body.i
  %call13 = tail call ptr @device_get_match_data(ptr noundef %1) #11
  %drv_data = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %drv_data, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hba, ptr %call.i, align 8
  %opts.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %call13, i32 0, i32 3
  %11 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opts.i, align 4
  %opts2.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 22
  %13 = ptrtoint ptr %opts2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %opts2.i, align 4
  %and.i = lshr i32 %12, 1
  %14 = and i32 %and.i, 4
  %15 = xor i32 %14, 4
  %rx_sel_idx.i = getelementptr inbounds %struct.exynos_ufs, ptr %call.i, i32 0, i32 15
  %16 = ptrtoint ptr %rx_sel_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_sel_idx.i, align 4
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %priv.i, align 8
  %quirks.i = getelementptr inbounds %struct.exynos_ufs_drv_data, ptr %call13, i32 0, i32 2
  %18 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i, align 4
  %quirks6.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %20 = ptrtoint ptr %quirks6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %quirks6.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ], [ -62, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynosauto_ufs_vh_link_startup_notify(ptr nocapture noundef writeonly %hba, i32 noundef %status) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %uic_link_state, align 8
  %curr_dev_pwr_mode = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 11
  %1 = ptrtoint ptr %curr_dev_pwr_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %curr_dev_pwr_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_suspend_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_resume_complete(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_resume(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !135, !137, !139, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__initcall__kmod_ufs_exynos__332_1624_exynos_ufs_pltform_init6, !1, !"__initcall__kmod_ufs_exynos__332_1624_exynos_ufs_pltform_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1624, i32 1}
!2 = !{ptr @__exitcall_exynos_ufs_pltform_exit, !1, !"__exitcall_exynos_ufs_pltform_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author333, !4, !"__UNIQUE_ID_author333", i1 false, i1 false}
!4 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1626, i32 1}
!5 = !{ptr @__UNIQUE_ID_author334, !6, !"__UNIQUE_ID_author334", i1 false, i1 false}
!6 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1627, i32 1}
!7 = !{ptr @__UNIQUE_ID_description335, !8, !"__UNIQUE_ID_description335", i1 false, i1 false}
!8 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1628, i32 1}
!9 = !{ptr @__UNIQUE_ID_file336, !10, !"__UNIQUE_ID_file336", i1 false, i1 false}
!10 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1629, i32 1}
!11 = !{ptr @__UNIQUE_ID_license337, !10, !"__UNIQUE_ID_license337", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1619, i32 11}
!14 = !{ptr @exynos_ufs_pltform, !15, !"exynos_ufs_pltform", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1614, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1508, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @exynos_ufs_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @exynos_ufs_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1476, i32 13}
!26 = !{ptr @ufs_hba_exynos_ops, !27, !"ufs_hba_exynos_ops", i1 false, i1 false}
!27 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1475, i32 35}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1143, i32 61}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1145, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @exynos_ufs_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @exynos_ufs_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1150, i32 64}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1152, i32 3}
!39 = !{ptr @exynos_ufs_init._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @exynos_ufs_init._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1157, i32 62}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1159, i32 3}
!45 = !{ptr @exynos_ufs_init._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @exynos_ufs_init._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1165, i32 3}
!49 = !{ptr @exynos_ufs_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @exynos_ufs_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1169, i32 31}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1172, i32 3}
!55 = !{ptr @exynos_ufs_init._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @exynos_ufs_init._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1185, i32 4}
!59 = !{ptr @exynos_ufs_init._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_ufs_init._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1089, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @exynos_ufs_parse_dt._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @exynos_ufs_parse_dt._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1094, i32 52}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1100, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @exynos_ufs_parse_dt._entry.31, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @exynos_ufs_parse_dt._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 433, i32 28}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 435, i32 33}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 441, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @exynos_ufs_get_clk_info._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @exynos_ufs_get_clk_info._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 462, i32 3}
!84 = !{ptr @exynos_ufs_get_clk_info._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @exynos_ufs_get_clk_info._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1220, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @exynos_ufs_host_reset._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @exynos_ufs_host_reset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 518, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @exynos_ufs_calc_pwm_clk_div._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @exynos_ufs_calc_pwm_clk_div._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 902, i32 3}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 910, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @exynos_ufs_phy_init._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @exynos_ufs_phy_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1062, i32 4}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @exynos_ufs_post_link._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @exynos_ufs_post_link._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 776, i32 3}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @exynos_ufs_pre_pwr_mode._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @exynos_ufs_pre_pwr_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 786, i32 3}
!115 = !{ptr @exynos_ufs_pre_pwr_mode._entry.53, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @exynos_ufs_pre_pwr_mode._entry_ptr.55, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 842, i32 39}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 843, i32 4}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 843, i32 47}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 843, i32 53}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 846, i32 39}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 847, i32 4}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 850, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @exynos_ufs_post_pwr_mode._entry, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @exynos_ufs_post_pwr_mode._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @exynos_ufs_pre_hibern8.granularity_tbl, !136, !"granularity_tbl", i1 false, i1 false}
!136 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1248, i32 30}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1285, i32 4}
!139 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @exynos_ufs_post_hibern8._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @exynos_ufs_post_hibern8._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @exynos_ufs_of_match, !143, !"exynos_ufs_of_match", i1 false, i1 false}
!143 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1597, i32 34}
!144 = !{ptr @exynos_ufs_drvs, !145, !"exynos_ufs_drvs", i1 false, i1 false}
!145 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1575, i32 35}
!146 = !{ptr @exynos7_uic_attr, !147, !"exynos7_uic_attr", i1 false, i1 false}
!147 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1522, i32 35}
!148 = !{ptr @exynosauto_ufs_drvs, !149, !"exynosauto_ufs_drvs", i1 false, i1 false}
!149 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1547, i32 35}
!150 = !{ptr @exynosauto_ufs_vh_drvs, !151, !"exynosauto_ufs_vh_drvs", i1 false, i1 false}
!151 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1563, i32 35}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1490, i32 13}
!154 = !{ptr @ufs_hba_exynosauto_vh_ops, !155, !"ufs_hba_exynosauto_vh_ops", i1 false, i1 false}
!155 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1489, i32 35}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1458, i32 3}
!158 = !{ptr @exynosauto_ufs_vh_init._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @exynosauto_ufs_vh_init._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @exynos_ufs_pm_ops, !161, !"exynos_ufs_pm_ops", i1 false, i1 false}
!161 = !{!"../drivers/scsi/ufs/ufs-exynos.c", i32 1607, i32 32}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{i64 2155788962, i64 2155789453, i64 2155788999, i64 2155789055, i64 2155789089, i64 2155789113, i64 2155789154, i64 2155789175, i64 2155789203, i64 2155789237}
!173 = !{i64 4249145}
!174 = !{i64 2155807816}
!175 = !{i64 2155806958}
!176 = !{i64 4248727}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 1188480, i64 1188507, i64 1188529, i64 1188557}
!179 = !{i64 1188888, i64 1188915, i64 1188948, i64 1188969, i64 1188996, i64 1189022}
!180 = !{i64 2155811014}
!181 = !{i64 2155810149}
!182 = !{i64 2155808550}
!183 = !{i64 2155820603}
!184 = !{i64 2155821009}
!185 = !{i64 2155784413}
!186 = !{i64 2155784694}
!187 = !{i64 2155885766}
