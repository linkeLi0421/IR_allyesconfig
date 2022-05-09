; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-hisi.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-hisi.c"
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
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ufs_hisi_host = type { ptr, ptr, ptr, i64, i8 }
%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ufs_hisi__322_601_ufs_hisi_pltform_init6 = internal global ptr @ufs_hisi_pltform_init, section ".initcall6.init", align 4
@ufs_hisi_pltform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ufs_hisi_probe, ptr @ufs_hisi_remove, ptr @ufshcd_pltfrm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ufs_hisi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_hisi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ufs_hisi_pltform_exit = internal global ptr @ufs_hisi_pltform_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file323 = internal constant [40 x i8] c"ufs_hisi.file=drivers/scsi/ufs/ufs-hisi\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [21 x i8] c"ufs_hisi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [36 x i8] c"ufs_hisi.alias=platform:ufshcd-hisi\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [49 x i8] c"ufs_hisi.description=HiSilicon Hixxxx UFS Driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufshcd-hisi\00", [20 x i8] zeroinitializer }, align 32
@ufs_hisi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-ufs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ufs_hba_hi3660_vops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-ufs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ufs_hba_hi3670_vops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ufs_hisi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufs_hisi_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ufs_hba_hi3660_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.1, ptr @ufs_hi3660_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_hisi_link_startup_notify, ptr @ufs_hisi_pwr_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_hisi_suspend, ptr @ufs_hisi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_hba_hi3670_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.31, ptr @ufs_hi3670_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_hisi_link_startup_notify, ptr @ufs_hisi_pwr_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_hisi_suspend, ptr @ufs_hisi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hi3660\00", [25 x i8] zeroinitializer }, align 32
@ufs_hi3660_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ufs common init fail\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_hi3660_init\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/ufs/ufs-hisi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_hi3660_init._entry_ptr = internal global ptr @ufs_hi3660_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rst\00", [28 x i8] zeroinitializer }, align 32
@ufs_hisi_init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to get reset control\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs_hisi_init_common\00", [43 x i8] zeroinitializer }, align 32
@ufs_hisi_init_common._entry_ptr = internal global ptr @ufs_hisi_init_common._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ufs_hisi_link_startup_pre_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 221, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Warring!!! Unipro VS_mphy_disable is 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ufs_hisi_link_startup_pre_change\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ufs_hisi_link_startup_pre_change._entry_ptr = internal global ptr @ufs_hisi_link_startup_pre_change._entry, section ".printk_index", align 4
@ufs_hisi_link_startup_pre_change._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ufs_hisi_check_hibern8 error\0A\00", [34 x i8] zeroinitializer }, align 32
@ufs_hisi_link_startup_pre_change._entry_ptr.15 = internal global ptr @ufs_hisi_link_startup_pre_change._entry.13, section ".printk_index", align 4
@ufs_hisi_link_startup_pre_change._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.4, i32 244, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WARN: close VS_Mk2ExtnSupport failed\0A\00", [58 x i8] zeroinitializer }, align 32
@ufs_hisi_link_startup_pre_change._entry_ptr.18 = internal global ptr @ufs_hisi_link_startup_pre_change._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ufs_hisi_check_hibern8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unable to get TX_FSM_STATE, err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_hisi_check_hibern8\00", [41 x i8] zeroinitializer }, align 32
@ufs_hisi_check_hibern8._entry_ptr = internal global ptr @ufs_hisi_check_hibern8._entry, section ".printk_index", align 4
@ufs_hisi_check_hibern8._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 61, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: invalid TX_FSM_STATE, lane0 = %d, lane1 = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ufs_hisi_check_hibern8._entry_ptr.23 = internal global ptr @ufs_hisi_check_hibern8._entry.21, section ".printk_index", align 4
@ufs_hisi_pwr_change_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: incoming dev_req_params is NULL\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_hisi_pwr_change_notify\00", [37 x i8] zeroinitializer }, align 32
@ufs_hisi_pwr_change_notify._entry_ptr = internal global ptr @ufs_hisi_pwr_change_notify._entry, section ".printk_index", align 4
@ufs_hisi_pwr_change_notify._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to determine capabilities\0A\00", [58 x i8] zeroinitializer }, align 32
@ufs_hisi_pwr_change_notify._entry_ptr.28 = internal global ptr @ufs_hisi_pwr_change_notify._entry.26, section ".printk_index", align 4
@ufs_hisi_pwr_change_pre_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ufs flash device must set VS_DebugSaveConfigTime 0x10\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufs_hisi_pwr_change_pre_change\00", [33 x i8] zeroinitializer }, align 32
@ufs_hisi_pwr_change_pre_change._entry_ptr = internal global ptr @ufs_hisi_pwr_change_pre_change._entry, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hi3670\00", [25 x i8] zeroinitializer }, align 32
@ufs_hi3670_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.32, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_hi3670_init\00", [16 x i8] zeroinitializer }, align 32
@ufs_hi3670_init._entry_ptr = internal global ptr @ufs_hi3670_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"ufs_hisi_pltform\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 591, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 596, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"ufs_hisi_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 559, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ufs_hisi_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 584, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"ufs_hba_hi3660_vops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 541, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"ufs_hba_hi3670_vops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 550, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 542, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 507, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 480, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 482, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 220, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 227, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 244, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 55, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 60, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 370, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 382, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 324, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 551, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [31 x i8] c"../drivers/scsi/ufs/ufs-hisi.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 526, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ufs_hisi_pltform_exit, ptr @__initcall__kmod_ufs_hisi__322_601_ufs_hisi_pltform_init6, ptr @ufs_hi3660_init._entry, ptr @ufs_hi3660_init._entry_ptr, ptr @ufs_hi3670_init._entry, ptr @ufs_hi3670_init._entry_ptr, ptr @ufs_hisi_check_hibern8._entry, ptr @ufs_hisi_check_hibern8._entry.21, ptr @ufs_hisi_check_hibern8._entry_ptr, ptr @ufs_hisi_check_hibern8._entry_ptr.23, ptr @ufs_hisi_init_common._entry, ptr @ufs_hisi_init_common._entry_ptr, ptr @ufs_hisi_link_startup_pre_change._entry, ptr @ufs_hisi_link_startup_pre_change._entry.13, ptr @ufs_hisi_link_startup_pre_change._entry.16, ptr @ufs_hisi_link_startup_pre_change._entry_ptr, ptr @ufs_hisi_link_startup_pre_change._entry_ptr.15, ptr @ufs_hisi_link_startup_pre_change._entry_ptr.18, ptr @ufs_hisi_pltform_exit, ptr @ufs_hisi_pwr_change_notify._entry, ptr @ufs_hisi_pwr_change_notify._entry.26, ptr @ufs_hisi_pwr_change_notify._entry_ptr, ptr @ufs_hisi_pwr_change_notify._entry_ptr.28, ptr @ufs_hisi_pwr_change_pre_change._entry, ptr @ufs_hisi_pwr_change_pre_change._entry_ptr, ptr @ufs_hisi_pltform, ptr @.str, ptr @ufs_hisi_of_match, ptr @ufs_hisi_pm_ops, ptr @ufs_hba_hi3660_vops, ptr @ufs_hba_hi3670_vops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_pltform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_hi3660_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_hi3670_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hi3660_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_link_startup_pre_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_link_startup_pre_change._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_link_startup_pre_change._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_check_hibern8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_check_hibern8._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_pwr_change_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_pwr_change_notify._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hisi_pwr_change_pre_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hi3670_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_pltform_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ufs_hisi_pltform, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ufs_hisi_pltform_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ufs_hisi_pltform) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @ufs_hisi_of_match, ptr noundef %1) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call1 = tail call i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ufshcd_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_pltfrm_shutdown(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_pltfrm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hi3660_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call fastcc i32 @ufs_hisi_init_common(ptr noundef %hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ufs_hisi_clk_init(ptr noundef %hba)
  tail call fastcc void @ufs_hisi_soc_init(ptr noundef %hba)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_link_startup_notify(ptr noundef %hba, i32 noundef %status) #2 align 64 {
entry:
  %tx_fsm_val_0.i.i = alloca i32, align 4
  %tx_fsm_val_1.i.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !91

do.body4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value.i, align 4, !annotation !93
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -792657920, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i126.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 359268352, i8 noundef zeroext 0, i32 noundef 2, i8 noundef zeroext 0) #5
  %call.i127.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2129395712, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i128.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2128543744, i8 noundef zeroext 0, i32 noundef 45, i8 noundef zeroext 0) #5
  %call.i129.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2128478208, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %caps.i = getelementptr inbounds %struct.ufs_hisi_host, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %caps.i, align 8
  %and.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %ufshcd_get_variant.exit.i.if.end.i_crit_edge, label %if.then.i

ufshcd_get_variant.exit.i.if.end.i_crit_edge:     ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i130.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2128150528, i8 noundef zeroext 0, i32 noundef 152, i8 noundef zeroext 0) #5
  %call.i131.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2128084992, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ufshcd_get_variant.exit.i.if.end.i_crit_edge
  %call.i132.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i133.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146631676, i8 noundef zeroext 0, i32 noundef 88, i8 noundef zeroext 0) #5
  %call.i134.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146631675, i8 noundef zeroext 0, i32 noundef 88, i8 noundef zeroext 0) #5
  %call.i135.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146566140, i8 noundef zeroext 0, i32 noundef 11, i8 noundef zeroext 0) #5
  %call.i136.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146566139, i8 noundef zeroext 0, i32 noundef 11, i8 noundef zeroext 0) #5
  %call.i137.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146893820, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i138.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2146893819, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i139.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i140.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -2129461248, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i141.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %caps.i, align 8
  %and19.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end28.i_crit_edge, label %if.then21.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i142.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9568260, i8 noundef zeroext 0, i32 noundef 10, i8 noundef zeroext 0) #5
  %call.i143.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9568261, i8 noundef zeroext 0, i32 noundef 10, i8 noundef zeroext 0) #5
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %if.end.i.if.end28.i_crit_edge
  %.sink167.i = phi i32 [ 10, %if.then21.i ], [ 7, %if.end.i.if.end28.i_crit_edge ]
  %call.i146.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9371652, i8 noundef zeroext 0, i32 noundef %.sink167.i, i8 noundef zeroext 0) #5
  %call.i147.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9371653, i8 noundef zeroext 0, i32 noundef %.sink167.i, i8 noundef zeroext 0) #5
  %call.i148.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9764868, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i149.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9764869, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i150.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9699332, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i151.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9699333, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i152.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9109508, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i153.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 9109509, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i154.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 983040, i8 noundef zeroext 0, i32 noundef 5, i8 noundef zeroext 0) #5
  %call.i155.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 983041, i8 noundef zeroext 0, i32 noundef 5, i8 noundef zeroext 0) #5
  %call.i156.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i157.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -792657920, ptr noundef nonnull %value.i, i8 noundef zeroext 0) #5
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %if.end28.i.if.end40.i_crit_edge, label %do.end.i

if.end28.i.if.end40.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

do.end.i:                                         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %9) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end.i, %if.end28.i.if.end40.i_crit_edge
  %call.i158.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -792657920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_fsm_val_0.i.i) #5
  %12 = ptrtoint ptr %tx_fsm_val_0.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_fsm_val_0.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_fsm_val_1.i.i) #5
  %13 = ptrtoint ptr %tx_fsm_val_1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_fsm_val_1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %14, 100
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end40.i
  %call.i.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 4259840, ptr noundef nonnull %tx_fsm_val_0.i.i, i8 noundef zeroext 0) #5
  %call.i38.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 4259841, ptr noundef nonnull %tx_fsm_val_1.i.i, i8 noundef zeroext 0) #5
  %or.i.i = or i32 %call.i38.i.i, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i159.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool.not.i159.i, label %lor.lhs.false.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %do.body.i.i
  %15 = ptrtoint ptr %tx_fsm_val_0.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_fsm_val_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %17 = ptrtoint ptr %tx_fsm_val_1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_fsm_val_1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.i.i = icmp eq i32 %18, 1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %19, %add.i.i
  %cmp4.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub5.i.i = sub i32 %add.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.i)
  %cmp6.i.i = icmp slt i32 %sub5.i.i, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %do.end.i.i.if.end11.i.i_crit_edge

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.then7.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i39.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 4259840, ptr noundef nonnull %tx_fsm_val_0.i.i, i8 noundef zeroext 0) #5
  %call.i40.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 4259841, ptr noundef nonnull %tx_fsm_val_1.i.i, i8 noundef zeroext 0) #5
  %or10.i.i = or i32 %call.i40.i.i, %call.i39.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then7.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %err.0.i.i = phi i32 [ %or10.i.i, %if.then7.i.i ], [ %or.i.i, %do.end.i.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool12.not.i.i = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %err.0.i.i) #8
  br label %do.end47.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  %23 = ptrtoint ptr %tx_fsm_val_0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_fsm_val_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp17.not.i.i = icmp eq i32 %24, 1
  br i1 %cmp17.not.i.i, label %lor.lhs.false18.i.i, label %if.else.i.i.if.then20.i.i_crit_edge

if.else.i.i.if.then20.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

lor.lhs.false18.i.i:                              ; preds = %if.else.i.i
  %25 = ptrtoint ptr %tx_fsm_val_1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_fsm_val_1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp19.not.i.i = icmp eq i32 %26, 1
  br i1 %cmp19.not.i.i, label %ufs_hisi_check_hibern8.exit.i, label %lor.lhs.false18.i.i.if.then20.i.i_crit_edge

lor.lhs.false18.i.i.if.then20.i.i_crit_edge:      ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %lor.lhs.false18.i.i.if.then20.i.i_crit_edge, %if.else.i.i.if.then20.i.i_crit_edge
  %dev24.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %27 = ptrtoint ptr %dev24.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24.i.i, align 8
  %29 = ptrtoint ptr %tx_fsm_val_1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_fsm_val_1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %24, i32 noundef %30) #8
  br label %do.end47.i

ufs_hisi_check_hibern8.exit.i:                    ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_fsm_val_1.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_fsm_val_0.i.i) #5
  br label %if.end49.i

do.end47.i:                                       ; preds = %if.then20.i.i, %do.end16.i.i
  %err.1.i.ph.i = phi i32 [ -1, %if.then20.i.i ], [ %err.0.i.i, %do.end16.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_fsm_val_1.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_fsm_val_0.i.i) #5
  %dev48.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %31 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev48.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end47.i, %ufs_hisi_check_hibern8.exit.i
  %err.1.i166.i = phi i32 [ %err.1.i.ph.i, %do.end47.i ], [ 0, %ufs_hisi_check_hibern8.exit.i ]
  %33 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %caps.i, align 8
  %and51.i = and i64 %34, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51.i)
  %tobool52.not.i = icmp eq i64 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body54.i, label %if.end49.i.if.end57.i_crit_edge

if.end49.i.if.end57.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

do.body54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -469762048) #5, !srcloc !95
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.body54.i, %if.end49.i.if.end57.i_crit_edge
  %37 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hba, align 8
  %add.ptr59.i = getelementptr i8, ptr %38, i32 24
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #5, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %40 = and i32 %39, 16580607
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hba, align 8
  %add.ptr67.i = getelementptr i8, ptr %42, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %40) #5, !srcloc !95
  %call.i.i160.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  %call.i161.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -794099712, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  %call.i162.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef -794099712, ptr noundef nonnull %value.i, i8 noundef zeroext 0) #5
  %43 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp71.not.i = icmp eq i32 %44, 0
  br i1 %cmp71.not.i, label %if.end57.i.ufs_hisi_link_startup_pre_change.exit_crit_edge, label %do.end75.i

if.end57.i.ufs_hisi_link_startup_pre_change.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ufs_hisi_link_startup_pre_change.exit

do.end75.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev76.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %45 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev76.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.17) #8
  br label %ufs_hisi_link_startup_pre_change.exit

ufs_hisi_link_startup_pre_change.exit:            ; preds = %do.end75.i, %if.end57.i.ufs_hisi_link_startup_pre_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tobool.not.i.i4 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i4, label %do.body4.i.i5, label %ufs_hisi_link_startup_post_change.exit, !prof !91

do.body4.i.i5:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufs_hisi_link_startup_post_change.exit:           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.i6 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %47 = ptrtoint ptr %priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i.i6, align 8
  %call.i.i7 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541327360, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  %call.i1.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541392896, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  %call.i2.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 541065216, i8 noundef zeroext 0, i32 noundef 9, i8 noundef zeroext 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %ufs_sys_ctrl.i = getelementptr inbounds %struct.ufs_hisi_host, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ufs_sys_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ufs_sys_ctrl.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %52 = and i32 %51, -1056964609
  %53 = ptrtoint ptr %ufs_sys_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ufs_sys_ctrl.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %52) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %ufs_sys_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ufs_sys_ctrl.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %56, i32 92
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %58 = and i32 %57, -16129
  %59 = ptrtoint ptr %ufs_sys_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ufs_sys_ctrl.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %60, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %58) #5, !srcloc !95
  %call.i3.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -795213824, i8 noundef zeroext 0, i32 noundef -2147483648, i8 noundef zeroext 0) #5
  %call.i4.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -795082752, i8 noundef zeroext 0, i32 noundef 5, i8 noundef zeroext 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %ufs_hisi_link_startup_post_change.exit, %ufs_hisi_link_startup_pre_change.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %ufs_hisi_link_startup_post_change.exit ], [ %err.1.i166.i, %ufs_hisi_link_startup_pre_change.exit ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_pwr_change_notify(ptr noundef %hba, i32 noundef %status, ptr noundef %dev_max_params, ptr noundef %dev_req_params) #2 align 64 {
entry:
  %ufs_hisi_cap = alloca %struct.ufs_dev_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ufs_hisi_cap) #5
  %0 = call ptr @memset(ptr %ufs_hisi_cap, i32 255, i32 48)
  %tobool.not = icmp eq ptr %dev_req_params, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #8
  br label %out

if.end:                                           ; preds = %entry
  %3 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %status, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.end.out_crit_edge
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @ufshcd_init_pwr_dev_param(ptr noundef nonnull %ufs_hisi_cap) #5
  %call = call i32 @ufshcd_get_pwr_dev_param(ptr noundef nonnull %ufs_hisi_cap, ptr noundef %dev_max_params, ptr noundef nonnull %dev_req_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #8
  br label %out

if.end7:                                          ; preds = %sw.bb
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !91

do.body4.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %if.end7
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %caps.i = getelementptr inbounds %struct.ufs_hisi_host, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %caps.i, align 8
  %and.i = and i64 %9, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %ufshcd_get_variant.exit.i.if.end.i_crit_edge, label %if.then.i

ufshcd_get_variant.exit.i.if.end.i_crit_edge:     ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794820608, i8 noundef zeroext 0, i32 noundef 19, i8 noundef zeroext 0) #5
  %call.i53.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 357695488, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i54.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 357826560, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i55.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 357957632, i8 noundef zeroext 0, i32 noundef 79, i8 noundef zeroext 0) #5
  %call.i56.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363266048, i8 noundef zeroext 0, i32 noundef 10, i8 noundef zeroext 0) #5
  %call.i57.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363331584, i8 noundef zeroext 0, i32 noundef 10, i8 noundef zeroext 0) #5
  %call.i58.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -796590080, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ufshcd_get_variant.exit.i.if.end.i_crit_edge
  %dev_quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 35
  %10 = ptrtoint ptr %dev_quirks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_quirks.i, align 4
  %and8.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.ufs_hisi_pwr_change_pre_change.exit_crit_edge, label %do.end.i

if.end.i.ufs_hisi_pwr_change_pre_change.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ufs_hisi_pwr_change_pre_change.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  %call.i59.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794820608, i8 noundef zeroext 0, i32 noundef 16, i8 noundef zeroext 0) #5
  %call.i60.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 357957632, i8 noundef zeroext 0, i32 noundef 72, i8 noundef zeroext 0) #5
  br label %ufs_hisi_pwr_change_pre_change.exit

ufs_hisi_pwr_change_pre_change.exit:              ; preds = %do.end.i, %if.end.i.ufs_hisi_pwr_change_pre_change.exit_crit_edge
  %call.i61.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363331584, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #5
  %call.i62.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 358350848, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #5
  %call.i63.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363855872, i8 noundef zeroext 0, i32 noundef 8191, i8 noundef zeroext 0) #5
  %call.i64.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363921408, i8 noundef zeroext 0, i32 noundef 65535, i8 noundef zeroext 0) #5
  %call.i65.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 363986944, i8 noundef zeroext 0, i32 noundef 32767, i8 noundef zeroext 0) #5
  %call.i66.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -801046528, i8 noundef zeroext 0, i32 noundef 8191, i8 noundef zeroext 0) #5
  %call.i67.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -800980992, i8 noundef zeroext 0, i32 noundef 65535, i8 noundef zeroext 0) #5
  %call.i68.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -800915456, i8 noundef zeroext 0, i32 noundef 32767, i8 noundef zeroext 0) #5
  %call.i69.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 364052480, i8 noundef zeroext 0, i32 noundef 8191, i8 noundef zeroext 0) #5
  %call.i70.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 364118016, i8 noundef zeroext 0, i32 noundef 65535, i8 noundef zeroext 0) #5
  %call.i71.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 364183552, i8 noundef zeroext 0, i32 noundef 32767, i8 noundef zeroext 0) #5
  %call.i72.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -800849920, i8 noundef zeroext 0, i32 noundef 8191, i8 noundef zeroext 0) #5
  %call.i73.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -800784384, i8 noundef zeroext 0, i32 noundef 65535, i8 noundef zeroext 0) #5
  %call.i74.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -800718848, i8 noundef zeroext 0, i32 noundef 32767, i8 noundef zeroext 0) #5
  br label %out

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %sw.default, %ufs_hisi_pwr_change_pre_change.exit, %do.end5, %if.end.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %if.end.out_crit_edge ], [ %call, %do.end5 ], [ 0, %ufs_hisi_pwr_change_pre_change.exit ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ufs_hisi_cap) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_suspend(ptr noundef readonly %hba, i32 noundef %pm_op, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !91

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pm_op)
  %cmp1 = icmp eq i32 %pm_op, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end3

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %ufshcd_get_variant.exit
  %in_suspend = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_suspend, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body23, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body23:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %ufs_sys_ctrl = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %7 = and i32 %6, -2
  %8 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr30 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %7) #5, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr35 = getelementptr i8, ptr %12, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 4096) #5, !srcloc !95
  %13 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %in_suspend, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %do.end, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_resume(ptr noundef readonly %hba, i32 noundef %pm_op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !91

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %in_suspend = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_suspend, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %do.body

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %ufs_sys_ctrl = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268439552) #5, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %10 = or i32 %9, 1
  %11 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #5, !srcloc !95
  %13 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %in_suspend, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %ufshcd_get_variant.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_hisi_init_common(ptr noundef %hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hba, ptr %call.i, align 8
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_set_variant.exit, !prof !91

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #5, !srcloc !110
  unreachable

ufshcd_set_variant.exit:                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %priv.i, align 8
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rst = getelementptr inbounds %struct.ufs_hisi_host, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %rst, align 8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 8
  br label %ufshcd_set_variant.exit33

if.end9:                                          ; preds = %ufshcd_set_variant.exit
  %rpm_lvl.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 13
  %7 = ptrtoint ptr %rpm_lvl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rpm_lvl.i, align 4
  %spm_lvl.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 14
  %8 = ptrtoint ptr %spm_lvl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %spm_lvl.i, align 8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.ufs_hba, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 -16
  %call.i29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 1) #5
  %ufs_sys_ctrl.i = getelementptr inbounds %struct.ufs_hisi_host, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ufs_sys_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i29, ptr %ufs_sys_ctrl.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %if.end9.ufshcd_set_variant.exit33_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.ufshcd_set_variant.exit33_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %ufshcd_set_variant.exit33

ufshcd_set_variant.exit33:                        ; preds = %if.end9.ufshcd_set_variant.exit33_crit_edge, %do.end
  %err.0.in = phi ptr [ %6, %do.end ], [ %call.i29, %if.end9.ufshcd_set_variant.exit33_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %priv.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ufshcd_set_variant.exit33, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %ufshcd_set_variant.exit33 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_hisi_clk_init(ptr noundef readonly %hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !91

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %ufs_sys_ctrl = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %5 = and i32 %4, -2
  %6 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !95
  %8 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %ufshcd_get_variant.exit.do.body13_crit_edge, label %if.then

ufshcd_get_variant.exit.do.body13_crit_edge:      ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  br label %do.body13

do.body13:                                        ; preds = %if.then, %ufshcd_get_variant.exit.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 92
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  %16 = and i32 %15, -16777217
  %17 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %16) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %22 = and i32 %21, -257
  %23 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr38 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %22) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr45 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %28 = or i32 %27, 1
  %29 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr50 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %28) #5, !srcloc !95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_hisi_soc_init(ptr noundef readonly %hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !91

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %rst = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 8
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ufshcd_get_variant.exit.do.body_crit_edge, label %if.then

ufshcd_get_variant.exit.do.body_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  br label %do.body

do.body:                                          ; preds = %if.then, %ufshcd_get_variant.exit.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %ufs_sys_ctrl = getelementptr inbounds %struct.ufs_hisi_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #5, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %14 = or i32 %13, 65536
  %15 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %14) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 256) #5, !srcloc !95
  %19 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %22 = and i32 %21, 16777215
  %23 = or i32 %22, 956301312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr38 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %23) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr45 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %29 = and i32 %28, -196609
  %30 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr58 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  %35 = or i32 %34, 1056964608
  %36 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr64 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %35) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr71 = getelementptr i8, ptr %39, i32 92
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %41 = or i32 %40, 16128
  %42 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr77 = getelementptr i8, ptr %43, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %41) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr84 = getelementptr i8, ptr %45, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %47 = or i32 %46, 268435456
  %48 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr90 = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %47) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr97 = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %53 = and i32 %52, -257
  %54 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr103 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %53) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr110 = getelementptr i8, ptr %57, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %59 = and i32 %58, -16777217
  %60 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr116 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %59) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr123 = getelementptr i8, ptr %63, i32 12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  %65 = and i32 %64, -257
  %66 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr129 = getelementptr i8, ptr %67, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %65) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr136 = getelementptr i8, ptr %69, i32 28
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %71 = or i32 %70, 16777216
  %72 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr142 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %71) #5, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr147 = getelementptr i8, ptr %76, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 16777472) #5, !srcloc !95
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %ufs_sys_ctrl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ufs_sys_ctrl, align 4
  %add.ptr152 = getelementptr i8, ptr %78, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 805515267) #5, !srcloc !95
  %79 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rst, align 8
  %cmp.i188 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %do.body.if.end158_crit_edge, label %if.then155

do.body.if.end158_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then155:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call157 = tail call i32 @reset_control_deassert(ptr noundef %80) #5
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %do.body.if.end158_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_get_pwr_dev_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_init_pwr_dev_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hi3670_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call fastcc i32 @ufs_hisi_init_common(ptr noundef %hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ufs_hisi_clk_init(ptr noundef %hba)
  tail call fastcc void @ufs_hisi_soc_init(ptr noundef %hba)
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !91

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #5, !srcloc !92
  unreachable

ufshcd_get_variant.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %caps = getelementptr inbounds %struct.ufs_hisi_host, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %caps, align 8
  %or = or i64 %5, 2
  store i64 %or, ptr %caps, align 8
  br label %cleanup

cleanup:                                          ; preds = %ufshcd_get_variant.exit, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hisi_suspend_prepare(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ufshcd_suspend_prepare(ptr noundef %dev, i1 noundef zeroext false) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_resume_complete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ufshcd_suspend_prepare(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_ufs_hisi__322_601_ufs_hisi_pltform_init6, !1, !"__initcall__kmod_ufs_hisi__322_601_ufs_hisi_pltform_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 601, i32 1}
!2 = !{ptr @__exitcall_ufs_hisi_pltform_exit, !1, !"__exitcall_ufs_hisi_pltform_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file323, !4, !"__UNIQUE_ID_file323", i1 false, i1 false}
!4 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 603, i32 1}
!5 = !{ptr @__UNIQUE_ID_license324, !4, !"__UNIQUE_ID_license324", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias325, !7, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!7 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 604, i32 1}
!8 = !{ptr @__UNIQUE_ID_description326, !9, !"__UNIQUE_ID_description326", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 605, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 596, i32 11}
!12 = !{ptr @ufs_hisi_pltform, !13, !"ufs_hisi_pltform", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 591, i32 31}
!14 = !{ptr @ufs_hisi_of_match, !15, !"ufs_hisi_of_match", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 559, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 542, i32 10}
!18 = !{ptr @ufs_hba_hi3660_vops, !19, !"ufs_hba_hi3660_vops", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 541, i32 41}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 507, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ufs_hi3660_init._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ufs_hi3660_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 480, i32 42}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 482, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ufs_hisi_init_common._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ufs_hisi_init_common._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 220, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ufs_hisi_link_startup_pre_change._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @ufs_hisi_link_startup_pre_change._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 227, i32 3}
!43 = !{ptr @ufs_hisi_link_startup_pre_change._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ufs_hisi_link_startup_pre_change._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 244, i32 3}
!47 = !{ptr @ufs_hisi_link_startup_pre_change._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ufs_hisi_link_startup_pre_change._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 55, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ufs_hisi_check_hibern8._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ufs_hisi_check_hibern8._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 60, i32 3}
!56 = !{ptr @ufs_hisi_check_hibern8._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ufs_hisi_check_hibern8._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 370, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ufs_hisi_pwr_change_notify._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ufs_hisi_pwr_change_notify._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 382, i32 4}
!65 = !{ptr @ufs_hisi_pwr_change_notify._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ufs_hisi_pwr_change_notify._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 324, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ufs_hisi_pwr_change_pre_change._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ufs_hisi_pwr_change_pre_change._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 551, i32 10}
!74 = !{ptr @ufs_hba_hi3670_vops, !75, !"ufs_hba_hi3670_vops", i1 false, i1 false}
!75 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 550, i32 41}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 526, i32 3}
!78 = !{ptr @ufs_hi3670_init._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ufs_hi3670_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ufs_hisi_pm_ops, !81, !"ufs_hisi_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/scsi/ufs/ufs-hisi.c", i32 584, i32 32}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2155700312, i64 2155700803, i64 2155700349, i64 2155700405, i64 2155700439, i64 2155700463, i64 2155700504, i64 2155700525, i64 2155700553, i64 2155700587}
!93 = !{!"auto-init"}
!94 = !{i64 2155769904}
!95 = !{i64 4005331}
!96 = !{i64 4005749}
!97 = !{i64 2155770817}
!98 = !{i64 2155771156}
!99 = !{i64 2155775249}
!100 = !{i64 2155776321}
!101 = !{i64 2155778096}
!102 = !{i64 2155779186}
!103 = !{i8 0, i8 2}
!104 = !{i64 2155789167}
!105 = !{i64 2155790248}
!106 = !{i64 2155791124}
!107 = !{i64 2155791667}
!108 = !{i64 2155794166}
!109 = !{i64 2155795238}
!110 = !{i64 2155698558, i64 2155699049, i64 2155698595, i64 2155698651, i64 2155698685, i64 2155698709, i64 2155698750, i64 2155698771, i64 2155698799, i64 2155698833}
!111 = !{i64 2155719242}
!112 = !{i64 2155720323}
!113 = !{i64 2155720953}
!114 = !{i64 2155723993}
!115 = !{i64 2155725071}
!116 = !{i64 2155726834}
!117 = !{i64 2155727915}
!118 = !{i64 2155729663}
!119 = !{i64 2155730735}
!120 = !{i64 2155732479}
!121 = !{i64 2155733548}
!122 = !{i64 2155735834}
!123 = !{i64 2155736903}
!124 = !{i64 2155737259}
!125 = !{i64 2155738113}
!126 = !{i64 2155738430}
!127 = !{i64 2155740385}
!128 = !{i64 2155741469}
!129 = !{i64 2155743205}
!130 = !{i64 2155744268}
!131 = !{i64 2155746028}
!132 = !{i64 2155747109}
!133 = !{i64 2155748853}
!134 = !{i64 2155749922}
!135 = !{i64 2155751685}
!136 = !{i64 2155752766}
!137 = !{i64 2155754525}
!138 = !{i64 2155755603}
!139 = !{i64 2155757366}
!140 = !{i64 2155758447}
!141 = !{i64 2155760191}
!142 = !{i64 2155761260}
!143 = !{i64 2155762918}
!144 = !{i64 2155763488}
