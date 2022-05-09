; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufshcd-pci.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufshcd-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.86, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.86 = type { ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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
%struct.intel_host = type { %struct.ufs_host, i32, i32, i32, ptr, ptr }
%struct.ufs_host = type { ptr }

@__initcall__kmod_ufshcd_pci__327_598_ufshcd_pci_driver_init6 = internal global ptr @ufshcd_pci_driver_init, section ".initcall6.init", align 4
@ufshcd_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @ufshcd_pci_tbl, ptr @ufshcd_pci_probe, ptr @ufshcd_pci_remove, ptr null, ptr null, ptr @ufshcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ufshcd_pci_driver_exit = internal global ptr @ufshcd_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author328 = internal constant [61 x i8] c"ufshcd_pci.author=Santosh Yaragnavi <santosh.sy@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author329 = internal constant [60 x i8] c"ufshcd_pci.author=Vinayak Holikatti <h.vinayak@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [59 x i8] c"ufshcd_pci.description=UFS host controller PCI glue driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [44 x i8] c"ufshcd_pci.file=drivers/scsi/ufs/ufshcd-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [23 x i8] c"ufshcd_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version333 = internal constant [23 x i8] c"ufshcd_pci.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufshcd_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ufshcd\00", [25 x i8] zeroinitializer }, align 32
@ufshcd_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 5197, i32 49164, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40442, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_cnl_hba_vops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19265, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_ehl_hba_vops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19267, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_ehl_hba_vops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39162, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_lkf_hba_vops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20991, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_adl_hba_vops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 21759, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ufs_intel_adl_hba_vops to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ufshcd_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufshcd_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ufs_intel_cnl_hba_vops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.4, ptr @ufs_intel_common_init, ptr @ufs_intel_common_exit, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_link_startup_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_intel_ehl_hba_vops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.4, ptr @ufs_intel_ehl_init, ptr @ufs_intel_common_exit, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_link_startup_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_intel_lkf_hba_vops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.4, ptr @ufs_intel_lkf_init, ptr @ufs_intel_common_exit, ptr null, ptr null, ptr null, ptr @ufs_intel_hce_enable_notify, ptr @ufs_intel_link_startup_notify, ptr @ufs_intel_lkf_pwr_change_notify, ptr null, ptr null, ptr null, ptr @ufs_intel_lkf_apply_dev_quirks, ptr null, ptr null, ptr @ufs_intel_resume, ptr null, ptr null, ptr @ufs_intel_device_reset, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_intel_adl_hba_vops = internal global { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.4, ptr @ufs_intel_adl_init, ptr @ufs_intel_common_exit, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_link_startup_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_intel_resume, ptr null, ptr null, ptr @ufs_intel_device_reset, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel-pci\00", [22 x i8] zeroinitializer }, align 32
@ufs_intel_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 352, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to get reset GPIO, error %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_intel_common_init\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/ufs/ufshcd-pci.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_intel_common_init._entry_ptr = internal global ptr @ufs_intel_common_init._entry, section ".printk_index", align 4
@intel_dsm_init.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel_dsm_init\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSM fns %#x, error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active_ltr\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idle_ltr\00", [23 x i8] zeroinitializer }, align 32
@ufs_intel_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 380, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: hibern8 exit failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs_intel_resume\00", [47 x i8] zeroinitializer }, align 32
@ufs_intel_resume._entry_ptr = internal global ptr @ufs_intel_resume._entry, section ".printk_index", align 4
@ufs_intel_set_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 141, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Setting %u lanes, err = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_intel_set_lanes\00", [44 x i8] zeroinitializer }, align 32
@ufs_intel_set_lanes._entry_ptr = internal global ptr @ufs_intel_set_lanes._entry, section ".printk_index", align 4
@ufs_intel_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 311, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: DSM error %d result %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_intel_device_reset\00", [41 x i8] zeroinitializer }, align 32
@ufs_intel_device_reset._entry_ptr = internal global ptr @ufs_intel_device_reset._entry, section ".printk_index", align 4
@ufshcd_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 521, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcim_enable_device failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufshcd_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@ufshcd_pci_probe._entry_ptr = internal global ptr @ufshcd_pci_probe._entry, section ".printk_index", align 4
@ufshcd_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 529, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"request and iomap failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ufshcd_pci_probe._entry_ptr.25 = internal global ptr @ufshcd_pci_probe._entry.23, section ".printk_index", align 4
@ufshcd_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.7, i32 537, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Allocation failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ufshcd_pci_probe._entry_ptr.28 = internal global ptr @ufshcd_pci_probe._entry.26, section ".printk_index", align 4
@ufshcd_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.7, i32 545, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ufshcd_pci_probe._entry_ptr.31 = internal global ptr @ufshcd_pci_probe._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"ufshcd_pci_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 587, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 604, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 588, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"ufshcd_pci_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 574, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ufshcd_pci_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 560, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"ufs_intel_cnl_hba_vops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 431, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"ufs_intel_ehl_hba_vops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 439, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"ufs_intel_lkf_hba_vops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 447, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"ufs_intel_adl_hba_vops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 459, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 432, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 351, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 84, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 330, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 287, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 288, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 379, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 140, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 310, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 521, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 529, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 537, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [33 x i8] c"../drivers/scsi/ufs/ufshcd-pci.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 545, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__UNIQUE_ID_version333, ptr @__exitcall_ufshcd_pci_driver_exit, ptr @__initcall__kmod_ufshcd_pci__327_598_ufshcd_pci_driver_init6, ptr @__modver_attr, ptr @ufs_intel_common_init._entry, ptr @ufs_intel_common_init._entry_ptr, ptr @ufs_intel_device_reset._entry, ptr @ufs_intel_device_reset._entry_ptr, ptr @ufs_intel_resume._entry, ptr @ufs_intel_resume._entry_ptr, ptr @ufs_intel_set_lanes._entry, ptr @ufs_intel_set_lanes._entry_ptr, ptr @ufshcd_pci_driver_exit, ptr @ufshcd_pci_probe._entry, ptr @ufshcd_pci_probe._entry.23, ptr @ufshcd_pci_probe._entry.26, ptr @ufshcd_pci_probe._entry.29, ptr @ufshcd_pci_probe._entry_ptr, ptr @ufshcd_pci_probe._entry_ptr.25, ptr @ufshcd_pci_probe._entry_ptr.28, ptr @ufshcd_pci_probe._entry_ptr.31, ptr @ufshcd_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ufshcd_pci_tbl, ptr @ufshcd_pci_pm_ops, ptr @ufs_intel_cnl_hba_vops, ptr @ufs_intel_ehl_hba_vops, ptr @ufs_intel_lkf_hba_vops, ptr @ufs_intel_adl_hba_vops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_cnl_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_ehl_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_lkf_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_adl_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_set_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_intel_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ufshcd_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ufshcd_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ufshcd_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ufshcd_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufshcd_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %hba = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hba) #8
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hba, align 4, !annotation !97
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call1 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %1 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call10 = call i32 @ufshcd_alloc_host(ptr noundef %dev9, ptr noundef nonnull %hba) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba, align 4
  %vops = getelementptr inbounds %struct.ufs_hba, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %vops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %vops, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call18 = call i32 @ufshcd_init(ptr noundef %7, ptr noundef %2, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.30) #11
  %11 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hba, align 4
  call void @ufshcd_dealloc_host(ptr noundef %12) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !98

do.body4.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

ufshcd_get_variant.exit:                          ; preds = %if.end25
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %14, i32 0, i32 30
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %tobool27.not = icmp eq ptr %16, null
  br i1 %tobool27.not, label %ufshcd_get_variant.exit.if.end31_crit_edge, label %land.lhs.true

ufshcd_get_variant.exit.if.end31_crit_edge:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %ufshcd_get_variant.exit
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %land.lhs.true.if.end31_crit_edge, label %if.then29

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void %18(ptr noundef nonnull %14) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true.if.end31_crit_edge, %ufshcd_get_variant.exit.if.end31_crit_edge
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end31.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end31.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end31.pm_runtime_put_noidle.exit_crit_edge
  call void @pm_runtime_allow(ptr noundef %dev9) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end23, %do.end15, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end5 ], [ %call10, %do.end15 ], [ %call18, %do.end23 ], [ 0, %pm_runtime_put_noidle.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hba) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshcd_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev) #8
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !103
  tail call void @ufshcd_remove(ptr noundef %1) #8
  tail call void @ufshcd_dealloc_host(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshcd_pci_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ufshcd_shutdown(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_common_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %or = or i32 %1, 64
  store i32 %or, ptr %caps, align 8
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_set_variant.exit, !prof !98

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

ufshcd_set_variant.exit:                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %priv.i, align 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_dsm_init.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufs_intel_common_init, %if.then.i)) #8
          to label %intel_dsm_init.exit [label %if.then.i], !srcloc !105

if.then.i:                                        ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dsm_fns.i = getelementptr inbounds %struct.intel_host, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dsm_fns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dsm_fns.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_dsm_init.__UNIQUE_ID_ddebug326, ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef -95) #8
  br label %intel_dsm_init.exit

intel_dsm_init.exit:                              ; preds = %if.then.i, %ufshcd_set_variant.exit
  %dsm_fns = getelementptr inbounds %struct.intel_host, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dsm_fns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dsm_fns, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %vops9 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 28
  %11 = ptrtoint ptr %vops9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vops9, align 8
  %device_reset10 = getelementptr inbounds %struct.ufs_hba_variant_ops, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %device_reset10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_reset10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %intel_dsm_init.exit
  br i1 %tobool11.not, label %if.then3.if.end31_crit_edge, label %if.then5

if.then3.if.end31_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps, align 8
  %or7 = or i32 %16, 1024
  store i32 %or7, ptr %caps, align 8
  br label %if.end31

if.else:                                          ; preds = %intel_dsm_init.exit
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %call.i53 = tail call ptr @devm_gpiod_get_optional(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.intel_host, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i53, ptr %reset_gpio, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge
  %reset_gpio16 = getelementptr inbounds %struct.intel_host, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %reset_gpio16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_gpio16, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %24) #11
  %25 = ptrtoint ptr %reset_gpio16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %reset_gpio16, align 4
  br label %if.end31

if.end23:                                         ; preds = %if.end15
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %21, i32 noundef 0) #8
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps, align 8
  %or29 = or i32 %27, 1024
  store i32 %or29, ptr %caps, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge, %if.end23.thread, %if.then5, %if.then3.if.end31_crit_edge
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %set_latency_tolerance.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 27
  %30 = ptrtoint ptr %set_latency_tolerance.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @intel_ltr_set, ptr %set_latency_tolerance.i, align 4
  %call.i54 = tail call i32 @dev_pm_qos_expose_latency_tolerance(ptr noundef %29) #8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.intel_add_debugfs.exit_crit_edge

if.end31.intel_add_debugfs.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %intel_add_debugfs.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %intel_add_debugfs.exit

intel_add_debugfs.exit:                           ; preds = %if.end.i.i, %if.end31.intel_add_debugfs.exit_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.end31.intel_add_debugfs.exit_crit_edge ]
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef null) #8
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 8
  %39 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hba, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2052
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %active_ltr.i.i = getelementptr inbounds %struct.intel_host, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %active_ltr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %active_ltr.i.i, align 4
  %44 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hba, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %45, i32 2056
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #8, !srcloc !106
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %idle_ltr.i.i = getelementptr inbounds %struct.intel_host, ptr %38, i32 0, i32 3
  %48 = ptrtoint ptr %idle_ltr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %idle_ltr.i.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.intel_host, ptr %38, i32 0, i32 4
  %49 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1.i, ptr %debugfs_root.i, align 4
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %active_ltr.i.i) #8
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %idle_ltr.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %intel_add_debugfs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %intel_add_debugfs.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_intel_common_exit(ptr noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %intel_remove_debugfs.exit, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

intel_remove_debugfs.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %debugfs_root.i = getelementptr inbounds %struct.intel_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void @dev_pm_qos_hide_latency_tolerance(ptr noundef %5) #8
  %set_latency_tolerance.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 27
  %6 = ptrtoint ptr %set_latency_tolerance.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %set_latency_tolerance.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_link_startup_notify(ptr noundef %hba, i32 noundef %status) #2 align 64 {
entry:
  %lcc_enable.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cond = icmp eq i32 %status, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcc_enable.i) #8
  %0 = ptrtoint ptr %lcc_enable.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lcc_enable.i, align 4
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 358481920, ptr noundef nonnull %lcc_enable.i, i8 noundef zeroext 0) #8
  %1 = ptrtoint ptr %lcc_enable.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lcc_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %sw.bb.ufs_intel_disable_lcc.exit_crit_edge, label %if.then.i

sw.bb.ufs_intel_disable_lcc.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufs_intel_disable_lcc.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #8
  br label %ufs_intel_disable_lcc.exit

ufs_intel_disable_lcc.exit:                       ; preds = %if.then.i, %sw.bb.ufs_intel_disable_lcc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcc_enable.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %ufs_intel_disable_lcc.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_resume(ptr noundef %hba, i32 noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @ufshcd_uic_hibern8_exit(ptr noundef %hba) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %storemerge = phi i32 [ 0, %do.end ], [ 1, %if.then.if.end_crit_edge ]
  %4 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %uic_link_state, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_ltr_set(ptr noundef %dev, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !98

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 2052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %val)
  %8 = icmp ugt i32 %val, 2147483646
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %7, -32769
  br label %if.end18

if.else:                                          ; preds = %ufshcd_get_variant.exit
  %or = and i32 %7, -36864
  %and6 = or i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %val)
  %cmp8 = icmp ugt i32 %val, 1023
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %shr51 = lshr i32 %val, 5
  %9 = tail call i32 @llvm.umin.i32(i32 %shr51, i32 1023)
  %or12 = or i32 %9, %and6
  %or13 = or i32 %or12, 3072
  br label %if.end18

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = or i32 %and6, %val
  %or16 = or i32 %or15, 2048
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then9, %if.then
  %ltr.0 = phi i32 [ %and, %if.then ], [ %or13, %if.then9 ], [ %or16, %if.else14 ]
  %active_ltr = getelementptr inbounds %struct.intel_host, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %active_ltr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_ltr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ltr.0, i32 %11)
  %cmp19 = icmp eq i32 %ltr.0, %11
  br i1 %cmp19, label %if.end18.out_crit_edge, label %intel_cache_ltr.exit

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

intel_cache_ltr.exit:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %ltr.0)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr23 = getelementptr i8, ptr %14, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #8, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr28 = getelementptr i8, ptr %16, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %12) #8, !srcloc !111
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 2052
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %active_ltr.i = getelementptr inbounds %struct.intel_host, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %active_ltr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %active_ltr.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr6.i = getelementptr i8, ptr %25, i32 2056
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !106
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %idle_ltr.i = getelementptr inbounds %struct.intel_host, ptr %18, i32 0, i32 3
  %28 = ptrtoint ptr %idle_ltr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %idle_ltr.i, align 4
  br label %out

out:                                              ; preds = %intel_cache_ltr.exit, %if.end18.out_crit_edge
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_tolerance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_hide_latency_tolerance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_uic_hibern8_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_ehl_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, 2048
  store i32 %or, ptr %quirks, align 8
  %call = tail call i32 @ufs_intel_common_init(ptr noundef %hba)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_lkf_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nop_out_timeout = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 65
  %0 = ptrtoint ptr %nop_out_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 200, ptr %nop_out_timeout, align 8
  %quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks, align 8
  %or = or i32 %2, 2048
  store i32 %or, ptr %quirks, align 8
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 8
  %or1 = or i32 %4, 256
  store i32 %or1, ptr %caps, align 8
  %call = tail call i32 @ufs_intel_common_init(ptr noundef %hba)
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !98

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ufs_intel_lkf_late_init, ptr %6, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_hce_enable_notify(ptr nocapture noundef readonly %hba, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %5 = or i32 %4, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !111
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_lkf_pwr_change_notify(ptr noundef %hba, i32 noundef %status, ptr nocapture noundef readonly %dev_max_params, ptr nocapture noundef %dev_req_params) #2 align 64 {
entry:
  %pwr_info.i = alloca %struct.ufs_pa_layer_attr, align 4
  %peer_granularity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pwr_rx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max_params, i32 0, i32 4
  %1 = ptrtoint ptr %pwr_rx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pwr_rx.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %2, label %sw.bb.if.end_crit_edge [
    i32 1, label %sw.bb.ufshcd_is_hs_mode.exit_crit_edge
    i32 4, label %sw.bb.ufshcd_is_hs_mode.exit_crit_edge22
  ]

sw.bb.ufshcd_is_hs_mode.exit_crit_edge22:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufshcd_is_hs_mode.exit

sw.bb.ufshcd_is_hs_mode.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufshcd_is_hs_mode.exit

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ufshcd_is_hs_mode.exit:                           ; preds = %sw.bb.ufshcd_is_hs_mode.exit_crit_edge, %sw.bb.ufshcd_is_hs_mode.exit_crit_edge22
  %pwr_tx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_max_params, i32 0, i32 5
  %4 = ptrtoint ptr %pwr_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwr_tx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %ufshcd_is_hs_mode.exit.if.end_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge23
  ]

ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge23: ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge:   ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

ufshcd_is_hs_mode.exit.if.end_crit_edge:          ; preds = %ufshcd_is_hs_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge, %ufshcd_is_hs_mode.exit.land.lhs.true_crit_edge23
  %lane_rx = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 2
  %7 = ptrtoint ptr %lane_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lane_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %lane_tx = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72, i32 3
  %9 = ptrtoint ptr %lane_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lane_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.not = icmp eq i32 %10, 2
  br i1 %cmp2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pwr_info.i) #8
  %11 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %pwr_info.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %pwr_info.i, i32 0, i32 3
  %pwr_info1.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 72
  %13 = call ptr @memcpy(ptr %pwr_info.i, ptr %pwr_info1.i, i32 28)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %11, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %12, align 4
  %call.i = call i32 @ufshcd_config_pwr_mode(ptr noundef %hba, ptr noundef nonnull %pwr_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.ufs_intel_set_lanes.exit_crit_edge, label %do.end.i

if.then.ufs_intel_set_lanes.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufs_intel_set_lanes.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %call.i) #11
  br label %ufs_intel_set_lanes.exit

ufs_intel_set_lanes.exit:                         ; preds = %do.end.i, %if.then.ufs_intel_set_lanes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pwr_info.i) #8
  br label %if.end

if.end:                                           ; preds = %ufs_intel_set_lanes.exit, %lor.lhs.false.if.end_crit_edge, %ufshcd_is_hs_mode.exit.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %18 = call ptr @memcpy(ptr %dev_req_params, ptr %dev_max_params, i32 28)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %pwr_rx.i14 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 4
  %19 = ptrtoint ptr %pwr_rx.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwr_rx.i14, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %20, label %sw.bb4.sw.epilog_crit_edge [
    i32 1, label %sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge
    i32 4, label %sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge24
  ]

sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge24:      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufshcd_is_hs_mode.exit20

sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufshcd_is_hs_mode.exit20

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

ufshcd_is_hs_mode.exit20:                         ; preds = %sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge, %sw.bb4.ufshcd_is_hs_mode.exit20_crit_edge24
  %pwr_tx.i15 = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 5
  %22 = ptrtoint ptr %pwr_tx.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pwr_tx.i15, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %23, label %ufshcd_is_hs_mode.exit20.sw.epilog_crit_edge [
    i32 4, label %ufshcd_is_hs_mode.exit20.if.then6_crit_edge
    i32 1, label %ufshcd_is_hs_mode.exit20.if.then6_crit_edge25
  ]

ufshcd_is_hs_mode.exit20.if.then6_crit_edge25:    ; preds = %ufshcd_is_hs_mode.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

ufshcd_is_hs_mode.exit20.if.then6_crit_edge:      ; preds = %ufshcd_is_hs_mode.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

ufshcd_is_hs_mode.exit20.sw.epilog_crit_edge:     ; preds = %ufshcd_is_hs_mode.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %ufshcd_is_hs_mode.exit20.if.then6_crit_edge, %ufshcd_is_hs_mode.exit20.if.then6_crit_edge25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer_granularity) #8
  %25 = ptrtoint ptr %peer_granularity to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %peer_granularity, align 4, !annotation !97
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #8
  %call.i21 = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 363462656, ptr noundef nonnull %peer_granularity, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer_granularity) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %ufshcd_is_hs_mode.exit20.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i21, %if.then6 ], [ 0, %ufshcd_is_hs_mode.exit20.sw.epilog_crit_edge ], [ 0, %if.end ], [ 0, %sw.bb4.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_lkf_apply_dev_quirks(ptr noundef %hba) #2 align 64 {
entry:
  %granularity = alloca i32, align 4
  %peer_granularity = alloca i32, align 4
  %pa_tactivate = alloca i32, align 4
  %peer_pa_tactivate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %granularity) #8
  %0 = ptrtoint ptr %granularity to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %granularity, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer_granularity) #8
  %1 = ptrtoint ptr %peer_granularity to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %peer_granularity, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa_tactivate) #8
  %2 = ptrtoint ptr %pa_tactivate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pa_tactivate, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer_pa_tactivate) #8
  %3 = ptrtoint ptr %peer_pa_tactivate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %peer_pa_tactivate, align 4, !annotation !97
  %call.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 363462656, ptr noundef nonnull %granularity, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call.i24 = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 363462656, ptr noundef nonnull %peer_granularity, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool2.not = icmp eq i32 %call.i24, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %call.i25 = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 363331584, ptr noundef nonnull %pa_tactivate, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool6.not = icmp eq i32 %call.i25, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %call.i26 = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef 363331584, ptr noundef nonnull %peer_pa_tactivate, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool10.not = icmp eq i32 %call.i26, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %granularity, align 4
  %6 = ptrtoint ptr %peer_granularity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer_granularity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then13, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pa_tactivate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pa_tactivate, align 4
  %add = add i32 %9, 2
  %call.i27 = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef 363331584, i8 noundef zeroext 0, i32 noundef %add, i8 noundef zeroext 1) #8
  br label %out

out:                                              ; preds = %if.then13, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call.i24, %if.end.out_crit_edge ], [ %call.i25, %if.end4.out_crit_edge ], [ %call.i26, %if.end8.out_crit_edge ], [ %call.i27, %if.then13 ], [ 0, %if.end12.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer_pa_tactivate) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa_tactivate) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer_granularity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %granularity) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_device_reset(ptr noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !98

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #8, !srcloc !99
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dsm_fns = getelementptr inbounds %struct.intel_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsm_fns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsm_fns, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef -95, i32 noundef 0) #11
  br label %cleanup

if.end9:                                          ; preds = %ufshcd_get_variant.exit
  %reset_gpio = getelementptr inbounds %struct.intel_host, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #8
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %if.end12 ], [ -95, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ufs_intel_lkf_late_init(ptr nocapture noundef %hba) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 5, i32 6
  %2 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_config_pwr_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_intel_adl_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nop_out_timeout = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 65
  %0 = ptrtoint ptr %nop_out_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 200, ptr %nop_out_timeout, align 8
  %quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks, align 8
  %or = or i32 %2, 2048
  store i32 %or, ptr %quirks, align 8
  %call = tail call i32 @ufs_intel_common_init(ptr noundef %hba)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_alloc_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_dealloc_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_suspend_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_resume_complete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufshcd_pci_restore(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %uic_link_state, align 8
  %call1 = tail call i32 @ufshcd_system_resume(ptr noundef %dev) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ufshcd_pci__327_598_ufshcd_pci_driver_init6, !1, !"__initcall__kmod_ufshcd_pci__327_598_ufshcd_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 598, i32 1}
!2 = !{ptr @__exitcall_ufshcd_pci_driver_exit, !1, !"__exitcall_ufshcd_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author328, !4, !"__UNIQUE_ID_author328", i1 false, i1 false}
!4 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 600, i32 1}
!5 = !{ptr @__UNIQUE_ID_author329, !6, !"__UNIQUE_ID_author329", i1 false, i1 false}
!6 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 601, i32 1}
!7 = !{ptr @__UNIQUE_ID_description330, !8, !"__UNIQUE_ID_description330", i1 false, i1 false}
!8 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 602, i32 1}
!9 = !{ptr @__UNIQUE_ID_file331, !10, !"__UNIQUE_ID_file331", i1 false, i1 false}
!10 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 603, i32 1}
!11 = !{ptr @__UNIQUE_ID_license332, !10, !"__UNIQUE_ID_license332", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version333, !13, !"__UNIQUE_ID_version333", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 604, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 588, i32 10}
!20 = !{ptr @ufshcd_pci_driver, !21, !"ufshcd_pci_driver", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 587, i32 26}
!22 = !{ptr @ufshcd_pci_tbl, !23, !"ufshcd_pci_tbl", i1 false, i1 false}
!23 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 574, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 432, i32 28}
!26 = !{ptr @ufs_intel_cnl_hba_vops, !27, !"ufs_intel_cnl_hba_vops", i1 false, i1 false}
!27 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 431, i32 35}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 351, i32 4}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ufs_intel_common_init._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ufs_intel_common_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 84, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @intel_dsm_init.__UNIQUE_ID_ddebug326, !37, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!40 = distinct !{null, !41, !"intel_dsm_guid", i1 false, i1 false}
!41 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 40, i32 21}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 330, i32 38}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 287, i32 21}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 288, i32 21}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 379, i32 4}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ufs_intel_resume._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ufs_intel_resume._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ufs_intel_ehl_hba_vops, !54, !"ufs_intel_ehl_hba_vops", i1 false, i1 false}
!54 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 439, i32 35}
!55 = !{ptr @ufs_intel_lkf_hba_vops, !56, !"ufs_intel_lkf_hba_vops", i1 false, i1 false}
!56 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 447, i32 35}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 140, i32 3}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ufs_intel_set_lanes._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ufs_intel_set_lanes._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 310, i32 4}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ufs_intel_device_reset._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ufs_intel_device_reset._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ufs_intel_adl_hba_vops, !68, !"ufs_intel_adl_hba_vops", i1 false, i1 false}
!68 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 459, i32 35}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 521, i32 3}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ufshcd_pci_probe._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ufshcd_pci_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 529, i32 3}
!76 = !{ptr @ufshcd_pci_probe._entry.23, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ufshcd_pci_probe._entry_ptr.25, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 537, i32 3}
!80 = !{ptr @ufshcd_pci_probe._entry.26, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ufshcd_pci_probe._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 545, i32 3}
!84 = !{ptr @ufshcd_pci_probe._entry.29, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ufshcd_pci_probe._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @ufshcd_pci_pm_ops, !87, !"ufshcd_pci_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/scsi/ufs/ufshcd-pci.c", i32 560, i32 32}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2155538323, i64 2155538814, i64 2155538360, i64 2155538416, i64 2155538450, i64 2155538474, i64 2155538515, i64 2155538536, i64 2155538564, i64 2155538598}
!100 = !{i64 2148396183}
!101 = !{i64 881803, i64 881828, i64 881850, i64 881866, i64 881878, i64 881898, i64 881922, i64 881938, i64 881950}
!102 = !{i64 2148396371}
!103 = !{i64 2148396764, i64 2148396790, i64 2148396819, i64 2148396853, i64 2148396884, i64 2148396907}
!104 = !{i64 2155536569, i64 2155537060, i64 2155536606, i64 2155536662, i64 2155536696, i64 2155536720, i64 2155536761, i64 2155536782, i64 2155536810, i64 2155536844}
!105 = !{i64 2149010141, i64 2149010146, i64 2149010159, i64 2149010203, i64 2149010237, i64 2149010258}
!106 = !{i64 4673064}
!107 = !{i64 2156504216}
!108 = !{i64 2156504728}
!109 = !{i64 2156505240}
!110 = !{i64 2156509082}
!111 = !{i64 4672646}
!112 = !{i64 2156509487}
!113 = !{i64 2156500746}
!114 = !{i64 2156501067}
