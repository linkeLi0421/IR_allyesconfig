; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-qcom.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ufs_qcom_host = type { i32, ptr, ptr, %struct.ufs_pa_layer_attr, ptr, ptr, ptr, ptr, i8, ptr, i8, %struct.ufs_hw_version, ptr, i32, i32, %struct.ufs_qcom_testbus, ptr, %struct.reset_controller_dev, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_hw_version = type { i16, i16, i8 }
%struct.ufs_qcom_testbus = type { i8, i8 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ufs_clk_info = type { %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }

@__setup_str_get_android_boot_dev = internal constant [24 x i8] c"androidboot.bootdevice=\00", section ".init.rodata", align 1
@__setup_get_android_boot_dev = internal global %struct.obs_kernel_param { ptr @__setup_str_get_android_boot_dev, ptr @get_android_boot_dev, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_ufs_qcom__322_1579_ufs_qcom_pltform_init6 = internal global ptr @ufs_qcom_pltform_init, section ".initcall6.init", align 4
@ufs_qcom_pltform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ufs_qcom_probe, ptr @ufs_qcom_remove, ptr @ufshcd_pltfrm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ufs_qcom_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_qcom_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ufs_qcom_pltform_exit = internal global ptr @ufs_qcom_pltform_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file323 = internal constant [40 x i8] c"ufs_qcom.file=drivers/scsi/ufs/ufs_qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [24 x i8] c"ufs_qcom.license=GPL v2\00", section ".modinfo", align 1
@android_boot_dev = internal global { [30 x i8], [34 x i8] } zeroinitializer, align 32
@ufs_qcom_testbus_cfg_is_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: UFS_CFG1[TEST_BUS_SEL} may not equal 0x%05X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_qcom_testbus_cfg_is_ok\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/ufs/ufs-qcom.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_qcom_testbus_cfg_is_ok._entry_ptr = internal global ptr @ufs_qcom_testbus_cfg_is_ok._entry, section ".printk_index", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufshcd-qcom\00", [20 x i8] zeroinitializer }, align 32
@ufs_qcom_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ufshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ufs_qcom_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufshcd_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ufs_hba_qcom_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.8, ptr @ufs_qcom_init, ptr @ufs_qcom_exit, ptr @ufs_qcom_get_ufs_hci_version, ptr @ufs_qcom_clk_scale_notify, ptr @ufs_qcom_setup_clocks, ptr @ufs_qcom_hce_enable_notify, ptr @ufs_qcom_link_startup_notify, ptr @ufs_qcom_pwr_change_notify, ptr null, ptr null, ptr null, ptr @ufs_qcom_apply_dev_quirks, ptr null, ptr @ufs_qcom_suspend, ptr @ufs_qcom_resume, ptr @ufs_qcom_dump_dbg_regs, ptr null, ptr @ufs_qcom_device_reset, ptr @ufs_qcom_config_scaling_param, ptr @ufs_qcom_ice_program_key, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_qcom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufshcd_pltfrm_init() failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_qcom_probe\00", [17 x i8] zeroinitializer }, align 32
@ufs_qcom_probe._entry_ptr = internal global ptr @ufs_qcom_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qcom\00", [27 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: no memory for qcom ufs host\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_qcom_init\00", [18 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr = internal global ptr @ufs_qcom_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 1009, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get reset control %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.15 = internal global ptr @ufs_qcom_init._entry.12, section ".printk_index", align 4
@ufs_qcom_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @ufs_qcom_reset_assert, ptr @ufs_qcom_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 1021, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.18 = internal global ptr @ufs_qcom_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ufsphy\00", [25 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 1039, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: required phy device. hasn't probed yet. err = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.22 = internal global ptr @ufs_qcom_init._entry.20, section ".printk_index", align 4
@ufs_qcom_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 1046, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: PHY get failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.25 = internal global ptr @ufs_qcom_init._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 1056, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to acquire reset gpio: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.29 = internal global ptr @ufs_qcom_init._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dev_ref_clk_ctrl_mem\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"core_clk_unipro\00", [16 x i8] zeroinitializer }, align 32
@ufs_qcom_hosts = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@ufs_qcom_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.2, i32 1109, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to configure the testbus %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ufs_qcom_init._entry_ptr.34 = internal global ptr @ufs_qcom_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_lane0_sync_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_lane0_sync_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_lane1_sync_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_lane1_sync_clk\00", [46 x i8] zeroinitializer }, align 32
@ufs_qcom_host_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get %s err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_qcom_host_clk_get\00", [42 x i8] zeroinitializer }, align 32
@ufs_qcom_host_clk_get._entry_ptr = internal global ptr @ufs_qcom_host_clk_get._entry, section ".printk_index", align 4
@ufs_qcom_cfg_timers.pwm_fr_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 4, i32 1]], [32 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers.hs_fr_table_rA = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 1, i32 31], [2 x i32] [i32 2, i32 62], [2 x i32] [i32 3, i32 125]], [40 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers.hs_fr_table_rB = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 1, i32 36], [2 x i32] [i32 2, i32 73], [2 x i32] [i32 3, i32 146]], [40 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid gear = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_qcom_cfg_timers\00", [44 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr = internal global ptr @ufs_qcom_cfg_timers._entry, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: index %d exceeds table size %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr.46 = internal global ptr @ufs_qcom_cfg_timers._entry.44, section ".printk_index", align 4
@ufs_qcom_cfg_timers._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr.48 = internal global ptr @ufs_qcom_cfg_timers._entry.47, section ".printk_index", align 4
@ufs_qcom_cfg_timers._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid rate = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr.51 = internal global ptr @ufs_qcom_cfg_timers._entry.49, section ".printk_index", align 4
@ufs_qcom_cfg_timers._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr.53 = internal global ptr @ufs_qcom_cfg_timers._entry.52, section ".printk_index", align 4
@ufs_qcom_cfg_timers._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.42, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid mode = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_qcom_cfg_timers._entry_ptr.56 = internal global ptr @ufs_qcom_cfg_timers._entry.54, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ufs_qcom_hce_enable_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_qcom_hce_enable_notify\00", [37 x i8] zeroinitializer }, align 32
@ufs_qcom_hce_enable_notify._entry_ptr = internal global ptr @ufs_qcom_hce_enable_notify._entry, section ".printk_index", align 4
@ufs_qcom_power_up_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 309, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: host reset returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_qcom_power_up_sequence\00", [37 x i8] zeroinitializer }, align 32
@ufs_qcom_power_up_sequence._entry_ptr = internal global ptr @ufs_qcom_power_up_sequence._entry, section ".printk_index", align 4
@ufs_qcom_power_up_sequence._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: phy init failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_qcom_power_up_sequence._entry_ptr.63 = internal global ptr @ufs_qcom_power_up_sequence._entry.61, section ".printk_index", align 4
@ufs_qcom_power_up_sequence._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: phy power on failed, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ufs_qcom_power_up_sequence._entry_ptr.66 = internal global ptr @ufs_qcom_power_up_sequence._entry.64, section ".printk_index", align 4
@ufs_qcom_host_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 259, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: reset control not set\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_qcom_host_reset\00", [44 x i8] zeroinitializer }, align 32
@ufs_qcom_host_reset._entry_ptr = internal global ptr @ufs_qcom_host_reset._entry, section ".printk_index", align 4
@ufs_qcom_host_reset._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: core_reset assert failed, err = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ufs_qcom_host_reset._entry_ptr.71 = internal global ptr @ufs_qcom_host_reset._entry.69, section ".printk_index", align 4
@ufs_qcom_host_reset._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: core_reset deassert failed, err = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ufs_qcom_host_reset._entry_ptr.74 = internal global ptr @ufs_qcom_host_reset._entry.72, section ".printk_index", align 4
@ufs_qcom_host_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s enable failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs_qcom_host_clk_enable\00", [39 x i8] zeroinitializer }, align 32
@ufs_qcom_host_clk_enable._entry_ptr = internal global ptr @ufs_qcom_host_clk_enable._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ufs_qcom_check_hibern8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unable to get TX_FSM_STATE, err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_qcom_check_hibern8\00", [41 x i8] zeroinitializer }, align 32
@ufs_qcom_check_hibern8._entry_ptr = internal global ptr @ufs_qcom_check_hibern8._entry, section ".printk_index", align 4
@ufs_qcom_check_hibern8._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid TX_FSM_STATE = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_qcom_check_hibern8._entry_ptr.81 = internal global ptr @ufs_qcom_check_hibern8._entry.79, section ".printk_index", align 4
@ufs_qcom_link_startup_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ufs_qcom_cfg_timers() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ufs_qcom_link_startup_notify\00", [35 x i8] zeroinitializer }, align 32
@ufs_qcom_link_startup_notify._entry_ptr = internal global ptr @ufs_qcom_link_startup_notify._entry, section ".printk_index", align 4
@ufs_qcom_get_connected_tx_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: couldn't read PA_CONNECTEDTXDATALANES %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufs_qcom_get_connected_tx_lanes\00", [32 x i8] zeroinitializer }, align 32
@ufs_qcom_get_connected_tx_lanes._entry_ptr = internal global ptr @ufs_qcom_get_connected_tx_lanes._entry, section ".printk_index", align 4
@ufs_qcom_pwr_change_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: incoming dev_req_params is NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_qcom_pwr_change_notify\00", [37 x i8] zeroinitializer }, align 32
@ufs_qcom_pwr_change_notify._entry_ptr = internal global ptr @ufs_qcom_pwr_change_notify._entry, section ".printk_index", align 4
@ufs_qcom_pwr_change_notify._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to determine capabilities\0A\00", [56 x i8] zeroinitializer }, align 32
@ufs_qcom_pwr_change_notify._entry_ptr.90 = internal global ptr @ufs_qcom_pwr_change_notify._entry.88, section ".printk_index", align 4
@ufs_qcom_pwr_change_notify._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.87, ptr @.str.2, i32 764, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ufs_qcom_pwr_change_notify._entry_ptr.92 = internal global ptr @ufs_qcom_pwr_change_notify._entry.91, section ".printk_index", align 4
@ufs_qcom_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 630, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed PHY power on: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_qcom_resume\00", [16 x i8] zeroinitializer }, align 32
@ufs_qcom_resume._entry_ptr = internal global ptr @ufs_qcom_resume._entry, section ".printk_index", align 4
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HCI Vendor Specific Registers \00", [33 x i8] zeroinitializer }, align 32
@ufs_qcom_print_hw_debug_reg_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: hba is NULL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufs_qcom_print_hw_debug_reg_all\00", [32 x i8] zeroinitializer }, align 32
@ufs_qcom_print_hw_debug_reg_all._entry_ptr = internal global ptr @ufs_qcom_print_hw_debug_reg_all._entry, section ".printk_index", align 4
@ufs_qcom_print_hw_debug_reg_all._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 1265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: print_fn is NULL\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_qcom_print_hw_debug_reg_all._entry_ptr.100 = internal global ptr @ufs_qcom_print_hw_debug_reg_all._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UFS_UFS_DBG_RD_REG_OCSC \00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UFS_UFS_DBG_RD_EDTL_RAM \00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UFS_UFS_DBG_RD_DESC_RAM \00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UFS_UFS_DBG_RD_PRDT_RAM \00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UFS_DBG_RD_REG_UAWM \00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UFS_DBG_RD_REG_UARM \00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UFS_DBG_RD_REG_TXUC \00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UFS_DBG_RD_REG_RXUC \00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UFS_DBG_RD_REG_DFC \00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UFS_DBG_RD_REG_TRLUT \00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UFS_DBG_RD_REG_TMRLUT \00", [41 x i8] zeroinitializer }, align 32
@switch.table.ufs_qcom_testbus_config = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 236, i32 236, i32 236, i32 236, i32 240, i32 240, i32 240, i32 240, i32 244, i32 244, i32 244, i32 248], [48 x i8] zeroinitializer }, align 32
@switch.table.ufs_qcom_testbus_config.112 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 24, i32 16, i32 8, i32 0, i32 24, i32 16, i32 8, i32 0, i32 0, i32 8, i32 16, i32 20], [48 x i8] zeroinitializer }, align 32
@switch.table.ufs_qcom_testbus_config.113 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 4095], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"ufs_qcom_pltform\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1568, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"android_boot_dev\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 961, i32 13 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1336, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1573, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"ufs_qcom_of_match\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1547, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"ufs_qcom_pm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1561, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"ufs_hba_qcom_vops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1494, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1527, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1495, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 997, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1006, i32 54 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1009, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"ufs_qcom_reset_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 955, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1021, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1030, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1038, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1046, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1051, i32 52 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1056, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1073, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1084, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"ufs_qcom_hosts\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 40, i32 30 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1108, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 169, i32 35 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 174, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 181, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 186, i32 36 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 90, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"pwm_fr_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 402, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"hs_fr_table_rA\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 409, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"hs_fr_table_rB\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 415, i32 13 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 432, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 437, i32 27 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 467, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 476, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 484, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 492, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 502, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 381, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 308, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 317, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 325, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 259, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 269, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 283, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 102, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 229, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 233, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 64, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 715, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 743, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 763, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 629, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1433, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1261, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1265, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1274, i32 25 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1281, i32 25 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1284, i32 26 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1287, i32 25 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1293, i32 24 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1296, i32 24 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1299, i32 25 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1302, i32 25 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1305, i32 25 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1308, i32 25 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [31 x i8] c"../drivers/scsi/ufs/ufs-qcom.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1311, i32 24 }
@___asan_gen_.488 = private unnamed_addr constant [37 x i8] c"switch.table.ufs_qcom_testbus_config\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [41 x i8] c"switch.table.ufs_qcom_testbus_config.112\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [41 x i8] c"switch.table.ufs_qcom_testbus_config.113\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ufs_qcom_pltform_exit, ptr @__initcall__kmod_ufs_qcom__322_1579_ufs_qcom_pltform_init6, ptr @__setup_get_android_boot_dev, ptr @ufs_qcom_cfg_timers._entry, ptr @ufs_qcom_cfg_timers._entry.44, ptr @ufs_qcom_cfg_timers._entry.47, ptr @ufs_qcom_cfg_timers._entry.49, ptr @ufs_qcom_cfg_timers._entry.52, ptr @ufs_qcom_cfg_timers._entry.54, ptr @ufs_qcom_cfg_timers._entry_ptr, ptr @ufs_qcom_cfg_timers._entry_ptr.46, ptr @ufs_qcom_cfg_timers._entry_ptr.48, ptr @ufs_qcom_cfg_timers._entry_ptr.51, ptr @ufs_qcom_cfg_timers._entry_ptr.53, ptr @ufs_qcom_cfg_timers._entry_ptr.56, ptr @ufs_qcom_check_hibern8._entry, ptr @ufs_qcom_check_hibern8._entry.79, ptr @ufs_qcom_check_hibern8._entry_ptr, ptr @ufs_qcom_check_hibern8._entry_ptr.81, ptr @ufs_qcom_get_connected_tx_lanes._entry, ptr @ufs_qcom_get_connected_tx_lanes._entry_ptr, ptr @ufs_qcom_hce_enable_notify._entry, ptr @ufs_qcom_hce_enable_notify._entry_ptr, ptr @ufs_qcom_host_clk_enable._entry, ptr @ufs_qcom_host_clk_enable._entry_ptr, ptr @ufs_qcom_host_clk_get._entry, ptr @ufs_qcom_host_clk_get._entry_ptr, ptr @ufs_qcom_host_reset._entry, ptr @ufs_qcom_host_reset._entry.69, ptr @ufs_qcom_host_reset._entry.72, ptr @ufs_qcom_host_reset._entry_ptr, ptr @ufs_qcom_host_reset._entry_ptr.71, ptr @ufs_qcom_host_reset._entry_ptr.74, ptr @ufs_qcom_init._entry, ptr @ufs_qcom_init._entry.12, ptr @ufs_qcom_init._entry.16, ptr @ufs_qcom_init._entry.20, ptr @ufs_qcom_init._entry.23, ptr @ufs_qcom_init._entry.27, ptr @ufs_qcom_init._entry.32, ptr @ufs_qcom_init._entry_ptr, ptr @ufs_qcom_init._entry_ptr.15, ptr @ufs_qcom_init._entry_ptr.18, ptr @ufs_qcom_init._entry_ptr.22, ptr @ufs_qcom_init._entry_ptr.25, ptr @ufs_qcom_init._entry_ptr.29, ptr @ufs_qcom_init._entry_ptr.34, ptr @ufs_qcom_link_startup_notify._entry, ptr @ufs_qcom_link_startup_notify._entry_ptr, ptr @ufs_qcom_pltform_exit, ptr @ufs_qcom_power_up_sequence._entry, ptr @ufs_qcom_power_up_sequence._entry.61, ptr @ufs_qcom_power_up_sequence._entry.64, ptr @ufs_qcom_power_up_sequence._entry_ptr, ptr @ufs_qcom_power_up_sequence._entry_ptr.63, ptr @ufs_qcom_power_up_sequence._entry_ptr.66, ptr @ufs_qcom_print_hw_debug_reg_all._entry, ptr @ufs_qcom_print_hw_debug_reg_all._entry.98, ptr @ufs_qcom_print_hw_debug_reg_all._entry_ptr, ptr @ufs_qcom_print_hw_debug_reg_all._entry_ptr.100, ptr @ufs_qcom_probe._entry, ptr @ufs_qcom_probe._entry_ptr, ptr @ufs_qcom_pwr_change_notify._entry, ptr @ufs_qcom_pwr_change_notify._entry.88, ptr @ufs_qcom_pwr_change_notify._entry.91, ptr @ufs_qcom_pwr_change_notify._entry_ptr, ptr @ufs_qcom_pwr_change_notify._entry_ptr.90, ptr @ufs_qcom_pwr_change_notify._entry_ptr.92, ptr @ufs_qcom_resume._entry, ptr @ufs_qcom_resume._entry_ptr, ptr @ufs_qcom_testbus_cfg_is_ok._entry, ptr @ufs_qcom_testbus_cfg_is_ok._entry_ptr, ptr @ufs_qcom_pltform, ptr @android_boot_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ufs_qcom_of_match, ptr @ufs_qcom_pm_ops, ptr @ufs_hba_qcom_vops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @ufs_qcom_reset_ops, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @ufs_qcom_hosts, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @ufs_qcom_cfg_timers.pwm_fr_table, ptr @ufs_qcom_cfg_timers.hs_fr_table_rA, ptr @ufs_qcom_cfg_timers.hs_fr_table_rB, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.50, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @switch.table.ufs_qcom_testbus_config, ptr @switch.table.ufs_qcom_testbus_config.112, ptr @switch.table.ufs_qcom_testbus_config.113], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_pltform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @android_boot_dev to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_testbus_cfg_is_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_qcom_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_hosts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_host_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers.pwm_fr_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers.hs_fr_table_rA to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers.hs_fr_table_rB to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_cfg_timers._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_hce_enable_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_power_up_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_power_up_sequence._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_power_up_sequence._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_host_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_host_reset._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_host_reset._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_host_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_check_hibern8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_check_hibern8._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_link_startup_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_get_connected_tx_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_pwr_change_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_pwr_change_notify._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_pwr_change_notify._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_print_hw_debug_reg_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_print_hw_debug_reg_all._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_qcom_testbus_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_qcom_testbus_config.112 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_qcom_testbus_config.113 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @get_android_boot_dev(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef nonnull @android_boot_dev, ptr noundef %str, i32 noundef 30) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_qcom_testbus_config(ptr noundef readonly %host) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %testbus.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 15
  %0 = ptrtoint ptr %testbus.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %testbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp.i = icmp ugt i8 %1, 11
  br i1 %cmp.i, label %ufs_qcom_testbus_cfg_is_ok.exit, label %if.end2

ufs_qcom_testbus_cfg_is_ok.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %1 to i32
  %hba.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %hba.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba.i, align 4
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %testbus.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %testbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %7)
  %8 = icmp ult i8 %7, 12
  br i1 %8, label %switch.lookup, label %if.end2.sw.epilog_crit_edge

if.end2.sw.epilog_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %9 = sext i8 %7 to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.ufs_qcom_testbus_config, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = sext i8 %7 to i32
  %switch.gep39 = getelementptr inbounds [12 x i32], ptr @switch.table.ufs_qcom_testbus_config.112, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  %13 = sext i8 %7 to i32
  %switch.gep41 = getelementptr inbounds [12 x i32], ptr @switch.table.ufs_qcom_testbus_config.113, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end2.sw.epilog_crit_edge
  %reg.0 = phi i32 [ -1, %if.end2.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %offset.0 = phi i32 [ -1, %if.end2.sw.epilog_crit_edge ], [ %switch.load40, %switch.lookup ]
  %mask.0 = phi i32 [ 31, %if.end2.sw.epilog_crit_edge ], [ %switch.load42, %switch.lookup ]
  %shl = shl i32 %mask.0, %offset.0
  %hba = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %15 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hba, align 4
  %conv16 = zext i8 %7 to i32
  %shl17 = shl nuw nsw i32 %conv16, 19
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 220
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %20 = and i32 %19, -30721
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %and3.i = and i32 %shl17, 7864320
  %or.i = or i32 %21, %and3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 8
  %add.ptr5.i = getelementptr i8, ptr %24, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %22) #10, !srcloc !243
  %25 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hba, align 4
  %select_minor = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %select_minor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %select_minor, align 1
  %conv20 = zext i8 %28 to i32
  %shl21 = shl nuw i32 %conv20, %offset.0
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %add.ptr.i33 = getelementptr i8, ptr %30, i32 %reg.0
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #10, !srcloc !240
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %neg.i = xor i32 %shl, -1
  %and.i34 = and i32 %32, %neg.i
  %and3.i35 = and i32 %shl21, %shl
  %or.i36 = or i32 %and.i34, %and3.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #10
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %26, align 8
  %add.ptr5.i37 = getelementptr i8, ptr %35, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i37, i32 %33) #10, !srcloc !243
  %dbg_print_en.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 14
  %36 = ptrtoint ptr %dbg_print_en.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dbg_print_en.i, align 4
  %and.i38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i = icmp eq i32 %and.i38, 0
  %38 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hba, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %41, i32 220
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %43 = or i32 %42, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %45, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %43) #10, !srcloc !243
  %46 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hba, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %49, i32 220
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %51 = or i32 %50, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 8
  %add.ptr5.i11.i = getelementptr i8, ptr %53, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i11.i, i32 %51) #10, !srcloc !243
  br label %ufs_qcom_enable_test_bus.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %54 = and i32 %42, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %39, align 8
  %add.ptr5.i14.i = getelementptr i8, ptr %56, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i14.i, i32 %54) #10, !srcloc !243
  %57 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hba, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %60, i32 220
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %62 = and i32 %61, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 8
  %add.ptr5.i17.i = getelementptr i8, ptr %64, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17.i, i32 %62) #10, !srcloc !243
  br label %ufs_qcom_enable_test_bus.exit

ufs_qcom_enable_test_bus.exit:                    ; preds = %if.else.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  br label %cleanup

cleanup:                                          ; preds = %ufs_qcom_enable_test_bus.exit, %ufs_qcom_testbus_cfg_is_ok.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ufs_qcom_enable_test_bus.exit ], [ -22, %entry.cleanup_crit_edge ], [ -1, %ufs_qcom_testbus_cfg_is_ok.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_pltform_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ufs_qcom_pltform, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ufs_qcom_pltform_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ufs_qcom_pltform) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef nonnull @ufs_hba_qcom_vops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  tail call void @ufshcd_remove(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_pltfrm_shutdown(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_pltfrm_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_init(ptr noundef %hba) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %char0 = load i8, ptr @android_boot_dev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.dev_name.exit_crit_edge

land.lhs.true.dev_name.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %land.lhs.true.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %land.lhs.true.dev_name.exit_crit_edge ]
  %call3 = tail call i32 @strcmp(ptr noundef nonnull @android_boot_dev, ptr noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %dev_name.exit.if.end_crit_edge, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %dev_name.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 140, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %hba9 = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %hba9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hba, ptr %hba9, align 4
  %tobool.not.i213 = icmp eq ptr %hba, null
  br i1 %tobool.not.i213, label %do.body4.i, label %ufshcd_set_variant.exit, !prof !245

do.body4.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #10, !srcloc !246
  unreachable

ufshcd_set_variant.exit:                          ; preds = %if.end8
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %priv.i, align 8
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %core_reset = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %core_reset to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %core_reset, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %ufshcd_set_variant.exit.if.end21_crit_edge

ufshcd_set_variant.exit.if.end21_crit_edge:       ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then14:                                        ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %11) #13
  %12 = ptrtoint ptr %core_reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %core_reset, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %ufshcd_set_variant.exit.if.end21_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %rcdev = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 17
  %of_node22 = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 17, i32 5
  %15 = ptrtoint ptr %of_node22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node22, align 4
  %16 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ufs_qcom_reset_ops, ptr %rcdev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner, align 4
  %owner25 = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %owner25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %owner25, align 4
  %nr_resets = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 17, i32 8
  %22 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %nr_resets, align 4
  %call28 = tail call i32 @devm_reset_controller_register(ptr noundef %1, ptr noundef %rcdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end21.if.end34_crit_edge, label %do.end33

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.17) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end21.if.end34_crit_edge
  %call35 = tail call ptr @devm_phy_get(ptr noundef %1, ptr noundef nonnull @.str.19) #10
  %generic_phy = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %generic_phy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call35, ptr %generic_phy, align 4
  %cmp = icmp eq ptr %call35, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10, i32 noundef -517) #13
  br label %ufshcd_set_variant.exit240

if.else:                                          ; preds = %if.end34
  %cmp.i214 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then44, label %if.end56

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, i32 noundef %24) #13
  br label %ufshcd_set_variant.exit240

if.end56:                                         ; preds = %if.else
  %call57 = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 7) #10
  %device_reset = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 18
  %25 = ptrtoint ptr %device_reset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call57, ptr %device_reset, align 4
  %cmp.i215 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then60, label %if.end69

if.then60:                                        ; preds = %if.end56
  %cmp63.not = icmp eq ptr %call57, inttoptr (i32 -517 to ptr)
  br i1 %cmp63.not, label %if.then60.ufshcd_set_variant.exit240_crit_edge, label %do.end67

if.then60.ufshcd_set_variant.exit240_crit_edge:   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

do.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %26) #13
  br label %ufshcd_set_variant.exit240

if.end69:                                         ; preds = %if.end56
  %hw_ver = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 11
  %major = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 11, i32 2
  %minor = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 228
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !240
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %shr.i = lshr i32 %30, 28
  %conv.i = trunc i32 %shr.i to i8
  %31 = ptrtoint ptr %major to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %major, align 1
  %and2.i = lshr i32 %30, 16
  %32 = trunc i32 %and2.i to i16
  %conv4.i = and i16 %32, 4095
  %33 = ptrtoint ptr %minor to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv4.i, ptr %minor, align 2
  %conv7.i = trunc i32 %30 to i16
  %34 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv7.i, ptr %hw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i)
  %cmp74 = icmp ugt i8 %conv.i, 1
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hba, align 8
  %add.ptr77 = getelementptr i8, ptr %36, i32 220
  %dev_ref_clk_ctrl_mmio = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %dev_ref_clk_ctrl_mmio to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr77, ptr %dev_ref_clk_ctrl_mmio, align 4
  br label %if.end91.sink.split

if.else78:                                        ; preds = %if.end69
  %call79 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.30) #10
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.else78.if.end91_crit_edge, label %if.then81

if.else78.if.end91_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef nonnull %call79) #10
  %dev_ref_clk_ctrl_mmio83 = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 9
  %cmp.i216 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i216, ptr null, ptr %call82
  %38 = ptrtoint ptr %dev_ref_clk_ctrl_mmio83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.store.select, ptr %dev_ref_clk_ctrl_mmio83, align 4
  br label %if.end91.sink.split

if.end91.sink.split:                              ; preds = %if.then81, %if.then76
  %.sink = phi i32 [ 32, %if.then81 ], [ 67108864, %if.then76 ]
  %dev_ref_clk_en_mask89 = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 13
  %39 = ptrtoint ptr %dev_ref_clk_en_mask89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %dev_ref_clk_en_mask89, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %if.else78.if.end91_crit_edge
  %clk_list_head = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 69
  %40 = ptrtoint ptr %clk_list_head to i32
  call void @__asan_load4_noabort(i32 %40)
  %clki.0247 = load ptr, ptr %clk_list_head, align 4
  %cmp96.not248 = icmp eq ptr %clki.0247, %clk_list_head
  br i1 %cmp96.not248, label %if.end91.for.end_crit_edge, label %if.end91.for.body_crit_edge

if.end91.for.body_crit_edge:                      ; preds = %if.end91
  br label %for.body

if.end91.for.end_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end91.for.body_crit_edge
  %clki.0249 = phi ptr [ %clki.0, %for.inc.for.body_crit_edge ], [ %clki.0247, %if.end91.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.0249, i32 0, i32 2
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %call98 = tail call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(16) @.str.31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %keep_link_active = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.0249, i32 0, i32 6
  %43 = ptrtoint ptr %keep_link_active to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %keep_link_active, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then100, %for.body.for.inc_crit_edge
  %44 = ptrtoint ptr %clki.0249 to i32
  call void @__asan_load4_noabort(i32 %44)
  %clki.0 = load ptr, ptr %clki.0249, align 4
  %cmp96.not = icmp eq ptr %clki.0, %clk_list_head
  br i1 %cmp96.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end91.for.end_crit_edge
  %45 = ptrtoint ptr %hba9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hba9, align 4
  %dev1.i = getelementptr inbounds %struct.ufs_hba, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 8
  %call.i.i217 = tail call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.35) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i, label %ufs_qcom_host_clk_get.exit.thread.i

ufs_qcom_host_clk_get.exit.thread.i:              ; preds = %for.end
  %rx_l0_sync_clk.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %rx_l0_sync_clk.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i217, ptr %rx_l0_sync_clk.i, align 4
  %call.i30.i = tail call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.36) #10
  %cmp.i.i31.i = icmp ugt ptr %call.i30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i31.i, label %if.end.i34.i, label %ufs_qcom_host_clk_get.exit38.thread.i

if.end.i.i:                                       ; preds = %for.end
  %cmp5.not.i.i = icmp eq ptr %call.i.i217, inttoptr (i32 -517 to ptr)
  br i1 %cmp5.not.i.i, label %if.end.i.i.ufshcd_set_variant.exit240_crit_edge, label %ufs_qcom_host_clk_get.exit.i

if.end.i.i.ufshcd_set_variant.exit240_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

ufs_qcom_host_clk_get.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call.i.i217 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %50) #13
  br label %ufshcd_set_variant.exit240

ufs_qcom_host_clk_get.exit38.thread.i:            ; preds = %ufs_qcom_host_clk_get.exit.thread.i
  %tx_l0_sync_clk.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %tx_l0_sync_clk.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i30.i, ptr %tx_l0_sync_clk.i, align 4
  %52 = ptrtoint ptr %hba9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hba9, align 4
  %lanes_per_direction.i = getelementptr inbounds %struct.ufs_hba, ptr %53, i32 0, i32 71
  %54 = ptrtoint ptr %lanes_per_direction.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lanes_per_direction.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i218 = icmp ugt i32 %55, 1
  br i1 %cmp.i218, label %if.then10.i, label %ufs_qcom_host_clk_get.exit38.thread.i.ufshcd_get_variant.exit.i_crit_edge

ufs_qcom_host_clk_get.exit38.thread.i.ufshcd_get_variant.exit.i_crit_edge: ; preds = %ufs_qcom_host_clk_get.exit38.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i

if.end.i34.i:                                     ; preds = %ufs_qcom_host_clk_get.exit.thread.i
  %cmp5.not.i35.i = icmp eq ptr %call.i30.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp5.not.i35.i, label %if.end.i34.i.ufshcd_set_variant.exit240_crit_edge, label %ufs_qcom_host_clk_get.exit38.i

if.end.i34.i.ufshcd_set_variant.exit240_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

ufs_qcom_host_clk_get.exit38.i:                   ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %call.i30.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %56) #13
  br label %ufshcd_set_variant.exit240

if.then10.i:                                      ; preds = %ufs_qcom_host_clk_get.exit38.thread.i
  %call.i39.i = tail call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.37) #10
  %cmp.i.i40.i = icmp ugt ptr %call.i39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i40.i, label %if.end.i43.i, label %ufs_qcom_host_clk_get.exit47.thread.i

ufs_qcom_host_clk_get.exit47.thread.i:            ; preds = %if.then10.i
  %rx_l1_sync_clk.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %rx_l1_sync_clk.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i39.i, ptr %rx_l1_sync_clk.i, align 4
  %tx_l1_sync_clk.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 7
  %call.i48.i = tail call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.38) #10
  %cmp.i.i49.i = icmp ugt ptr %call.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49.i, label %if.end.i52.i, label %ufs_qcom_host_clk_get.exit47.thread.i.ufshcd_get_variant.exit.i.sink.split_crit_edge

ufs_qcom_host_clk_get.exit47.thread.i.ufshcd_get_variant.exit.i.sink.split_crit_edge: ; preds = %ufs_qcom_host_clk_get.exit47.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i.sink.split

if.end.i43.i:                                     ; preds = %if.then10.i
  %cmp5.not.i44.i = icmp eq ptr %call.i39.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp5.not.i44.i, label %if.end.i43.i.ufshcd_set_variant.exit240_crit_edge, label %ufs_qcom_host_clk_get.exit47.i

if.end.i43.i.ufshcd_set_variant.exit240_crit_edge: ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

ufs_qcom_host_clk_get.exit47.i:                   ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call.i39.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %58) #13
  br label %ufshcd_set_variant.exit240

if.end.i52.i:                                     ; preds = %ufs_qcom_host_clk_get.exit47.thread.i
  %magicptr.i = ptrtoint ptr %call.i48.i to i32
  %59 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %do.end.i54.i [
    i32 -2, label %if.end.i52.i.ufshcd_get_variant.exit.i.sink.split_crit_edge
    i32 -517, label %if.end.i52.i.ufshcd_set_variant.exit240_crit_edge
  ]

if.end.i52.i.ufshcd_set_variant.exit240_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

if.end.i52.i.ufshcd_get_variant.exit.i.sink.split_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i.sink.split

do.end.i54.i:                                     ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %magicptr.i) #13
  br label %ufshcd_set_variant.exit240

ufshcd_get_variant.exit.i.sink.split:             ; preds = %if.end.i52.i.ufshcd_get_variant.exit.i.sink.split_crit_edge, %ufs_qcom_host_clk_get.exit47.thread.i.ufshcd_get_variant.exit.i.sink.split_crit_edge
  %call.i48.i.sink = phi ptr [ %call.i48.i, %ufs_qcom_host_clk_get.exit47.thread.i.ufshcd_get_variant.exit.i.sink.split_crit_edge ], [ null, %if.end.i52.i.ufshcd_get_variant.exit.i.sink.split_crit_edge ]
  %60 = ptrtoint ptr %tx_l1_sync_clk.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i48.i.sink, ptr %tx_l1_sync_clk.i, align 4
  br label %ufshcd_get_variant.exit.i

ufshcd_get_variant.exit.i:                        ; preds = %ufshcd_get_variant.exit.i.sink.split, %ufs_qcom_host_clk_get.exit38.thread.i.ufshcd_get_variant.exit.i_crit_edge
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 8
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %63 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %caps.i, align 8
  %or10.i = or i32 %64, 911
  store i32 %or10.i, ptr %caps.i, align 8
  %major.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %62, i32 0, i32 11, i32 2
  %65 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %major.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp.i219 = icmp ugt i8 %66, 1
  br i1 %cmp.i219, label %if.then.i, label %ufshcd_get_variant.exit.i.ufshcd_get_variant.exit.i226_crit_edge

ufshcd_get_variant.exit.i.ufshcd_get_variant.exit.i226_crit_edge: ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i226

if.then.i:                                        ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %62, align 4
  br label %ufshcd_get_variant.exit.i226

ufshcd_get_variant.exit.i226:                     ; preds = %if.then.i, %ufshcd_get_variant.exit.i.ufshcd_get_variant.exit.i226_crit_edge
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 8
  %hw_ver.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %69, i32 0, i32 11
  %major.i224 = getelementptr inbounds %struct.ufs_qcom_host, ptr %69, i32 0, i32 11, i32 2
  %70 = ptrtoint ptr %major.i224 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %major.i224, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp.i225 = icmp eq i8 %71, 1
  br i1 %cmp.i225, label %if.then.i227, label %ufshcd_get_variant.exit.i226.if.end15.i_crit_edge

ufshcd_get_variant.exit.i226.if.end15.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i227:                                     ; preds = %ufshcd_get_variant.exit.i226
  %quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %72 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks.i, align 8
  %or.i = or i32 %73, 26
  store i32 %or.i, ptr %quirks.i, align 8
  %minor.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %69, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %minor.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %75)
  %cmp4.i = icmp eq i16 %75, 1
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.then.i227.if.end.i229_crit_edge

if.then.i227.if.end.i229_crit_edge:               ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i229

land.lhs.true.i:                                  ; preds = %if.then.i227
  %76 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hw_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %77)
  %cmp8.i = icmp eq i16 %77, 1
  br i1 %cmp8.i, label %if.then10.i228, label %land.lhs.true.i.if.end.i229_crit_edge

land.lhs.true.i.if.end.i229_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i229

if.then10.i228:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %or12.i = or i32 %73, 27
  %78 = ptrtoint ptr %quirks.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or12.i, ptr %quirks.i, align 8
  br label %if.end.i229

if.end.i229:                                      ; preds = %if.then10.i228, %land.lhs.true.i.if.end.i229_crit_edge, %if.then.i227.if.end.i229_crit_edge
  %79 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quirks.i, align 8
  %or14.i = or i32 %80, 4
  store i32 %or14.i, ptr %quirks.i, align 8
  %81 = ptrtoint ptr %major.i224 to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr.i = load i8, ptr %major.i224, align 2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i229, %ufshcd_get_variant.exit.i226.if.end15.i_crit_edge
  %82 = phi i8 [ %.pr.i, %if.end.i229 ], [ %71, %ufshcd_get_variant.exit.i226.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp19.i = icmp eq i8 %82, 2
  br i1 %cmp19.i, label %if.then21.i, label %if.end15.i.ufs_qcom_advertise_quirks.exit_crit_edge

if.end15.i.ufs_qcom_advertise_quirks.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_advertise_quirks.exit

if.then21.i:                                      ; preds = %if.end15.i
  %quirks22.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %83 = ptrtoint ptr %quirks22.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %quirks22.i, align 8
  %or23.i = or i32 %84, 32
  store i32 %or23.i, ptr %quirks22.i, align 8
  %85 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %69, align 4
  %and.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i39.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i39.not.i, label %if.then25.i, label %if.then21.i.ufs_qcom_advertise_quirks.exit_crit_edge

if.then21.i.ufs_qcom_advertise_quirks.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_advertise_quirks.exit

if.then25.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %or27.i = or i32 %84, 58
  %87 = ptrtoint ptr %quirks22.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or27.i, ptr %quirks22.i, align 8
  br label %ufs_qcom_advertise_quirks.exit

ufs_qcom_advertise_quirks.exit:                   ; preds = %if.then25.i, %if.then21.i.ufs_qcom_advertise_quirks.exit_crit_edge, %if.end15.i.ufs_qcom_advertise_quirks.exit_crit_edge
  %call111 = tail call i32 @ufs_qcom_ice_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %ufshcd_get_variant.exit.i234, label %ufs_qcom_advertise_quirks.exit.ufshcd_set_variant.exit240_crit_edge

ufs_qcom_advertise_quirks.exit.ufshcd_set_variant.exit240_crit_edge: ; preds = %ufs_qcom_advertise_quirks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_set_variant.exit240

ufshcd_get_variant.exit.i234:                     ; preds = %ufs_qcom_advertise_quirks.exit
  %88 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv.i, align 8
  %tobool.not.i233 = icmp eq ptr %89, null
  br i1 %tobool.not.i233, label %ufshcd_get_variant.exit.i234.ufs_qcom_setup_clocks.exit_crit_edge, label %if.end.i235

ufshcd_get_variant.exit.i234.ufs_qcom_setup_clocks.exit_crit_edge: ; preds = %ufshcd_get_variant.exit.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_setup_clocks.exit

if.end.i235:                                      ; preds = %ufshcd_get_variant.exit.i234
  %pwr_rx.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 4
  %90 = ptrtoint ptr %pwr_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pwr_rx.i.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %91, label %if.end.i235.ufs_qcom_setup_clocks.exit_crit_edge [
    i32 1, label %if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge
    i32 4, label %if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge250
  ]

if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge250: ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit.i

if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge:   ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit.i

if.end.i235.ufs_qcom_setup_clocks.exit_crit_edge: ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_setup_clocks.exit

ufshcd_is_hs_mode.exit.i:                         ; preds = %if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge, %if.end.i235.ufshcd_is_hs_mode.exit.i_crit_edge250
  %pwr_tx.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 5
  %93 = ptrtoint ptr %pwr_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pwr_tx.i.i, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %94, label %ufshcd_is_hs_mode.exit.i.ufs_qcom_setup_clocks.exit_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge251
  ]

ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge251: ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i236

ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge: ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i236

ufshcd_is_hs_mode.exit.i.ufs_qcom_setup_clocks.exit_crit_edge: ; preds = %ufshcd_is_hs_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_setup_clocks.exit

if.then10.i236:                                   ; preds = %ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge, %ufshcd_is_hs_mode.exit.i.if.then10.i236_crit_edge251
  %dev_ref_clk_ctrl_mmio.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %89, i32 0, i32 9
  %96 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %97, null
  br i1 %tobool.not.i18.i, label %if.then10.i236.ufs_qcom_setup_clocks.exit_crit_edge, label %land.lhs.true.i.i

if.then10.i236.ufs_qcom_setup_clocks.exit_crit_edge: ; preds = %if.then10.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_setup_clocks.exit

land.lhs.true.i.i:                                ; preds = %if.then10.i236
  %is_dev_ref_clk_enabled.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %89, i32 0, i32 10
  %98 = ptrtoint ptr %is_dev_ref_clk_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_dev_ref_clk_enabled.i.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %tobool4.not.i.i = icmp eq i8 %99, 1
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.ufs_qcom_setup_clocks.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ufs_qcom_setup_clocks.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_setup_clocks.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %97) #10, !srcloc !240
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #10
  %dev_ref_clk_en_mask.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %89, i32 0, i32 13
  %102 = ptrtoint ptr %dev_ref_clk_en_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dev_ref_clk_en_mask.i.i, align 4
  %or.i.i = or i32 %103, %101
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %105 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748) #10
  %108 = ptrtoint ptr %is_dev_ref_clk_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %is_dev_ref_clk_enabled.i.i, align 4
  br label %ufs_qcom_setup_clocks.exit

ufs_qcom_setup_clocks.exit:                       ; preds = %if.then.i.i, %land.lhs.true.i.i.ufs_qcom_setup_clocks.exit_crit_edge, %if.then10.i236.ufs_qcom_setup_clocks.exit_crit_edge, %ufshcd_is_hs_mode.exit.i.ufs_qcom_setup_clocks.exit_crit_edge, %if.end.i235.ufs_qcom_setup_clocks.exit_crit_edge, %ufshcd_get_variant.exit.i234.ufs_qcom_setup_clocks.exit_crit_edge
  %109 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1, align 8
  %id = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 30
  %111 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp117 = icmp eq i32 %112, 0
  br i1 %cmp117, label %if.then119, label %ufs_qcom_setup_clocks.exit.if.end122_crit_edge

ufs_qcom_setup_clocks.exit.if.end122_crit_edge:   ; preds = %ufs_qcom_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then119:                                       ; preds = %ufs_qcom_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call.i, ptr @ufs_qcom_hosts, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %ufs_qcom_setup_clocks.exit.if.end122_crit_edge
  %dbg_print_en = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 14
  %113 = ptrtoint ptr %dbg_print_en to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dbg_print_en, align 4
  %or = or i32 %114, 5
  store i32 %or, ptr %dbg_print_en, align 4
  %testbus.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 15
  %115 = ptrtoint ptr %testbus.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 11, ptr %testbus.i, align 4
  %select_minor.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %call.i, i32 0, i32 15, i32 1
  %116 = ptrtoint ptr %select_minor.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 37, ptr %select_minor.i, align 1
  %call123 = tail call i32 @ufs_qcom_testbus_config(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end122.cleanup_crit_edge, label %do.end128

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end128:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.10, i32 noundef %call123) #13
  br label %cleanup

ufshcd_set_variant.exit240:                       ; preds = %ufs_qcom_advertise_quirks.exit.ufshcd_set_variant.exit240_crit_edge, %do.end.i54.i, %if.end.i52.i.ufshcd_set_variant.exit240_crit_edge, %ufs_qcom_host_clk_get.exit47.i, %if.end.i43.i.ufshcd_set_variant.exit240_crit_edge, %ufs_qcom_host_clk_get.exit38.i, %if.end.i34.i.ufshcd_set_variant.exit240_crit_edge, %ufs_qcom_host_clk_get.exit.i, %if.end.i.i.ufshcd_set_variant.exit240_crit_edge, %do.end67, %if.then60.ufshcd_set_variant.exit240_crit_edge, %if.then44, %if.then38
  %err.0 = phi i32 [ -517, %if.then38 ], [ %26, %do.end67 ], [ -517, %if.then60.ufshcd_set_variant.exit240_crit_edge ], [ %call111, %ufs_qcom_advertise_quirks.exit.ufshcd_set_variant.exit240_crit_edge ], [ %24, %if.then44 ], [ -517, %if.end.i.i.ufshcd_set_variant.exit240_crit_edge ], [ -517, %if.end.i34.i.ufshcd_set_variant.exit240_crit_edge ], [ -517, %if.end.i43.i.ufshcd_set_variant.exit240_crit_edge ], [ %magicptr.i, %if.end.i52.i.ufshcd_set_variant.exit240_crit_edge ], [ %50, %ufs_qcom_host_clk_get.exit.i ], [ %56, %ufs_qcom_host_clk_get.exit38.i ], [ %58, %ufs_qcom_host_clk_get.exit47.i ], [ %magicptr.i, %do.end.i54.i ]
  %117 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %priv.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ufshcd_set_variant.exit240, %do.end128, %if.end122.cleanup_crit_edge, %if.then7, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %dev_name.exit.cleanup_crit_edge ], [ %err.0, %ufshcd_set_variant.exit240 ], [ 0, %do.end128 ], [ 0, %if.end122.cleanup_crit_edge ], [ -12, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_qcom_exit(ptr noundef readonly %hba) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call fastcc void @ufs_qcom_disable_lane_clks(ptr noundef %1)
  %generic_phy = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %generic_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %generic_phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %3) #10
  %4 = ptrtoint ptr %generic_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %generic_phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_get_ufs_hci_version(ptr noundef readonly %hba) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %major = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %major, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %spec.select = select i1 %cmp, i32 272, i32 512
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_clk_scale_notify(ptr noundef %hba, i1 noundef zeroext %scale_up, i32 noundef %status) #1 align 64 {
entry:
  %core_clk_ctrl_reg.i.i55 = alloca i32, align 4
  %core_clk_ctrl_reg.i.i = alloca i32, align 4
  %core_clk_ctrl_reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev_req_params1 = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %ufshcd_get_variant.exit
  %call2 = tail call i32 @ufshcd_uic_hibern8_enter(ptr noundef nonnull %hba) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp ne i32 %call2, 0
  %brmerge = or i1 %tobool.not, %scale_up
  br i1 %brmerge, label %if.then.cleanup_crit_edge, label %ufshcd_get_variant.exit.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufshcd_get_variant.exit.i:                        ; preds = %if.then
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  %4 = ptrtoint ptr %core_clk_ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %core_clk_ctrl_reg.i, align 4, !annotation !251
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i13.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i13.not.i, label %ufshcd_get_variant.exit.i.if.end8.thread74_crit_edge, label %if.end.i

ufshcd_get_variant.exit.i.if.end8.thread74_crit_edge: ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.thread74

if.end.i:                                         ; preds = %ufshcd_get_variant.exit.i
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -805175296, ptr noundef nonnull %core_clk_ctrl_reg.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i47 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i, label %if.end8.thread77

if.end8.thread77:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  br label %if.then10

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %core_clk_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_clk_ctrl_reg.i, align 4
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end8.thread74_crit_edge, label %if.end8

land.lhs.true.i.if.end8.thread74_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.thread74

if.end8.thread74:                                 ; preds = %land.lhs.true.i.if.end8.thread74_crit_edge, %ufshcd_get_variant.exit.i.if.end8.thread74_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.i
  %and5.i = and i32 %8, -257
  %9 = ptrtoint ptr %core_clk_ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and5.i, ptr %core_clk_ctrl_reg.i, align 4
  %call.i14.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -805175296, i8 noundef zeroext 0, i32 noundef %and5.i, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool9.not = icmp eq i32 %call.i14.i, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end8.thread77
  %retval.0.i80 = phi i32 [ %call.i.i, %if.end8.thread77 ], [ %call.i14.i, %if.end8.if.then10_crit_edge ]
  %call11 = call i32 @ufshcd_uic_hibern8_exit(ptr noundef nonnull %hba) #10
  br label %cleanup

if.else13:                                        ; preds = %ufshcd_get_variant.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %and.i.i51 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.not.i4.not.i = icmp eq i32 %and.i.i51, 0
  br i1 %scale_up, label %ufshcd_get_variant.exit.i52, label %ufshcd_get_variant.exit.i61

ufshcd_get_variant.exit.i52:                      ; preds = %if.else13
  br i1 %tobool.not.i4.not.i, label %ufshcd_get_variant.exit.i52.if.end19_crit_edge, label %if.end.i53

ufshcd_get_variant.exit.i52.if.end19_crit_edge:   ; preds = %ufshcd_get_variant.exit.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i53:                                       ; preds = %ufshcd_get_variant.exit.i52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i.i) #10
  %12 = ptrtoint ptr %core_clk_ctrl_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %core_clk_ctrl_reg.i.i, align 4, !annotation !251
  %call.i.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -805175296, ptr noundef nonnull %core_clk_ctrl_reg.i.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i5.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end2.i.i, label %if.end.i53.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i_crit_edge

if.end.i53.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i_crit_edge: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i

if.end2.i.i:                                      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %core_clk_ctrl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_clk_ctrl_reg.i.i, align 4
  %and.i6.i = and i32 %14, -512
  %and3.i.i = or i32 %and.i6.i, 150
  store i32 %and3.i.i, ptr %core_clk_ctrl_reg.i.i, align 4
  %call.i9.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -805175296, i8 noundef zeroext 0, i32 noundef %and3.i.i, i8 noundef zeroext 0) #10
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i

ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i: ; preds = %if.end2.i.i, %if.end.i53.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i.i, %if.end.i53.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i_crit_edge ], [ %call.i9.i.i, %if.end2.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i.i) #10
  br label %if.end19

ufshcd_get_variant.exit.i61:                      ; preds = %if.else13
  br i1 %tobool.not.i4.not.i, label %ufshcd_get_variant.exit.i61.if.end19_crit_edge, label %if.end.i64

ufshcd_get_variant.exit.i61.if.end19_crit_edge:   ; preds = %ufshcd_get_variant.exit.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i64:                                       ; preds = %ufshcd_get_variant.exit.i61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i.i55) #10
  %15 = ptrtoint ptr %core_clk_ctrl_reg.i.i55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %core_clk_ctrl_reg.i.i55, align 4, !annotation !251
  %call.i.i.i62 = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -805175296, ptr noundef nonnull %core_clk_ctrl_reg.i.i55, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62)
  %tobool.not.i5.i63 = icmp eq i32 %call.i.i.i62, 0
  br i1 %tobool.not.i5.i63, label %if.end2.i.i68, label %if.end.i64.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70_crit_edge

if.end.i64.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70_crit_edge: ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70

if.end2.i.i68:                                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %core_clk_ctrl_reg.i.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_clk_ctrl_reg.i.i55, align 4
  %and.i6.i65 = and i32 %17, -512
  %and3.i.i66 = or i32 %and.i6.i65, 75
  store i32 %and3.i.i66, ptr %core_clk_ctrl_reg.i.i55, align 4
  %call.i9.i.i67 = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -805175296, i8 noundef zeroext 0, i32 noundef %and3.i.i66, i8 noundef zeroext 0) #10
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70

ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70: ; preds = %if.end2.i.i68, %if.end.i64.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70_crit_edge
  %err.0.i.i69 = phi i32 [ %call.i.i.i62, %if.end.i64.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70_crit_edge ], [ %call.i9.i.i67, %if.end2.i.i68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i.i55) #10
  br label %if.end19

if.end19:                                         ; preds = %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70, %ufshcd_get_variant.exit.i61.if.end19_crit_edge, %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i, %ufshcd_get_variant.exit.i52.if.end19_crit_edge
  %err.1 = phi i32 [ %err.0.i.i, %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i ], [ 0, %ufshcd_get_variant.exit.i52.if.end19_crit_edge ], [ %err.0.i.i69, %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit.i70 ], [ 0, %ufshcd_get_variant.exit.i61.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool20.not = icmp ne i32 %err.1, 0
  %tobool21.not = icmp eq ptr %dev_req_params1, null
  %or.cond = select i1 %tobool20.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @ufshcd_uic_hibern8_exit(ptr noundef nonnull %hba) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev_req_params1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_req_params1, align 4
  %pwr_rx = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %pwr_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwr_rx, align 4
  %hs_rate = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %hs_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hs_rate, align 4
  %call25 = call fastcc i32 @ufs_qcom_cfg_timers(ptr noundef nonnull %hba, i32 noundef %19, i32 noundef %21, i32 noundef %23, i1 noundef zeroext false)
  %call26 = call i32 @ufshcd_uic_hibern8_exit(ptr noundef nonnull %hba) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22, %if.then10, %if.end8.cleanup_crit_edge, %if.end8.thread74, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %retval.0.i80, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ], [ %err.1, %if.then22 ], [ 0, %if.end24 ], [ 0, %if.end8.thread74 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_setup_clocks(ptr noundef readonly %hba, i1 noundef zeroext %on, i32 noundef %status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ufshcd_get_variant.exit
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %status, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  br i1 %on, label %sw.bb.cleanup_crit_edge, label %if.then2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %sw.bb
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %3 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.then3

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufs_qcom_dev_ref_clk_ctrl(ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  br i1 %on, label %if.then8, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %sw.bb6
  %pwr_rx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 4
  %5 = ptrtoint ptr %pwr_rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_rx.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %6, label %if.then8.cleanup_crit_edge [
    i32 1, label %if.then8.ufshcd_is_hs_mode.exit_crit_edge
    i32 4, label %if.then8.ufshcd_is_hs_mode.exit_crit_edge19
  ]

if.then8.ufshcd_is_hs_mode.exit_crit_edge19:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit

if.then8.ufshcd_is_hs_mode.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufshcd_is_hs_mode.exit:                           ; preds = %if.then8.ufshcd_is_hs_mode.exit_crit_edge, %if.then8.ufshcd_is_hs_mode.exit_crit_edge19
  %pwr_tx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 5
  %8 = ptrtoint ptr %pwr_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pwr_tx.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %9, label %ufshcd_is_hs_mode.exit.cleanup_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.if.then10_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.if.then10_crit_edge20
  ]

ufshcd_is_hs_mode.exit.if.then10_crit_edge20:     ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

ufshcd_is_hs_mode.exit.if.then10_crit_edge:       ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

ufshcd_is_hs_mode.exit.cleanup_crit_edge:         ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %ufshcd_is_hs_mode.exit.if.then10_crit_edge, %ufshcd_is_hs_mode.exit.if.then10_crit_edge20
  %dev_ref_clk_ctrl_mmio.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i, align 4
  %tobool.not.i18 = icmp eq ptr %12, null
  br i1 %tobool.not.i18, label %if.then10.cleanup_crit_edge, label %land.lhs.true.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then10
  %is_dev_ref_clk_enabled.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %is_dev_ref_clk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_dev_ref_clk_enabled.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 1
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #10, !srcloc !240
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %dev_ref_clk_en_mask.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %dev_ref_clk_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_ref_clk_en_mask.i, align 4
  %or.i = or i32 %18, %16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %20 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  %23 = ptrtoint ptr %is_dev_ref_clk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_dev_ref_clk_enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %ufshcd_is_hs_mode.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.then3, %if.then2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_hce_enable_notify(ptr noundef %hba, i32 noundef %status) #1 align 64 {
entry:
  %tx_fsm_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %status, label %do.end [
    i32 0, label %ufshcd_get_variant.exit.i.i
    i32 1, label %sw.bb3
  ]

ufshcd_get_variant.exit.i.i:                      ; preds = %ufshcd_get_variant.exit
  %generic_phy.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %generic_phy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %generic_phy.i, align 4
  %core_reset.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %core_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core_reset.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %6, null
  br i1 %tobool.not.i1.i, label %ufs_qcom_host_reset.exit.thread.i, label %if.end.i.i

ufs_qcom_host_reset.exit.thread.i:                ; preds = %ufshcd_get_variant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #13
  br label %if.then3.i

if.end.i.i:                                       ; preds = %ufshcd_get_variant.exit.i.i
  %is_irq_enabled.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 32
  %9 = ptrtoint ptr %is_irq_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_irq_enabled.i.i, align 8, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i.i = icmp eq i8 %10, 0
  %irq.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 31
  %11 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i.i, align 4
  tail call void @disable_irq(i32 noundef %12) #10
  %13 = ptrtoint ptr %is_irq_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_irq_enabled.i.i, align 8
  %14 = ptrtoint ptr %core_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_reset.i.i, align 4
  %call4.i.i = tail call i32 @reset_control_assert(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end11.i.i, label %ufs_qcom_host_reset.exit.thread4.i

ufs_qcom_host_reset.exit.thread4.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %16 = ptrtoint ptr %dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %call4.i.i) #13
  br label %do.end.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 210, i32 noundef 2) #10
  %18 = ptrtoint ptr %core_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core_reset.i.i, align 4
  %call13.i.i = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end20.i.i_crit_edge, label %do.end18.i.i

if.end11.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

do.end18.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev19.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %20 = ptrtoint ptr %dev19.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef %call13.i.i) #13
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end18.i.i, %if.end11.i.i.if.end20.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  br i1 %tobool1.not.i.i, label %if.end20.i.i.ufs_qcom_host_reset.exit.i_crit_edge, label %if.then22.i.i

if.end20.i.i.ufs_qcom_host_reset.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_host_reset.exit.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i.i, align 4
  tail call void @enable_irq(i32 noundef %23) #10
  %24 = ptrtoint ptr %is_irq_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_irq_enabled.i.i, align 8
  br label %ufs_qcom_host_reset.exit.i

ufs_qcom_host_reset.exit.i:                       ; preds = %if.then22.i.i, %if.end20.i.i.ufs_qcom_host_reset.exit.i_crit_edge
  br i1 %tobool14.not.i.i, label %ufs_qcom_host_reset.exit.i.if.then3.i_crit_edge, label %ufs_qcom_host_reset.exit.i.do.end.i_crit_edge

ufs_qcom_host_reset.exit.i.do.end.i_crit_edge:    ; preds = %ufs_qcom_host_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

ufs_qcom_host_reset.exit.i.if.then3.i_crit_edge:  ; preds = %ufs_qcom_host_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

do.end.i:                                         ; preds = %ufs_qcom_host_reset.exit.i.do.end.i_crit_edge, %ufs_qcom_host_reset.exit.thread4.i
  %ret.0.i7.i = phi i32 [ %call4.i.i, %ufs_qcom_host_reset.exit.thread4.i ], [ %call13.i.i, %ufs_qcom_host_reset.exit.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %ret.0.i7.i) #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %do.end.i, %ufs_qcom_host_reset.exit.i.if.then3.i_crit_edge, %ufs_qcom_host_reset.exit.thread.i
  %call4.i = tail call i32 @phy_set_mode_ext(ptr noundef %4, i32 noundef 13, i32 noundef 0) #10
  %call6.i = tail call i32 @phy_init(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev12.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %27 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev12.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %call6.i) #13
  br label %ufs_qcom_power_up_sequence.exit

if.end13.i:                                       ; preds = %if.then3.i
  %call14.i = tail call i32 @phy_power_on(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev20.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %29 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev20.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef %call14.i) #13
  %call22.i = tail call i32 @phy_exit(ptr noundef %4) #10
  br label %ufs_qcom_power_up_sequence.exit

if.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %hba.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %hba.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hba.i.i, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %34, 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 220
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %38 = and i32 %37, -16777217
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %or.i.i.i = or i32 %39, %and.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %32, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %42, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %40) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  br label %ufs_qcom_power_up_sequence.exit

ufs_qcom_power_up_sequence.exit:                  ; preds = %if.end21.i, %do.end19.i, %do.end11.i
  %call2 = tail call fastcc i32 @ufs_qcom_enable_lane_clks(ptr noundef %1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %ufshcd_get_variant.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_fsm_val.i) #10
  %43 = ptrtoint ptr %tx_fsm_val.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_fsm_val.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %sw.bb3
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 4259840, ptr noundef nonnull %tx_fsm_val.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i12 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i12, label %lor.lhs.false.i, label %do.body.i.do.end.i13_crit_edge

do.body.i.do.end.i13_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i13

lor.lhs.false.i:                                  ; preds = %do.body.i
  %45 = ptrtoint ptr %tx_fsm_val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_fsm_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i = icmp eq i32 %46, 1
  br i1 %cmp.i, label %lor.lhs.false.i.do.end.i13_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i13_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i13

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %47, %add.i
  %cmp2.i = icmp slt i32 %sub.i, 0
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.do.end.i13_crit_edge

if.end.i.do.end.i13_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i13

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i13:                                       ; preds = %if.end.i.do.end.i13_crit_edge, %lor.lhs.false.i.do.end.i13_crit_edge, %do.body.i.do.end.i13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub3.i = sub i32 %add.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp4.i = icmp slt i32 %sub3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %do.end.i13.if.end7.i_crit_edge

do.end.i13.if.end7.i_crit_edge:                   ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %do.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  %call.i29.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 4259840, ptr noundef nonnull %tx_fsm_val.i, i8 noundef zeroext 0) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %do.end.i13.if.end7.i_crit_edge
  %err.0.i = phi i32 [ %call.i29.i, %if.then5.i ], [ %call.i.i, %do.end.i13.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool8.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i14 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %49 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %err.0.i) #13
  br label %ufs_qcom_check_hibern8.exit

if.else.i:                                        ; preds = %if.end7.i
  %51 = ptrtoint ptr %tx_fsm_val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_fsm_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp13.not.i = icmp eq i32 %52, 1
  br i1 %cmp13.not.i, label %if.else.i.ufs_qcom_check_hibern8.exit_crit_edge, label %if.then14.i

if.else.i.ufs_qcom_check_hibern8.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_check_hibern8.exit

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %53 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev18.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %52) #13
  br label %ufs_qcom_check_hibern8.exit

ufs_qcom_check_hibern8.exit:                      ; preds = %if.then14.i, %if.else.i.ufs_qcom_check_hibern8.exit_crit_edge, %do.end12.i
  %err.1.i = phi i32 [ %err.0.i, %do.end12.i ], [ %52, %if.then14.i ], [ 0, %if.else.i.ufs_qcom_check_hibern8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_fsm_val.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %56, i32 224
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !240
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %58 = or i32 %57, -16777216
  %59 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hba, align 8
  %add.ptr3.i = getelementptr i8, ptr %60, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %58) #10, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  call void @arm_heavy_mb() #10
  %call5 = call i32 @ufs_qcom_ice_enable(ptr noundef %1) #10
  br label %sw.epilog

do.end:                                           ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %status) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %ufs_qcom_check_hibern8.exit, %ufs_qcom_power_up_sequence.exit
  %err.0 = phi i32 [ -22, %do.end ], [ %err.1.i, %ufs_qcom_check_hibern8.exit ], [ %call2, %ufs_qcom_power_up_sequence.exit ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_link_startup_notify(ptr noundef %hba, i32 noundef %status) #1 align 64 {
entry:
  %tx_lanes.i = alloca i32, align 4
  %core_clk_ctrl_reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %status, label %ufshcd_get_variant.exit.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

ufshcd_get_variant.exit.out_crit_edge:            ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %ufshcd_get_variant.exit
  %call1 = tail call fastcc i32 @ufs_qcom_cfg_timers(ptr noundef nonnull %hba, i32 noundef 1, i32 noundef 5, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #13
  br label %out

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i18.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i18.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  %7 = ptrtoint ptr %core_clk_ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %core_clk_ctrl_reg.i, align 4, !annotation !251
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -805175296, ptr noundef nonnull %core_clk_ctrl_reg.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i19 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i19, label %if.end2.i, label %if.then3.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit_crit_edge

if.then3.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit

if.end2.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %core_clk_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_clk_ctrl_reg.i, align 4
  %and.i20 = and i32 %9, -512
  %and3.i = or i32 %and.i20, 150
  store i32 %and3.i, ptr %core_clk_ctrl_reg.i, align 4
  %call.i9.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -805175296, i8 noundef zeroext 0, i32 noundef %and3.i, i8 noundef zeroext 0) #10
  br label %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit

ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit: ; preds = %if.end2.i, %if.then3.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.then3.ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit_crit_edge ], [ %call.i9.i, %if.end2.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_clk_ctrl_reg.i) #10
  br label %if.end5

if.end5:                                          ; preds = %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit, %if.end.if.end5_crit_edge
  %err.0 = phi i32 [ %err.0.i, %ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div.exit ], [ 0, %if.end.if.end5_crit_edge ]
  %call6 = call i32 @ufshcd_get_local_unipro_ver(ptr noundef nonnull %hba) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 2
  br i1 %cmp.not, label %if.end5.out_crit_edge, label %if.then7

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i21 = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #10
  br label %out

sw.bb10:                                          ; preds = %ufshcd_get_variant.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_lanes.i) #10
  %10 = ptrtoint ptr %tx_lanes.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tx_lanes.i, align 4, !annotation !251
  %call.i.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 358678528, ptr noundef nonnull %tx_lanes.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb10.ufs_qcom_link_startup_post_change.exit_crit_edge, label %do.end.i.i

sw.bb10.ufs_qcom_link_startup_post_change.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_link_startup_post_change.exit

do.end.i.i:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %call.i.i.i) #13
  br label %ufs_qcom_link_startup_post_change.exit

ufs_qcom_link_startup_post_change.exit:           ; preds = %do.end.i.i, %sw.bb10.ufs_qcom_link_startup_post_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_lanes.i) #10
  br label %out

out:                                              ; preds = %ufs_qcom_link_startup_post_change.exit, %if.then7, %if.end5.out_crit_edge, %do.end, %ufshcd_get_variant.exit.out_crit_edge
  %err.1 = phi i32 [ 0, %ufshcd_get_variant.exit.out_crit_edge ], [ 0, %ufs_qcom_link_startup_post_change.exit ], [ -22, %do.end ], [ %call.i.i21, %if.then7 ], [ %err.0, %if.end5.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_pwr_change_notify(ptr noundef %hba, i32 noundef %status, ptr noundef %dev_max_params, ptr noundef %dev_req_params) #1 align 64 {
entry:
  %ufs_qcom_cap = alloca %struct.ufs_dev_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ufs_qcom_cap) #10
  %2 = call ptr @memset(ptr %ufs_qcom_cap, i32 255, i32 48)
  %tobool.not = icmp eq ptr %dev_req_params, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) #13
  br label %out

if.end:                                           ; preds = %ufshcd_get_variant.exit
  %3 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %status, label %if.end.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @ufshcd_init_pwr_dev_param(ptr noundef nonnull %ufs_qcom_cap) #10
  %hs_rate = getelementptr inbounds %struct.ufs_dev_params, ptr %ufs_qcom_cap, i32 0, i32 10
  %4 = ptrtoint ptr %hs_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %hs_rate, align 4
  %major = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %major, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %if.then3, label %sw.bb.if.end14_crit_edge

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then3:                                         ; preds = %sw.bb
  %hs_tx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %ufs_qcom_cap, i32 0, i32 3
  %7 = ptrtoint ptr %hs_tx_gear to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hs_tx_gear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4 = icmp ugt i32 %8, 2
  br i1 %cmp4, label %if.then6, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hs_tx_gear to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %hs_tx_gear, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge
  %hs_rx_gear = getelementptr inbounds %struct.ufs_dev_params, ptr %ufs_qcom_cap, i32 0, i32 2
  %10 = ptrtoint ptr %hs_rx_gear to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hs_rx_gear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp9 = icmp ugt i32 %11, 2
  br i1 %cmp9, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %hs_rx_gear to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %hs_rx_gear, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge, %sw.bb.if.end14_crit_edge
  %call15 = call i32 @ufshcd_get_pwr_dev_param(ptr noundef nonnull %ufs_qcom_cap, ptr noundef %dev_max_params, ptr noundef nonnull %dev_req_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #13
  br label %out

if.end23:                                         ; preds = %if.end14
  %pwr_rx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 4
  %13 = ptrtoint ptr %pwr_rx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pwr_rx.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %14, label %if.end23.land.lhs.true_crit_edge [
    i32 1, label %if.end23.ufshcd_is_hs_mode.exit_crit_edge
    i32 4, label %if.end23.ufshcd_is_hs_mode.exit_crit_edge94
  ]

if.end23.ufshcd_is_hs_mode.exit_crit_edge94:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit

if.end23.ufshcd_is_hs_mode.exit_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit

if.end23.land.lhs.true_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

ufshcd_is_hs_mode.exit:                           ; preds = %if.end23.ufshcd_is_hs_mode.exit_crit_edge, %if.end23.ufshcd_is_hs_mode.exit_crit_edge94
  %pwr_tx.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 5
  %16 = ptrtoint ptr %pwr_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pwr_tx.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %17, label %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.if.end28_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.if.end28_crit_edge95
  ]

ufshcd_is_hs_mode.exit.if.end28_crit_edge95:      ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

ufshcd_is_hs_mode.exit.if.end28_crit_edge:        ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge:   ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge, %if.end23.land.lhs.true_crit_edge
  %pwr_rx.i72 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 4
  %19 = ptrtoint ptr %pwr_rx.i72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwr_rx.i72, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %20, label %land.lhs.true.if.end28_crit_edge [
    i32 1, label %land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge
    i32 4, label %land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge96
  ]

land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge96: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit78

land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit78

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

ufshcd_is_hs_mode.exit78:                         ; preds = %land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge, %land.lhs.true.ufshcd_is_hs_mode.exit78_crit_edge96
  %pwr_tx.i73 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 5
  %22 = ptrtoint ptr %pwr_tx.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pwr_tx.i73, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %23, label %ufshcd_is_hs_mode.exit78.if.end28_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit78.if.then27_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit78.if.then27_crit_edge97
  ]

ufshcd_is_hs_mode.exit78.if.then27_crit_edge97:   ; preds = %ufshcd_is_hs_mode.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

ufshcd_is_hs_mode.exit78.if.then27_crit_edge:     ; preds = %ufshcd_is_hs_mode.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

ufshcd_is_hs_mode.exit78.if.end28_crit_edge:      ; preds = %ufshcd_is_hs_mode.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %ufshcd_is_hs_mode.exit78.if.then27_crit_edge, %ufshcd_is_hs_mode.exit78.if.then27_crit_edge97
  %dev_ref_clk_ctrl_mmio.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i, align 4
  %tobool.not.i79 = icmp eq ptr %26, null
  br i1 %tobool.not.i79, label %if.then27.if.end28_crit_edge, label %land.lhs.true.i

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true.i:                                  ; preds = %if.then27
  %is_dev_ref_clk_enabled.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %is_dev_ref_clk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_dev_ref_clk_enabled.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %tobool4.not.i = icmp eq i8 %28, 1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end28_crit_edge, label %if.then.i

land.lhs.true.i.if.end28_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #10, !srcloc !240
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10
  %dev_ref_clk_en_mask.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %dev_ref_clk_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_ref_clk_en_mask.i, align 4
  %or.i = or i32 %32, %30
  %33 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %34 = ptrtoint ptr %dev_ref_clk_ctrl_mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_ref_clk_ctrl_mmio.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #10, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748) #10
  %37 = ptrtoint ptr %is_dev_ref_clk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_dev_ref_clk_enabled.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end28_crit_edge, %if.then27.if.end28_crit_edge, %ufshcd_is_hs_mode.exit78.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %ufshcd_is_hs_mode.exit.if.end28_crit_edge, %ufshcd_is_hs_mode.exit.if.end28_crit_edge95
  %38 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %major, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp32 = icmp ugt i8 %39, 3
  br i1 %cmp32, label %if.then34, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %gear_tx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 1
  %40 = ptrtoint ptr %gear_tx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gear_tx, align 4
  %call35 = call i32 @ufshcd_dme_configure_adapt(ptr noundef nonnull %hba, i32 noundef %41, i32 noundef 1) #10
  br label %out

sw.bb37:                                          ; preds = %if.end
  %42 = ptrtoint ptr %dev_req_params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev_req_params, align 4
  %pwr_rx = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 4
  %44 = ptrtoint ptr %pwr_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pwr_rx, align 4
  %hs_rate38 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 6
  %46 = ptrtoint ptr %hs_rate38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hs_rate38, align 4
  %call39 = tail call fastcc i32 @ufs_qcom_cfg_timers(ptr noundef nonnull %hba, i32 noundef %43, i32 noundef %45, i32 noundef %47, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %sw.bb37.if.end45_crit_edge, label %do.end44

sw.bb37.if.end45_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end44:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.87) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %sw.bb37.if.end45_crit_edge
  %ret.0 = phi i32 [ -22, %do.end44 ], [ 0, %sw.bb37.if.end45_crit_edge ]
  %dev_req_params46 = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 3
  %50 = call ptr @memcpy(ptr %dev_req_params46, ptr %dev_req_params, i32 28)
  %pwr_rx.i80 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 4
  %51 = ptrtoint ptr %pwr_rx.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pwr_rx.i80, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %52, label %if.end45.out_crit_edge [
    i32 1, label %if.end45.ufshcd_is_hs_mode.exit86_crit_edge
    i32 4, label %if.end45.ufshcd_is_hs_mode.exit86_crit_edge98
  ]

if.end45.ufshcd_is_hs_mode.exit86_crit_edge98:    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit86

if.end45.ufshcd_is_hs_mode.exit86_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit86

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_is_hs_mode.exit86:                         ; preds = %if.end45.ufshcd_is_hs_mode.exit86_crit_edge, %if.end45.ufshcd_is_hs_mode.exit86_crit_edge98
  %pwr_tx.i81 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 5
  %54 = ptrtoint ptr %pwr_tx.i81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pwr_tx.i81, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %55, label %ufshcd_is_hs_mode.exit86.out_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge99
  ]

ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge99: ; preds = %ufshcd_is_hs_mode.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true50

ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge: ; preds = %ufshcd_is_hs_mode.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true50

ufshcd_is_hs_mode.exit86.out_crit_edge:           ; preds = %ufshcd_is_hs_mode.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true50:                                  ; preds = %ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge, %ufshcd_is_hs_mode.exit86.land.lhs.true50_crit_edge99
  %57 = ptrtoint ptr %pwr_rx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pwr_rx, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %58, label %land.lhs.true50.if.then52_crit_edge [
    i32 1, label %land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge
    i32 4, label %land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge100
  ]

land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge100: ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit93

land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge: ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_is_hs_mode.exit93

land.lhs.true50.if.then52_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

ufshcd_is_hs_mode.exit93:                         ; preds = %land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge, %land.lhs.true50.ufshcd_is_hs_mode.exit93_crit_edge100
  %pwr_tx.i88 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 5
  %60 = ptrtoint ptr %pwr_tx.i88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pwr_tx.i88, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %61, label %ufshcd_is_hs_mode.exit93.if.then52_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit93.out_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit93.out_crit_edge101
  ]

ufshcd_is_hs_mode.exit93.out_crit_edge101:        ; preds = %ufshcd_is_hs_mode.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_is_hs_mode.exit93.out_crit_edge:           ; preds = %ufshcd_is_hs_mode.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_is_hs_mode.exit93.if.then52_crit_edge:     ; preds = %ufshcd_is_hs_mode.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %ufshcd_is_hs_mode.exit93.if.then52_crit_edge, %land.lhs.true50.if.then52_crit_edge
  tail call fastcc void @ufs_qcom_dev_ref_clk_ctrl(ptr noundef %1, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.then52, %ufshcd_is_hs_mode.exit93.out_crit_edge, %ufshcd_is_hs_mode.exit93.out_crit_edge101, %ufshcd_is_hs_mode.exit86.out_crit_edge, %if.end45.out_crit_edge, %if.then34, %if.end28.out_crit_edge, %do.end20, %if.end.out_crit_edge, %do.end
  %ret.1 = phi i32 [ %ret.0, %ufshcd_is_hs_mode.exit93.out_crit_edge ], [ %ret.0, %if.then52 ], [ %ret.0, %ufshcd_is_hs_mode.exit86.out_crit_edge ], [ %call15, %do.end20 ], [ 0, %if.then34 ], [ 0, %if.end28.out_crit_edge ], [ -22, %do.end ], [ -22, %if.end.out_crit_edge ], [ %ret.0, %if.end45.out_crit_edge ], [ %ret.0, %ufshcd_is_hs_mode.exit93.out_crit_edge101 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ufs_qcom_cap) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_apply_dev_quirks(ptr noundef %hba) #1 align 64 {
entry:
  %pa_vs_config_reg1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 35
  %0 = ptrtoint ptr %dev_quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_quirks, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa_vs_config_reg1.i) #10
  %2 = ptrtoint ptr %pa_vs_config_reg1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pa_vs_config_reg1.i, align 4, !annotation !251
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef -1879048192, ptr noundef nonnull %pa_vs_config_reg1.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ufs_qcom_quirk_host_pa_saveconfigtime.exit_crit_edge

if.then.ufs_qcom_quirk_host_pa_saveconfigtime.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_quirk_host_pa_saveconfigtime.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pa_vs_config_reg1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pa_vs_config_reg1.i, align 4
  %or.i = or i32 %4, 4096
  %call.i4.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -1879048192, i8 noundef zeroext 0, i32 noundef %or.i, i8 noundef zeroext 0) #10
  br label %ufs_qcom_quirk_host_pa_saveconfigtime.exit

ufs_qcom_quirk_host_pa_saveconfigtime.exit:       ; preds = %if.end.i, %if.then.ufs_qcom_quirk_host_pa_saveconfigtime.exit_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.then.ufs_qcom_quirk_host_pa_saveconfigtime.exit_crit_edge ], [ %call.i4.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa_vs_config_reg1.i) #10
  br label %if.end

if.end:                                           ; preds = %ufs_qcom_quirk_host_pa_saveconfigtime.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %err.0.i, %ufs_qcom_quirk_host_pa_saveconfigtime.exit ], [ 0, %entry.if.end_crit_edge ]
  %wmanufacturerid = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 66, i32 3
  %5 = ptrtoint ptr %wmanufacturerid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %wmanufacturerid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 325, i16 %6)
  %cmp = icmp eq i16 %6, 325
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev_quirks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_quirks, align 4
  %or = or i32 %8, 128
  store i32 %or, ptr %dev_quirks, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_suspend(ptr noundef readonly %hba, i32 noundef %pm_op, i32 noundef %status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %generic_phy = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %generic_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %generic_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ufshcd_get_variant.exit
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %4 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uic_link_state, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %5, label %if.then6 [
    i32 0, label %ufshcd_get_variant.exit.i
    i32 1, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufshcd_get_variant.exit.i:                        ; preds = %if.end
  tail call fastcc void @ufs_qcom_disable_lane_clks(ptr noundef %1)
  %call3 = tail call i32 @phy_power_off(ptr noundef %3) #10
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %device_reset.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %device_reset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_reset.i, align 4
  %tobool.not.i15 = icmp eq ptr %10, null
  br i1 %tobool.not.i15, label %ufshcd_get_variant.exit.i.cleanup_crit_edge, label %if.end.i

ufshcd_get_variant.exit.i.cleanup_crit_edge:      ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %10, i32 noundef 1) #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufs_qcom_disable_lane_clks(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.i, %ufshcd_get_variant.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_resume(ptr noundef %hba, i32 noundef %pm_op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %if.then9 [
    i32 0, label %if.then
    i32 1, label %ufshcd_get_variant.exit.if.end15_crit_edge
  ]

ufshcd_get_variant.exit.if.end15_crit_edge:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %ufshcd_get_variant.exit
  %generic_phy = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %generic_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %generic_phy, align 4
  %call1 = tail call i32 @phy_power_on(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc i32 @ufs_qcom_enable_lane_clks(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %ufshcd_get_variant.exit
  %call10 = tail call fastcc i32 @ufs_qcom_enable_lane_clks(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end.if.end15_crit_edge, %ufshcd_get_variant.exit.if.end15_crit_edge
  %call16 = tail call i32 @ufs_qcom_ice_resume(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %is_sys_suspended = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 78
  %9 = ptrtoint ptr %is_sys_suspended to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_sys_suspended, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end19 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_qcom_dump_dbg_regs(ptr noundef %hba) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ufshcd_dump_regs(ptr noundef %hba, i32 noundef 192, i32 noundef 64, ptr noundef nonnull @.str.95) #10
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.end.i, label %ufshcd_get_variant.exit.i, !prof !245

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #13
  br label %ufs_qcom_print_hw_debug_reg_all.exit

ufshcd_get_variant.exit.i:                        ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %dbg_print_en.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dbg_print_en.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_print_en.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %ufshcd_get_variant.exit.i.ufs_qcom_print_hw_debug_reg_all.exit_crit_edge, label %if.end21.i

ufshcd_get_variant.exit.i.ufs_qcom_print_hw_debug_reg_all.exit_crit_edge: ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_print_hw_debug_reg_all.exit

if.end21.i:                                       ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %major.i.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i.i = icmp ult i8 %5, 3
  %retval.0.i.i = select i1 %cmp.i.i, i32 2048, i32 3072
  %call.i.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i.i, i32 noundef 176, ptr noundef nonnull @.str.101) #10
  %6 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 220
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %9 = or i32 %8, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba, align 8
  %add.ptr30.i = getelementptr i8, ptr %11, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %9) #10, !srcloc !243
  %12 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i2.i = icmp ult i8 %13, 3
  %retval.0.i3.i = select i1 %cmp.i2.i, i32 6400, i32 7424
  %call.i4.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i3.i, i32 noundef 128, ptr noundef nonnull @.str.102) #10
  %14 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i6.i = icmp ult i8 %15, 3
  %retval.0.i7.i = select i1 %cmp.i6.i, i32 5376, i32 6400
  %call.i8.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i7.i, i32 noundef 512, ptr noundef nonnull @.str.103) #10
  %16 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i10.i = icmp ult i8 %17, 3
  %retval.0.i11.i = select i1 %cmp.i10.i, i32 5888, i32 6912
  %call.i12.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i11.i, i32 noundef 256, ptr noundef nonnull @.str.104) #10
  %18 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hba, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 220
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %21 = and i32 %20, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hba, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %23, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %21) #10, !srcloc !243
  %24 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i14.i = icmp ult i8 %25, 3
  %retval.0.i15.i = select i1 %cmp.i14.i, i32 256, i32 1280
  %call.i16.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i15.i, i32 noundef 16, ptr noundef nonnull @.str.105) #10
  %26 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp.i18.i = icmp ult i8 %27, 3
  %retval.0.i19.i = select i1 %cmp.i18.i, i32 512, i32 1536
  %call.i20.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i19.i, i32 noundef 16, ptr noundef nonnull @.str.106) #10
  %28 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i22.i = icmp ult i8 %29, 3
  %retval.0.i23.i = select i1 %cmp.i22.i, i32 768, i32 1792
  %call.i24.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i23.i, i32 noundef 192, ptr noundef nonnull @.str.107) #10
  %30 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp.i26.i = icmp ult i8 %31, 3
  %retval.0.i27.i = select i1 %cmp.i26.i, i32 1024, i32 2048
  %call.i28.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i27.i, i32 noundef 108, ptr noundef nonnull @.str.108) #10
  %32 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i30.i = icmp ult i8 %33, 3
  %retval.0.i31.i = select i1 %cmp.i30.i, i32 1280, i32 2304
  %call.i32.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i31.i, i32 noundef 76, ptr noundef nonnull @.str.109) #10
  %34 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i34.i = icmp ult i8 %35, 3
  %retval.0.i35.i = select i1 %cmp.i34.i, i32 1536, i32 2560
  %call.i36.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i35.i, i32 noundef 136, ptr noundef nonnull @.str.110) #10
  %36 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp.i38.i = icmp ult i8 %37, 3
  %retval.0.i39.i = select i1 %cmp.i38.i, i32 1792, i32 2816
  %call.i40.i = tail call i32 @ufshcd_dump_regs(ptr noundef nonnull %hba, i32 noundef %retval.0.i39.i, i32 noundef 36, ptr noundef nonnull @.str.111) #10
  br label %ufs_qcom_print_hw_debug_reg_all.exit

ufs_qcom_print_hw_debug_reg_all.exit:             ; preds = %if.end21.i, %ufshcd_get_variant.exit.i.ufs_qcom_print_hw_debug_reg_all.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_device_reset(ptr noundef readonly %hba) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %device_reset = getelementptr inbounds %struct.ufs_qcom_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %device_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %ufshcd_get_variant.exit.i9

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufshcd_get_variant.exit.i9:                       ; preds = %ufshcd_get_variant.exit
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #10
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %device_reset.i7 = getelementptr inbounds %struct.ufs_qcom_host, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %device_reset.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_reset.i7, align 4
  %tobool.not.i8 = icmp eq ptr %7, null
  br i1 %tobool.not.i8, label %ufshcd_get_variant.exit.i9.ufs_qcom_device_reset_ctrl.exit11_crit_edge, label %if.end.i10

ufshcd_get_variant.exit.i9.ufs_qcom_device_reset_ctrl.exit11_crit_edge: ; preds = %ufshcd_get_variant.exit.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_device_reset_ctrl.exit11

if.end.i10:                                       ; preds = %ufshcd_get_variant.exit.i9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #10
  br label %ufs_qcom_device_reset_ctrl.exit11

ufs_qcom_device_reset_ctrl.exit11:                ; preds = %if.end.i10, %ufshcd_get_variant.exit.i9.ufs_qcom_device_reset_ctrl.exit11_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %ufs_qcom_device_reset_ctrl.exit11, %ufshcd_get_variant.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ufs_qcom_device_reset_ctrl.exit11 ], [ -95, %ufshcd_get_variant.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ufs_qcom_config_scaling_param(ptr nocapture noundef readnone %hba, ptr nocapture noundef writeonly %p, ptr noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %polling_ms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 60, ptr %polling_ms, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 70, ptr %data, align 4
  %downdifferential = getelementptr inbounds %struct.devfreq_simple_ondemand_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %downdifferential to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %downdifferential, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_qcom_ice_program_key(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_qcom_ice_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 931, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hba = getelementptr i8, ptr %rcdev, i32 -84
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 220
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %5 = or i32 %4, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %7, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %5) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_qcom_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 944, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hba = getelementptr i8, ptr %rcdev, i32 -84
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 220
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %7, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %5) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_qcom_disable_lane_clks(ptr nocapture noundef %host) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_lane_clks_enabled = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %is_lane_clks_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lane_clks_enabled, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_l1_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 7
  %2 = ptrtoint ptr %tx_l1_sync_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_l1_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %tx_l0_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %tx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_l0_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %rx_l1_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 6
  %6 = ptrtoint ptr %rx_l1_sync_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_l1_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %rx_l0_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %rx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_l0_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %10 = ptrtoint ptr %is_lane_clks_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_lane_clks_enabled, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_uic_hibern8_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_uic_hibern8_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_qcom_cfg_timers(ptr noundef readonly %hba, i32 noundef %gear, i32 noundef %hs, i32 noundef %rate, i1 noundef zeroext %update_link_startup_timer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !245

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i153.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i153.not, label %ufshcd_get_variant.exit.if.end_crit_edge, label %land.lhs.true

ufshcd_get_variant.exit.if.end_crit_edge:         ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %ufshcd_get_variant.exit
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 8
  %and.i154 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %tobool.not.i155, label %land.lhs.true.out_crit_edge, label %ufshcd_is_intr_aggr_allowed.exit

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_is_intr_aggr_allowed.exit:                 ; preds = %land.lhs.true
  %quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %ufshcd_is_intr_aggr_allowed.exit.if.end_crit_edge, label %ufshcd_is_intr_aggr_allowed.exit.out_crit_edge

ufshcd_is_intr_aggr_allowed.exit.out_crit_edge:   ; preds = %ufshcd_is_intr_aggr_allowed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_is_intr_aggr_allowed.exit.if.end_crit_edge: ; preds = %ufshcd_is_intr_aggr_allowed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %ufshcd_is_intr_aggr_allowed.exit.if.end_crit_edge, %ufshcd_get_variant.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gear)
  %cmp = icmp eq i32 %gear, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 0) #13
  br label %out

if.end4:                                          ; preds = %if.end
  %clk_list_head = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 69
  %10 = ptrtoint ptr %clk_list_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %clki.0158 = load ptr, ptr %clk_list_head, align 4
  %cmp6.not159 = icmp eq ptr %clki.0158, %clk_list_head
  br i1 %cmp6.not159, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %clki.0161 = phi ptr [ %clki.0, %for.inc.for.body_crit_edge ], [ %clki.0158, %if.end4.for.body_crit_edge ]
  %core_clk_rate.0160 = phi i32 [ %core_clk_rate.1, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.0161, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(9) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.0161, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %14) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %core_clk_rate.1 = phi i32 [ %core_clk_rate.0160, %for.body.for.inc_crit_edge ], [ %call9, %if.then8 ]
  %15 = ptrtoint ptr %clki.0161 to i32
  call void @__asan_load4_noabort(i32 %15)
  %clki.0 = load ptr, ptr %clki.0161, align 4
  %cmp6.not = icmp eq ptr %clki.0, %clk_list_head
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %core_clk_rate.0.lcssa = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ %core_clk_rate.1, %for.inc.for.end_crit_edge ]
  %16 = tail call i32 @llvm.umax.i32(i32 %core_clk_rate.0.lcssa, i32 1000000)
  %div = udiv i32 %16, 1000000
  %17 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hba, align 8
  %add.ptr19 = getelementptr i8, ptr %18, i32 192
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !240
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %div)
  %cmp23.not = icmp eq i32 %20, %div
  br i1 %cmp23.not, label %for.end.if.end33_crit_edge, label %do.body25

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %div)
  %22 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hba, align 8
  %add.ptr29 = getelementptr i8, ptr %23, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %21) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  br label %if.end33

if.end33:                                         ; preds = %do.body25, %for.end.if.end33_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %and.i156 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool.not.i157.not = icmp eq i32 %and.i156, 0
  br i1 %tobool.not.i157.not, label %if.end36, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end36:                                         ; preds = %if.end33
  %div37 = udiv i32 1000000000, %16
  %shl = shl nuw nsw i32 %div37, 10
  %and = and i32 %shl, 16776192
  %26 = zext i32 %hs to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %hs, label %do.end81 [
    i32 4, label %if.end36.sw.bb_crit_edge
    i32 1, label %if.end36.sw.bb_crit_edge162
    i32 5, label %if.end36.sw.bb67_crit_edge
    i32 2, label %if.end36.sw.bb67_crit_edge163
  ]

if.end36.sw.bb67_crit_edge163:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb67

if.end36.sw.bb67_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb67

if.end36.sw.bb_crit_edge162:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end36.sw.bb_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end36.sw.bb_crit_edge, %if.end36.sw.bb_crit_edge162
  %27 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %rate, label %do.end63 [
    i32 1, label %if.then39
    i32 2, label %if.then49
  ]

if.then39:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %gear)
  %cmp40 = icmp ugt i32 %gear, 3
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %dev45 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %28 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev45, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %gear, i32 noundef 3) #13
  br label %out

if.end46:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %gear, -1
  %arrayidx47 = getelementptr [3 x [2 x i32]], ptr @ufs_qcom_cfg_timers.hs_fr_table_rA, i32 0, i32 %sub, i32 1
  br label %sw.epilog

if.then49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %gear)
  %cmp50 = icmp ugt i32 %gear, 3
  br i1 %cmp50, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %dev55 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %30 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %gear, i32 noundef 3) #13
  br label %out

if.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %sub57 = add nsw i32 %gear, -1
  %arrayidx59 = getelementptr [3 x [2 x i32]], ptr @ufs_qcom_cfg_timers.hs_fr_table_rB, i32 0, i32 %sub57, i32 1
  br label %sw.epilog

do.end63:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %dev64 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %32 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42, i32 noundef %rate) #13
  br label %out

sw.bb67:                                          ; preds = %if.end36.sw.bb67_crit_edge, %if.end36.sw.bb67_crit_edge163
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %gear)
  %cmp68 = icmp ugt i32 %gear, 4
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  %dev73 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %34 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %gear, i32 noundef 4) #13
  br label %out

if.end74:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  %sub75 = add nsw i32 %gear, -1
  %arrayidx77 = getelementptr [4 x [2 x i32]], ptr @ufs_qcom_cfg_timers.pwm_fr_table, i32 0, i32 %sub75, i32 1
  br label %sw.epilog

do.end81:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %dev82 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %36 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.42, i32 noundef %hs) #13
  br label %out

sw.epilog:                                        ; preds = %if.end74, %if.end56, %if.end46
  %tx_clk_cycles_per_us.0.in = phi ptr [ %arrayidx77, %if.end74 ], [ %arrayidx47, %if.end46 ], [ %arrayidx59, %if.end56 ]
  %38 = ptrtoint ptr %tx_clk_cycles_per_us.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %tx_clk_cycles_per_us.0 = load i32, ptr %tx_clk_cycles_per_us.0.in, align 4
  %39 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hba, align 8
  %add.ptr86 = getelementptr i8, ptr %40, i32 196
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #10, !srcloc !240
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  %or = or i32 %tx_clk_cycles_per_us.0, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %or)
  %cmp90.not = icmp eq i32 %42, %or
  br i1 %cmp90.not, label %sw.epilog.if.end101_crit_edge, label %do.body92

sw.epilog.if.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

do.body92:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hba, align 8
  %add.ptr97 = getelementptr i8, ptr %45, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %43) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  tail call void @arm_heavy_mb() #10
  br label %if.end101

if.end101:                                        ; preds = %do.body92, %sw.epilog.if.end101_crit_edge
  br i1 %update_link_startup_timer, label %do.body104, label %if.end101.out_crit_edge

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %div107 = udiv i32 %16, 1000
  %mul = mul nuw nsw i32 %div107, 100
  %46 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %47 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hba, align 8
  %add.ptr109 = getelementptr i8, ptr %48, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %46) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  br label %out

out:                                              ; preds = %do.body104, %if.end101.out_crit_edge, %do.end81, %do.end72, %do.end63, %do.end54, %do.end44, %if.end33.out_crit_edge, %do.end, %ufshcd_is_intr_aggr_allowed.exit.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end33.out_crit_edge ], [ 0, %do.body104 ], [ 0, %if.end101.out_crit_edge ], [ 0, %ufshcd_is_intr_aggr_allowed.exit.out_crit_edge ], [ -22, %do.end81 ], [ -22, %do.end72 ], [ -22, %do.end63 ], [ -22, %do.end54 ], [ -22, %do.end44 ], [ -22, %do.end ], [ 0, %land.lhs.true.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_qcom_dev_ref_clk_ctrl(ptr nocapture noundef %host, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %dev_ref_clk_ctrl_mmio = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %dev_ref_clk_ctrl_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_ref_clk_ctrl_mmio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %land.lhs.true

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %is_dev_ref_clk_enabled = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %is_dev_ref_clk_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dev_ref_clk_enabled, align 4, !range !248
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %tobool4.not = icmp eq i8 %3, %frombool
  br i1 %tobool4.not, label %land.lhs.true.if.end24_crit_edge, label %if.then

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #10, !srcloc !240
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %dev_ref_clk_en_mask = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 13
  %6 = ptrtoint ptr %dev_ref_clk_en_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_ref_clk_en_mask, align 4
  br i1 %enable, label %if.then19.critedge, label %if.then10

if.then10:                                        ; preds = %if.then
  %neg = xor i32 %7, -1
  %and = and i32 %5, %neg
  %hba = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hba, align 4
  %clk_gating_wait_us = getelementptr inbounds %struct.ufs_hba, ptr %9, i32 0, i32 66, i32 6
  %10 = ptrtoint ptr %clk_gating_wait_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_gating_wait_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  %14 = ptrtoint ptr %dev_ref_clk_ctrl_mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_ref_clk_ctrl_mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  br label %if.end20

if.else13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %11, 10
  %add14 = add i32 %11, 20
  tail call void @usleep_range_state(i32 noundef %add, i32 noundef %add14, i32 noundef 2) #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %dev_ref_clk_ctrl_mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_ref_clk_ctrl_mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  br label %if.end20

if.then19.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %7, %5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %dev_ref_clk_ctrl_mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_ref_clk_ctrl_mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19.critedge, %if.else13, %if.then12
  %23 = ptrtoint ptr %is_dev_ref_clk_enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %is_dev_ref_clk_enabled, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_qcom_enable_lane_clks(ptr nocapture noundef %host) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hba = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %is_lane_clks_enabled = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %is_lane_clks_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_lane_clks_enabled, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_l0_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %rx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_l0_sync_clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.ufs_qcom_host_clk_enable.exit_crit_edge

if.end.ufs_qcom_host_clk_enable.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_host_clk_enable.exit

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %ufs_qcom_host_clk_enable.exit

ufs_qcom_host_clk_enable.exit:                    ; preds = %if.then3.i.i, %if.end.ufs_qcom_host_clk_enable.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.ufs_qcom_host_clk_enable.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i.ph.i) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %tx_l0_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 5
  %8 = ptrtoint ptr %tx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_l0_sync_clk, align 4
  %call.i.i38 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i.i39, label %if.end.i.i42, label %if.end4.ufs_qcom_host_clk_enable.exit47_crit_edge

if.end4.ufs_qcom_host_clk_enable.exit47_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_host_clk_enable.exit47

if.end.i.i42:                                     ; preds = %if.end4
  %call1.i.i40 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i40)
  %tobool2.not.i.i41 = icmp eq i32 %call1.i.i40, 0
  br i1 %tobool2.not.i.i41, label %if.end8, label %if.then3.i.i43

if.then3.i.i43:                                   ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %ufs_qcom_host_clk_enable.exit47

ufs_qcom_host_clk_enable.exit47:                  ; preds = %if.then3.i.i43, %if.end4.ufs_qcom_host_clk_enable.exit47_crit_edge
  %retval.0.i.ph.i44 = phi i32 [ %call1.i.i40, %if.then3.i.i43 ], [ %call.i.i38, %if.end4.ufs_qcom_host_clk_enable.exit47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i.ph.i44) #13
  br label %disable_rx_l0

if.end8:                                          ; preds = %if.end.i.i42
  %rx_l1_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 6
  %10 = ptrtoint ptr %rx_l1_sync_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_l1_sync_clk, align 4
  %call.i.i48 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %call.i.i48, 0
  br i1 %tobool.not.i.i49, label %if.end.i.i52, label %if.end8.ufs_qcom_host_clk_enable.exit57_crit_edge

if.end8.ufs_qcom_host_clk_enable.exit57_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_qcom_host_clk_enable.exit57

if.end.i.i52:                                     ; preds = %if.end8
  %call1.i.i50 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i50)
  %tobool2.not.i.i51 = icmp eq i32 %call1.i.i50, 0
  br i1 %tobool2.not.i.i51, label %if.end12, label %if.then3.i.i53

if.then3.i.i53:                                   ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %ufs_qcom_host_clk_enable.exit57

ufs_qcom_host_clk_enable.exit57:                  ; preds = %if.then3.i.i53, %if.end8.ufs_qcom_host_clk_enable.exit57_crit_edge
  %retval.0.i.ph.i54 = phi i32 [ %call1.i.i50, %if.then3.i.i53 ], [ %call.i.i48, %if.end8.ufs_qcom_host_clk_enable.exit57_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.ph.i54) #13
  br label %disable_tx_l0

if.end12:                                         ; preds = %if.end.i.i52
  %tx_l1_sync_clk = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 7
  %12 = ptrtoint ptr %tx_l1_sync_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_l1_sync_clk, align 4
  %call.i.i58 = tail call i32 @clk_prepare(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.end.i.i62, label %if.end12.disable_rx_l1_crit_edge

if.end12.disable_rx_l1_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_rx_l1

if.end.i.i62:                                     ; preds = %if.end12
  %call1.i.i60 = tail call i32 @clk_enable(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i60)
  %tobool2.not.i.i61 = icmp eq i32 %call1.i.i60, 0
  br i1 %tobool2.not.i.i61, label %if.end16, label %if.then3.i.i63

if.then3.i.i63:                                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %13) #10
  br label %disable_rx_l1

if.end16:                                         ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %is_lane_clks_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_lane_clks_enabled, align 4
  br label %cleanup

disable_rx_l1:                                    ; preds = %if.then3.i.i63, %if.end12.disable_rx_l1_crit_edge
  %retval.0.i.ph.i64 = phi i32 [ %call1.i.i60, %if.then3.i.i63 ], [ %call.i.i58, %if.end12.disable_rx_l1_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i.ph.i64) #13
  %15 = ptrtoint ptr %rx_l1_sync_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_l1_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #10
  tail call void @clk_unprepare(ptr noundef %16) #10
  br label %disable_tx_l0

disable_tx_l0:                                    ; preds = %disable_rx_l1, %ufs_qcom_host_clk_enable.exit57
  %err.0 = phi i32 [ %retval.0.i.ph.i54, %ufs_qcom_host_clk_enable.exit57 ], [ %retval.0.i.ph.i64, %disable_rx_l1 ]
  %17 = ptrtoint ptr %tx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_l0_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #10
  tail call void @clk_unprepare(ptr noundef %18) #10
  br label %disable_rx_l0

disable_rx_l0:                                    ; preds = %disable_tx_l0, %ufs_qcom_host_clk_enable.exit47
  %err.1 = phi i32 [ %retval.0.i.ph.i44, %ufs_qcom_host_clk_enable.exit47 ], [ %err.0, %disable_tx_l0 ]
  %19 = ptrtoint ptr %rx_l0_sync_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_l0_sync_clk, align 4
  tail call void @clk_disable(ptr noundef %20) #10
  tail call void @clk_unprepare(ptr noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_rx_l0, %if.end16, %ufs_qcom_host_clk_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i, %ufs_qcom_host_clk_enable.exit ], [ %err.1, %disable_rx_l0 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_qcom_ice_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_get_local_unipro_ver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_init_pwr_dev_param(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_get_pwr_dev_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_configure_adapt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_qcom_ice_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dump_regs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !192, !194, !196, !197, !198, !199, !201, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__setup_get_android_boot_dev, !1, !"__setup_get_android_boot_dev", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 969, i32 1}
!2 = !{ptr @__initcall__kmod_ufs_qcom__322_1579_ufs_qcom_pltform_init6, !3, !"__initcall__kmod_ufs_qcom__322_1579_ufs_qcom_pltform_init6", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1579, i32 1}
!4 = !{ptr @__exitcall_ufs_qcom_pltform_exit, !3, !"__exitcall_ufs_qcom_pltform_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file323, !6, !"__UNIQUE_ID_file323", i1 false, i1 false}
!6 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1581, i32 1}
!7 = !{ptr @__UNIQUE_ID_license324, !6, !"__UNIQUE_ID_license324", i1 false, i1 false}
!8 = !{ptr @__setup_str_get_android_boot_dev, !1, !"__setup_str_get_android_boot_dev", i1 false, i1 false}
!9 = !{ptr @android_boot_dev, !10, !"android_boot_dev", i1 false, i1 false}
!10 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 961, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1336, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ufs_qcom_testbus_cfg_is_ok._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @ufs_qcom_testbus_cfg_is_ok._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1573, i32 11}
!21 = !{ptr @ufs_qcom_pltform, !22, !"ufs_qcom_pltform", i1 false, i1 false}
!22 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1568, i32 31}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1527, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ufs_qcom_probe._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ufs_qcom_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1495, i32 28}
!30 = !{ptr @ufs_hba_qcom_vops, !31, !"ufs_hba_qcom_vops", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1494, i32 41}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 997, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ufs_qcom_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ufs_qcom_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1006, i32 54}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1009, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ufs_qcom_init._entry.12, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ufs_qcom_init._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1021, i32 3}
!46 = !{ptr @ufs_qcom_init._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ufs_qcom_init._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1030, i32 40}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1038, i32 3}
!52 = !{ptr @ufs_qcom_init._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ufs_qcom_init._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1046, i32 4}
!56 = !{ptr @ufs_qcom_init._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ufs_qcom_init._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1051, i32 52}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1056, i32 4}
!62 = !{ptr @ufs_qcom_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ufs_qcom_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1073, i32 10}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1084, i32 27}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1108, i32 3}
!70 = !{ptr @ufs_qcom_init._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ufs_qcom_init._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ufs_qcom_reset_ops, !73, !"ufs_qcom_reset_ops", i1 false, i1 false}
!73 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 955, i32 39}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 169, i32 35}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 174, i32 35}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 181, i32 36}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 186, i32 36}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 90, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ufs_qcom_host_clk_get._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ufs_qcom_host_clk_get._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ufs_qcom_hosts, !88, !"ufs_qcom_hosts", i1 false, i1 false}
!88 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 40, i32 30}
!89 = !{ptr @ufs_qcom_cfg_timers.pwm_fr_table, !90, !"pwm_fr_table", i1 false, i1 false}
!90 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 402, i32 13}
!91 = !{ptr @ufs_qcom_cfg_timers.hs_fr_table_rA, !92, !"hs_fr_table_rA", i1 false, i1 false}
!92 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 409, i32 13}
!93 = !{ptr @ufs_qcom_cfg_timers.hs_fr_table_rB, !94, !"hs_fr_table_rB", i1 false, i1 false}
!94 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 415, i32 13}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 432, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ufs_qcom_cfg_timers._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ufs_qcom_cfg_timers._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 437, i32 27}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 467, i32 5}
!104 = !{ptr @ufs_qcom_cfg_timers._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ufs_qcom_cfg_timers._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ufs_qcom_cfg_timers._entry.47, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 476, i32 5}
!108 = !{ptr @ufs_qcom_cfg_timers._entry_ptr.48, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 484, i32 4}
!111 = !{ptr @ufs_qcom_cfg_timers._entry.49, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ufs_qcom_cfg_timers._entry_ptr.51, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ufs_qcom_cfg_timers._entry.52, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 492, i32 4}
!115 = !{ptr @ufs_qcom_cfg_timers._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 502, i32 3}
!118 = !{ptr @ufs_qcom_cfg_timers._entry.54, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ufs_qcom_cfg_timers._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 381, i32 3}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ufs_qcom_hce_enable_notify._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @ufs_qcom_hce_enable_notify._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 308, i32 3}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ufs_qcom_power_up_sequence._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ufs_qcom_power_up_sequence._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 317, i32 3}
!132 = !{ptr @ufs_qcom_power_up_sequence._entry.61, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ufs_qcom_power_up_sequence._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 325, i32 3}
!136 = !{ptr @ufs_qcom_power_up_sequence._entry.64, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ufs_qcom_power_up_sequence._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 259, i32 3}
!140 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ufs_qcom_host_reset._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ufs_qcom_host_reset._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 269, i32 3}
!145 = !{ptr @ufs_qcom_host_reset._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ufs_qcom_host_reset._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 283, i32 3}
!149 = !{ptr @ufs_qcom_host_reset._entry.72, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ufs_qcom_host_reset._entry_ptr.74, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 102, i32 3}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ufs_qcom_host_clk_enable._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ufs_qcom_host_clk_enable._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 229, i32 3}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ufs_qcom_check_hibern8._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ufs_qcom_check_hibern8._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 233, i32 3}
!163 = !{ptr @ufs_qcom_check_hibern8._entry.79, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ufs_qcom_check_hibern8._entry_ptr.81, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 545, i32 4}
!167 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ufs_qcom_link_startup_notify._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ufs_qcom_link_startup_notify._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 64, i32 3}
!172 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ufs_qcom_get_connected_tx_lanes._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ufs_qcom_get_connected_tx_lanes._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 715, i32 3}
!177 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ufs_qcom_pwr_change_notify._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @ufs_qcom_pwr_change_notify._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 743, i32 4}
!182 = !{ptr @ufs_qcom_pwr_change_notify._entry.88, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ufs_qcom_pwr_change_notify._entry_ptr.90, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @ufs_qcom_pwr_change_notify._entry.91, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 763, i32 4}
!186 = !{ptr @ufs_qcom_pwr_change_notify._entry_ptr.92, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 629, i32 4}
!189 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ufs_qcom_resume._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @ufs_qcom_resume._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1433, i32 5}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1261, i32 3}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ufs_qcom_print_hw_debug_reg_all._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @ufs_qcom_print_hw_debug_reg_all._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1265, i32 3}
!201 = !{ptr @ufs_qcom_print_hw_debug_reg_all._entry.98, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @ufs_qcom_print_hw_debug_reg_all._entry_ptr.100, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1274, i32 25}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1281, i32 25}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1284, i32 26}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1287, i32 25}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1293, i32 24}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1296, i32 24}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1299, i32 25}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1302, i32 25}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1305, i32 25}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1308, i32 25}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1311, i32 24}
!225 = distinct !{null, !226, !"d", i1 false, i1 false}
!226 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1470, i32 46}
!227 = !{ptr @ufs_qcom_of_match, !228, !"ufs_qcom_of_match", i1 false, i1 false}
!228 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1547, i32 34}
!229 = !{ptr @ufs_qcom_pm_ops, !230, !"ufs_qcom_pm_ops", i1 false, i1 false}
!230 = !{!"../drivers/scsi/ufs/ufs-qcom.c", i32 1561, i32 32}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 6877135}
!241 = !{i64 2156228137}
!242 = !{i64 2156228418}
!243 = !{i64 6876717}
!244 = !{i64 2156380512}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{i64 2156230932, i64 2156231423, i64 2156230969, i64 2156231025, i64 2156231059, i64 2156231083, i64 2156231124, i64 2156231145, i64 2156231173, i64 2156231207}
!247 = !{i64 2156295018}
!248 = !{i8 0, i8 2}
!249 = !{i64 2156346995}
!250 = !{i64 2156232686, i64 2156237238, i64 2156232723, i64 2156232779, i64 2156232813, i64 2156232837, i64 2156232878, i64 2156232899, i64 2156232927, i64 2156232961}
!251 = !{!"auto-init"}
!252 = !{i64 2156306993}
!253 = !{i64 2156319160}
!254 = !{i64 2156320329}
!255 = !{i64 2156320578}
!256 = !{i64 2156376656}
!257 = !{i64 2156376963}
!258 = !{!"branch_weights", i32 2000, i32 1}
!259 = !{i64 2156295459}
!260 = !{i64 2156295771}
!261 = !{i64 2156327826}
!262 = !{i64 2156328177}
!263 = !{i64 2156328591}
!264 = !{i64 2156340309}
!265 = !{i64 2156340720}
!266 = !{i64 2156341208}
!267 = !{i64 2156341605}
!268 = !{i64 2156342059}
