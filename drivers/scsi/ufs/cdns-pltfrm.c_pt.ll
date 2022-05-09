; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/cdns-pltfrm.c_pt.bc'
source_filename = "../drivers/scsi/ufs/cdns-pltfrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ufs_clk_info = type { %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }

@__initcall__kmod_cdns_pltfrm__322_338_cdns_ufs_pltfrm_driver_init6 = internal global ptr @cdns_ufs_pltfrm_driver_init, section ".initcall6.init", align 4
@cdns_ufs_pltfrm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_ufs_pltfrm_probe, ptr @cdns_ufs_pltfrm_remove, ptr @ufshcd_pltfrm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_ufs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_ufs_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_ufs_pltfrm_driver_exit = internal global ptr @cdns_ufs_pltfrm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [48 x i8] c"cdns_pltfrm.author=Jan Kotas <jank@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [68 x i8] c"cdns_pltfrm.description=Cadence UFS host controller platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [46 x i8] c"cdns_pltfrm.file=drivers/scsi/ufs/cdns-pltfrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [27 x i8] c"cdns_pltfrm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version327 = internal constant [24 x i8] c"cdns_pltfrm.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns_pltfrm\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns-ufshcd\00", [20 x i8] zeroinitializer }, align 32
@cdns_ufs_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,ufshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_ufs_pltfm_hba_vops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,ufshc-m31-16nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_ufs_m31_16nm_pltfm_hba_vops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_ufs_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufshcd_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_ufs_pltfrm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 301, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufshcd_pltfrm_init() failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_ufs_pltfrm_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/ufs/cdns-pltfrm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_ufs_pltfrm_probe._entry_ptr = internal global ptr @cdns_ufs_pltfrm_probe._entry, section ".printk_index", align 4
@cdns_ufs_pltfm_hba_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.9, ptr @cdns_ufs_init, ptr null, ptr null, ptr null, ptr null, ptr @cdns_ufs_hce_enable_notify, ptr @cdns_ufs_link_startup_notify, ptr null, ptr null, ptr null, ptr @cdns_ufs_hibern8_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cdns_ufs_m31_16nm_pltfm_hba_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.9, ptr @cdns_ufs_init, ptr null, ptr null, ptr null, ptr null, ptr @cdns_ufs_hce_enable_notify, ptr @cdns_ufs_link_startup_notify, ptr null, ptr null, ptr null, ptr @cdns_ufs_hibern8_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_ufs_m31_16nm_phy_initialization, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns-ufs-pltfm\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@cdns_ufs_set_hclkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 128, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to find core_clk rate\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_ufs_set_hclkdiv\00", [43 x i8] zeroinitializer }, align 32
@cdns_ufs_set_hclkdiv._entry_ptr = internal global ptr @cdns_ufs_set_hclkdiv._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"cdns_ufs_pltfrm_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 327, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 343, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 332, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"cdns_ufs_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 268, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"cdns_ufs_dev_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 320, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 301, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"cdns_ufs_pltfm_hba_vops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 251, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"cdns_ufs_m31_16nm_pltfm_hba_vops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 259, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 252, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 122, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [34 x i8] c"../drivers/scsi/ufs/cdns-pltfrm.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 127, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__UNIQUE_ID_version327, ptr @__exitcall_cdns_ufs_pltfrm_driver_exit, ptr @__initcall__kmod_cdns_pltfrm__322_338_cdns_ufs_pltfrm_driver_init6, ptr @__modver_attr, ptr @cdns_ufs_pltfrm_driver_exit, ptr @cdns_ufs_pltfrm_probe._entry, ptr @cdns_ufs_pltfrm_probe._entry_ptr, ptr @cdns_ufs_set_hclkdiv._entry, ptr @cdns_ufs_set_hclkdiv._entry_ptr, ptr @cdns_ufs_pltfrm_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cdns_ufs_of_match, ptr @cdns_ufs_dev_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cdns_ufs_pltfm_hba_vops, ptr @cdns_ufs_m31_16nm_pltfm_hba_vops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_pltfrm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_pltfrm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_pltfm_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_m31_16nm_pltfm_hba_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ufs_set_hclkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_pltfrm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_ufs_pltfrm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_ufs_pltfrm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_ufs_pltfrm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_pltfrm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @cdns_ufs_of_match, ptr noundef %1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call2 = tail call i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_pltfrm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ufshcd_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_pltfrm_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_pltfrm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_init(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_set_variant.exit, !prof !54

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #6, !srcloc !55
  unreachable

ufshcd_set_variant.exit:                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %priv.i, align 8
  %vops.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 28
  %3 = ptrtoint ptr %vops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vops.i, align 8
  %tobool.not.i8 = icmp eq ptr %4, null
  br i1 %tobool.not.i8, label %ufshcd_set_variant.exit.cleanup_crit_edge, label %land.lhs.true.i

ufshcd_set_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %ufshcd_set_variant.exit
  %phy_initialization.i = getelementptr inbounds %struct.ufs_hba_variant_ops, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %phy_initialization.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_initialization.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i9 = tail call i32 %6(ptr noundef nonnull %hba) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %ufshcd_set_variant.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i9, %if.then.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %ufshcd_set_variant.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_hce_enable_notify(ptr noundef %hba, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %clk_list_head.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 69
  %0 = ptrtoint ptr %clk_list_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %clk_list_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %clk_list_head.i
  br i1 %cmp.i.not.i, label %if.end.return_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %clki.041.i = phi ptr [ %clki.0.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %core_clk_rate.040.i = phi i32 [ %core_clk_rate.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %clk.i = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.041.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i37.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i37.i
  br i1 %spec.select.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.ufs_clk_info, ptr %clki.041.i, i32 0, i32 2
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %call4.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end3.i.for.inc.i_crit_edge

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @clk_get_rate(ptr noundef nonnull %3) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %core_clk_rate.1.i = phi i32 [ %core_clk_rate.040.i, %for.body.i.for.inc.i_crit_edge ], [ %core_clk_rate.040.i, %if.end3.i.for.inc.i_crit_edge ], [ %call8.i, %if.then6.i ]
  %6 = ptrtoint ptr %clki.041.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %clki.0.i = load ptr, ptr %clki.041.i, align 4
  %cmp.not.i = icmp eq ptr %clki.0.i, %clk_list_head.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %core_clk_rate.1.i)
  %tobool15.not.i = icmp eq i32 %core_clk_rate.1.i, 0
  br i1 %tobool15.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #9
  br label %return

if.end17.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 %core_clk_rate.1.i, 1000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %div.i) #6
  %10 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba, align 8
  %add.ptr21.i = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %9) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  br label %return

return:                                           ; preds = %if.end17.i, %do.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end17.i ], [ -22, %do.end.i ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_link_startup_notify(ptr noundef %hba, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #6
  %ahit = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 18
  %0 = ptrtoint ptr %ahit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ahit, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_ufs_hibern8_notify(ptr noundef %hba, i32 noundef %cmd, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %cmd)
  %cmp1 = icmp eq i32 %cmd, 23
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.end.thread, !prof !54

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #6, !srcloc !59
  unreachable

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %call.i.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1075904512, ptr noundef %1, i8 noundef zeroext 0) #6
  %arrayidx3.i = getelementptr [12 x i32], ptr %1, i32 0, i32 1
  %call.i58.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1075970048, ptr noundef %arrayidx3.i, i8 noundef zeroext 0) #6
  %arrayidx6.i = getelementptr [12 x i32], ptr %1, i32 0, i32 2
  %call.i59.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076035584, ptr noundef %arrayidx6.i, i8 noundef zeroext 0) #6
  %arrayidx9.i = getelementptr [12 x i32], ptr %1, i32 0, i32 3
  %call.i60.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076101120, ptr noundef %arrayidx9.i, i8 noundef zeroext 0) #6
  %arrayidx12.i = getelementptr [12 x i32], ptr %1, i32 0, i32 4
  %call.i61.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076166656, ptr noundef %arrayidx12.i, i8 noundef zeroext 0) #6
  %arrayidx15.i = getelementptr [12 x i32], ptr %1, i32 0, i32 5
  %call.i62.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076232192, ptr noundef %arrayidx15.i, i8 noundef zeroext 0) #6
  %arrayidx18.i = getelementptr [12 x i32], ptr %1, i32 0, i32 6
  %call.i63.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076297728, ptr noundef %arrayidx18.i, i8 noundef zeroext 0) #6
  %arrayidx21.i = getelementptr [12 x i32], ptr %1, i32 0, i32 7
  %call.i64.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076363264, ptr noundef %arrayidx21.i, i8 noundef zeroext 0) #6
  %arrayidx24.i = getelementptr [12 x i32], ptr %1, i32 0, i32 8
  %call.i65.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076428800, ptr noundef %arrayidx24.i, i8 noundef zeroext 0) #6
  %arrayidx27.i = getelementptr [12 x i32], ptr %1, i32 0, i32 9
  %call.i66.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076494336, ptr noundef %arrayidx27.i, i8 noundef zeroext 0) #6
  %arrayidx30.i = getelementptr [12 x i32], ptr %1, i32 0, i32 10
  %call.i67.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1076559872, ptr noundef %arrayidx30.i, i8 noundef zeroext 0) #6
  %arrayidx33.i = getelementptr [12 x i32], ptr %1, i32 0, i32 11
  %call.i68.i = tail call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 1075838976, ptr noundef %arrayidx33.i, i8 noundef zeroext 0) #6
  br label %if.end6

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp2 = icmp eq i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %cmd)
  %cmp4 = icmp eq i32 %cmd, 24
  %or.cond10 = and i1 %cmp4, %cmp2
  br i1 %or.cond10, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %tobool.not.i.i11 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i11, label %do.body4.i.i12, label %cdns_ufs_set_l4_attr.exit, !prof !54

do.body4.i.i12:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #6, !srcloc !59
  unreachable

cdns_ufs_set_l4_attr.exit:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i.i13 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %2 = ptrtoint ptr %priv.i.i13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i13, align 8
  %call.i.i14 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1075838976, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call.i60.i15 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1075904512, i8 noundef zeroext 0, i32 noundef %5, i8 noundef zeroext 0) #6
  %arrayidx4.i = getelementptr [12 x i32], ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %call.i61.i16 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1075970048, i8 noundef zeroext 0, i32 noundef %7, i8 noundef zeroext 0) #6
  %arrayidx7.i = getelementptr [12 x i32], ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %call.i62.i17 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076035584, i8 noundef zeroext 0, i32 noundef %9, i8 noundef zeroext 0) #6
  %arrayidx10.i = getelementptr [12 x i32], ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %call.i63.i18 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076101120, i8 noundef zeroext 0, i32 noundef %11, i8 noundef zeroext 0) #6
  %arrayidx13.i = getelementptr [12 x i32], ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13.i, align 4
  %call.i64.i19 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076166656, i8 noundef zeroext 0, i32 noundef %13, i8 noundef zeroext 0) #6
  %arrayidx16.i = getelementptr [12 x i32], ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16.i, align 4
  %call.i65.i20 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076232192, i8 noundef zeroext 0, i32 noundef %15, i8 noundef zeroext 0) #6
  %arrayidx19.i = getelementptr [12 x i32], ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19.i, align 4
  %call.i66.i21 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076297728, i8 noundef zeroext 0, i32 noundef %17, i8 noundef zeroext 0) #6
  %arrayidx22.i = getelementptr [12 x i32], ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22.i, align 4
  %call.i67.i22 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076363264, i8 noundef zeroext 0, i32 noundef %19, i8 noundef zeroext 0) #6
  %arrayidx25.i = getelementptr [12 x i32], ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25.i, align 4
  %call.i68.i23 = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076428800, i8 noundef zeroext 0, i32 noundef %21, i8 noundef zeroext 0) #6
  %arrayidx28.i = getelementptr [12 x i32], ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx28.i, align 4
  %call.i69.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076494336, i8 noundef zeroext 0, i32 noundef %23, i8 noundef zeroext 0) #6
  %arrayidx31.i = getelementptr [12 x i32], ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31.i, align 4
  %call.i70.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1076559872, i8 noundef zeroext 0, i32 noundef %25, i8 noundef zeroext 0) #6
  %arrayidx34.i = getelementptr [12 x i32], ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34.i, align 4
  %call.i71.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 1075838976, i8 noundef zeroext 0, i32 noundef %27, i8 noundef zeroext 0) #6
  br label %if.end6

if.end6:                                          ; preds = %cdns_ufs_set_l4_attr.exit, %if.end.if.end6_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ufs_m31_16nm_phy_initialization(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4412
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %3 = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #6, !srcloc !57
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_suspend_prepare(ptr noundef) #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_cdns_pltfrm__322_338_cdns_ufs_pltfrm_driver_init6, !1, !"__initcall__kmod_cdns_pltfrm__322_338_cdns_ufs_pltfrm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 338, i32 1}
!2 = !{ptr @__exitcall_cdns_ufs_pltfrm_driver_exit, !1, !"__exitcall_cdns_ufs_pltfrm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author323, !4, !"__UNIQUE_ID_author323", i1 false, i1 false}
!4 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 340, i32 1}
!5 = !{ptr @__UNIQUE_ID_description324, !6, !"__UNIQUE_ID_description324", i1 false, i1 false}
!6 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 341, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 342, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version327, !11, !"__UNIQUE_ID_version327", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 343, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 332, i32 13}
!18 = !{ptr @cdns_ufs_pltfrm_driver, !19, !"cdns_ufs_pltfrm_driver", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 327, i32 31}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 301, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cdns_ufs_pltfrm_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cdns_ufs_pltfrm_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cdns_ufs_of_match, !29, !"cdns_ufs_of_match", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 268, i32 34}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 252, i32 10}
!32 = !{ptr @cdns_ufs_pltfm_hba_vops, !33, !"cdns_ufs_pltfm_hba_vops", i1 false, i1 false}
!33 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 251, i32 41}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 122, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 127, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cdns_ufs_set_hclkdiv._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cdns_ufs_set_hclkdiv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @cdns_ufs_m31_16nm_pltfm_hba_vops, !42, !"cdns_ufs_m31_16nm_pltfm_hba_vops", i1 false, i1 false}
!42 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 259, i32 41}
!43 = !{ptr @cdns_ufs_dev_pm_ops, !44, !"cdns_ufs_dev_pm_ops", i1 false, i1 false}
!44 = !{!"../drivers/scsi/ufs/cdns-pltfrm.c", i32 320, i32 32}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2155647266, i64 2155647757, i64 2155647303, i64 2155647359, i64 2155647393, i64 2155647417, i64 2155647458, i64 2155647479, i64 2155647507, i64 2155647541}
!56 = !{i64 2155665146}
!57 = !{i64 5038879}
!58 = !{i64 2155665515}
!59 = !{i64 2155649020, i64 2155649511, i64 2155649057, i64 2155649113, i64 2155649147, i64 2155649171, i64 2155649212, i64 2155649233, i64 2155649261, i64 2155649295}
!60 = !{i64 5039297}
!61 = !{i64 2155666291}
!62 = !{i64 2155666663}
